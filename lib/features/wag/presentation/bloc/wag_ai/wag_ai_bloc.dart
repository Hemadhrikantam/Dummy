import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/features/wag/domain/usecases/ai_stream_usecases.dart';
import 'package:dummy/features/wag/domain/usecases/send_chat_usecases.dart';
import 'package:dummy/features/wag/domain/usecases/ai_chat_history_usecases.dart';
import 'package:dummy/features/wag/domain/entities/ai_chat_history.dart';
import 'package:dummy/features/wag/domain/usecases/ai_usage_usecases.dart';
import 'package:dummy/features/wag/domain/entities/ai_usage.dart';
import 'package:dummy/features/wag/presentation/widgets/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'wag_ai_event.dart';
part 'wag_ai_state.dart';
part 'wag_ai_bloc.freezed.dart';

class WagAiBloc extends Bloc<WagAiEvent, WagAiState> {
  WagAiBloc({
    required AiStreamUsecases aiStreamUsecases,
    required SendChatUsecases sendChatUsecases,
    required AiChatHistoryUsecases aiChatHistoryUsecases,
    required AiUsageUsecases aiUsageUsecases,
  }) : _aiStreamUsecases = aiStreamUsecases,
       _sendChatUsecases = sendChatUsecases,
       _aiChatHistoryUsecases = aiChatHistoryUsecases,
       _aiUsageUsecases = aiUsageUsecases,
       super(WagAiState()) {
    on<_Initialization>(__initialization);
    on<_Chat>(__chat);
    on<_Message>(__message);
    on<_LoadHistory>(__loadHistory);
    on<_Images>(__images);
  }
  final AiStreamUsecases _aiStreamUsecases;
  final SendChatUsecases _sendChatUsecases;
  final AiChatHistoryUsecases _aiChatHistoryUsecases;
  final AiUsageUsecases _aiUsageUsecases;
  FutureOr<void> __initialization(
    _Initialization event,
    Emitter<WagAiState> emit,
  ) async {
    emit(state.copyWith(initStatus: Status.loading));
    final historyRes = await _aiChatHistoryUsecases.call(limit: 15, page: 1);
    await historyRes.fold((error) async {}, (history) async {
      emit(
        state.copyWith(
          history: history.messages,
          historydetails: history,
          historyPage: history.pagination.page,
          historyLimit: history.pagination.limit,
          hasMoreHistory: history.pagination.hasMore,
        ),
      );
    });

    // Load AI usage stats and store in state
    final usageRes = await _aiUsageUsecases.call();
    await usageRes.fold((error) async {}, (usage) async {
      emit(state.copyWith(usage: usage));
    });

    final result = await _aiStreamUsecases();
    await result.fold(
      (error) async {
        LogUtility.error('error ---> >> > ${error.message}');
        if (emit.isDone) return;
        emit(state.copyWith(initStatus: Status.error));
      },
      (sse) async {
        emit(state.copyWith(stream: sse));
        if (!emit.isDone) {
          emit(state.copyWith(isSSECOnnected: true));
        }
        final safeStream = sse.takeWhile((line) => line != '[DONE]');
        try {
          await for (final line in safeStream) {
            if (emit.isDone) break;
            if (line.isEmpty) continue;
            final trimmed = line.trim();
            // Ignore status events
            if (trimmed.startsWith('event:')) continue;
            if (trimmed == 'connected') {
              if (emit.isDone) break;
              emit(state.copyWith(initStatus: Status.success));
              continue;
            }

            // Try to parse JSON payloads from `data:` lines
            Map<String, dynamic>? json;
            try {
              if (trimmed.startsWith('{')) {
                json = Map<String, dynamic>.from(jsonDecode(trimmed));
              }
            } catch (_) {
              json = null;
            }

            if (json != null) {
              final type = (json['type'] ?? '').toString();
              if (type == 'content') {
                final content = (json['content'] ?? '').toString();
                if (content.isNotEmpty) {
                  LogUtility.info('---> >> > $content');
                  if (emit.isDone) break;
                  emit(
                    state.copyWith(
                      initStatus: Status.success,
                      streamResponse: state.streamResponse + content,
                    ),
                  );
                }
                continue;
              }
              if (type == 'done') {
                LogUtility.info('---> >> > $trimmed');
                emit(
                  state.copyWith(
                    streamResponse: '',
                    responses: [
                      ...state.responses,
                      Message(
                        isUser: false,
                        message: state.streamResponse,
                        date: DateTime.now(),
                      ),
                    ],
                  ),
                );
                // break;
              }
              // Ignore other types like function_call for now
              continue;
            }

            // Non-JSON data lines (e.g., plain content)
            if (emit.isDone) {
              break;
            }
            emit(
              state.copyWith(
                initStatus: Status.success,
                message: NotEmpty.dirty(value: trimmed),
              ),
            );
          }
        } catch (e) {
          if (!emit.isDone) {
            emit(state.copyWith(initStatus: Status.error));
          }
        }
      },
    );
  }

  FutureOr<void> __chat(_Chat event, Emitter<WagAiState> emit) async {
    if (state.message.value.isEmpty) return;
    emit(
      state.copyWith(
        sendChatStatus: Status.loading,
        responses: [
          ...state.responses,
          Message(
            isUser: true,
            message: state.message.value,
            images: state.images,
            date: DateTime.now(),
          ),
        ],
      ),
    );
    final files =
        state.images
            .map((e) async => base64Encode(await File(e).readAsBytes()))
            .toList();
    final res = await _sendChatUsecases.call(
      message: state.message.value,
      images: await Future.wait(files),
    );
    emit(state.copyWith(images: []));
    await res.fold(
      (error) async {
        emit(state.copyWith(sendChatStatus: Status.error));
        emit(state.copyWith(sendChatStatus: Status.init));
      },
      (success) async {
        emit(
          state.copyWith(
            sendChatStatus: Status.success,
            images: [],
            message: NotEmpty.dirty(value: ''),
          ),
        );
        emit(state.copyWith(sendChatStatus: Status.init));
      },
    );
    final usageRes = await _aiUsageUsecases.call();
    await usageRes.fold((error) async {}, (usage) async {
      emit(state.copyWith(usage: usage));
    });
  }

  FutureOr<void> __message(_Message event, Emitter<WagAiState> emit) async {
    emit(state.copyWith(message: NotEmpty.dirty(value: event.value)));
  }

  //   Future<List<DropStringItem>> __aiHistory() async {
  //   final enums = currentContext.read<AuthBloc>().state.enums;
  //   if (enums == null) {
  //     return [];
  //   } else {
  //     final dogBreeds = enums.breeds.where((b) => b.type == 'cat').toList();
  //     return dogBreeds
  //         .map((b) => DropStringItemModel(id: b.id, value: b.name))
  //         .toList();
  //   }
  // }

  FutureOr<void> __images(_Images event, Emitter<WagAiState> emit) async {
    emit(state.copyWith(images: event.images));
  }

  FutureOr<void> __loadHistory(
    _LoadHistory event,
    Emitter<WagAiState> emit,
  ) async {
    if (state.historyStatus == Status.loading || !state.hasMoreHistory) return;
    emit(state.copyWith(historyStatus: Status.loading));
    final nextPage = state.historyPage + 1;
    final res = await _aiChatHistoryUsecases.call(
      limit: state.historyLimit,
      page: nextPage,
    );
    await res.fold(
      (error) async {
        emit(state.copyWith(historyStatus: Status.error));
      },
      (history) async {
        emit(
          state.copyWith(
            historyStatus: Status.success,
            history: [...history.messages, ...state.history],
            historyPage: history.pagination.page,
            hasMoreHistory: history.pagination.hasMore,
            historyLimit: history.pagination.limit,
          ),
        );
      },
    );
  }
}
