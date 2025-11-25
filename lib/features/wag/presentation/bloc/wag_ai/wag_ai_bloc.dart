import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/wag/domain/usecases/ai_stream_usecases.dart';
import 'package:dummy/features/wag/domain/usecases/send_chat_usecases.dart';
import 'package:dummy/features/wag/domain/usecases/ai_chat_history_usecases.dart';
import 'package:dummy/features/wag/domain/entities/ai_chat_history.dart';
import 'package:dummy/features/wag/domain/usecases/ai_usage_usecases.dart';
import 'package:dummy/features/wag/domain/entities/ai_usage.dart';
import 'package:dummy/service/app_http_service.dart';
import 'package:dummy/api/api.dart' as api;
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

    // Load AI chat history (first page) before starting stream
    final historyRes = await _aiChatHistoryUsecases.call(limit: 15, page: 1);
    await historyRes.fold(
      (error) async {
        // Keep going; history is optional for init
      },
      (history) async {
        emit(state.copyWith(history: history.messages));
      },
    );

    // Load AI usage stats and store in state
    final usageRes = await _aiUsageUsecases.call();
    await usageRes.fold((error) async {}, (usage) async {
      emit(state.copyWith(usage: usage));
    });

    final result = await _aiStreamUsecases.call();
    await result.fold(
      (error) async {
        emit(state.copyWith(initStatus: Status.error));
      },
      (sse) async {
        // Stop on sentinel if provided, and emit for each line.
        final safeStream = sse.takeWhile((line) => line != '[DONE]');
        try {
          await for (final line in safeStream) {
            if (line.isEmpty) continue;
            debugPrint('WagAiBloc SSE line: $line');
            emit(state.copyWith(initStatus: Status.success));
          }
        } catch (e) {
          emit(state.copyWith(initStatus: Status.error));
        }
      },
    );
  }

  FutureOr<void> __chat(_Chat event, Emitter<WagAiState> emit) async {
    if (state.message.value.isEmpty) return;
    emit(state.copyWith(initStatus: Status.loading));
    final res = await _sendChatUsecases.call(
      message: state.message.value,
      images: state.images,
    );
    await res.fold(
      (error) async {
        emit(state.copyWith(initStatus: Status.error));
      },
      (success) async {
        // After sending chat, start streaming responses.
        add(const WagAiEvent.initialization());
      },
    );
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
}
