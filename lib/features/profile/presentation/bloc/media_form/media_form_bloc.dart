import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/pet_dairy/media_payload.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/profile/domain/usecases/add_media_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/edit_media_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/event_fields_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/get_media_usecases.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
part 'media_form_event.dart';
part 'media_form_state.dart';
part 'media_form_bloc.freezed.dart';

class MediaFormBloc extends Bloc<MediaFormEvent, MediaFormState> {
  MediaFormBloc({
    required AddMediaUsecases addMediaUsecases,
    required EditMediaUsecases editMediaUsecases,
    required UploadFileUsecases uploadFileUsecases,
  }) : _addMediaUsecases = addMediaUsecases,
       _editMediaUsecases = editMediaUsecases,
       _uploadFileUsecases = uploadFileUsecases,
       super(MediaFormState()) {
    on<_Init>(__init);
    on<_Notes>(__notes);
    on<_Url>(__url);
    on<_Event>(__event);
    on<_Submit>(__submit);
  }
  final AddMediaUsecases _addMediaUsecases;
  final EditMediaUsecases _editMediaUsecases;
  final UploadFileUsecases _uploadFileUsecases;
  Future<void> __init(_Init event, Emitter<MediaFormState> emit) async {
    emit(state.copyWith(initStatus: Status.loading, petId: event.petId));
    final events = List<DropStringItem>.from(
      currentContext
          .read<AuthBloc>()
          .state
          .enums!
          .diaryEventTypes
          .map((e) => DropStringItemModel(id: e.id, value: e.name))
          .toList(),
    );
    emit(
      state.copyWith(
        events: events,
        initStatus: Status.success,
        validation: state.validationX,
      ),
    );
    if (event.id != null) {
      final r =
          currentContext
              .read<PetDairyBloc>()
              .state
              .medias
              .where((m) => m.id == event.id)
              .first;
      final eventV = events.firstWhere((e) => e.value == r.eventTypeName);
      LogUtility.warning(event.toString());
      emit(
        state.copyWith(
          notes: NotEmpty.dirty(value: r.notes ?? ''),
          url: NotEmpty.dirty(value: r.fileUrl),
          event: DropdownStringValue.dirty(eventV),
        ),
      );
    }
  }

  Future<void> __submit(_Submit event, Emitter<MediaFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));
    String url = state.url.value;
    int fileSize = 10;
    LogUtility.warning('TEST1' + url);
    if (url.isNotEmpty && !url.startsWith('http')) {
      LogUtility.warning('TEST1' + url);
      final result = await _uploadFileUsecases(
        type: UploadType.pet_diary_media,
        path: url,
        public: false,
      );
      result.fold((l) {}, (r) {
        url = r.finalUrl;
      });
      try {
        fileSize = await File(state.url.value).length();
        if (fileSize <= 0) fileSize = 1;
      } catch (_) {
        fileSize = 10;
      }
    }
    final payload = MediaPayload(
      petId: state.petId,
      eventTypeId: state.event.value!.id,
      notes: state.notes.value,
      fileType: _inferFileType(url),
      fileSize: fileSize.toString(),
      fileUrl: url.trim().replaceAll('`', ''),
    );
    final result =
        event.id != null
            ? await _editMediaUsecases(payload: payload, id: event.id!)
            : await _addMediaUsecases(payload: payload);
    result.fold(
      (l) {
        emit(state.copyWith(submitStatus: Status.error));
      },
      (r) {
        emit(state.copyWith(submitStatus: Status.success));
      },
    );
  }

  Future<void> __notes(_Notes event, Emitter<MediaFormState> emit) async {
    emit(state.copyWith(notes: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  Future<void> __url(_Url event, Emitter<MediaFormState> emit) async {
    emit(state.copyWith(url: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  Future<void> __event(_Event event, Emitter<MediaFormState> emit) async {
    emit(state.copyWith(event: DropdownStringValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  Future<MultipartFile> prepareMultipart(String path) async {
    if (path.startsWith('http://') || path.startsWith('https://')) {
      // Download file
      final response = await http.get(Uri.parse(path));
      final bytes = response.bodyBytes;

      // Save to temp file
      final tempDir = await getTemporaryDirectory();
      final tempFile = File('${tempDir.path}/${path.split('/').last}');
      await tempFile.writeAsBytes(bytes);

      return MultipartFile.fromFile(
        tempFile.path,
        filename: tempFile.path.split('/').last,
      );
    } else {
      // Local file
      return MultipartFile.fromFile(path, filename: path.split('/').last);
    }
  }

  String _inferFileType(String pathOrUrl) {
    final lower = pathOrUrl.toLowerCase();
    return lower.endsWith('.mp4') ||
            lower.endsWith('.mov') ||
            lower.contains('video')
        ? 'video'
        : 'image';
  }
}
