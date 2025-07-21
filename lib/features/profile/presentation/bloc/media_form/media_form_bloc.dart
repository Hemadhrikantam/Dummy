import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/pet_dairy/media_payload.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/features/profile/domain/usecases/add_media_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/edit_media_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/event_fields_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/get_media_usecases.dart';
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
    required GetMediaUsecases getMediaUsecases,
    required EventFieldsUsecases eventFieldsUsecases,
  }) : _addMediaUsecases = addMediaUsecases,
       _editMediaUsecases = editMediaUsecases,
       _getMediaUsecases = getMediaUsecases,
       _eventFieldsUsecases = eventFieldsUsecases,
       super(MediaFormState()) {
    on<_Init>(__init);
    on<_Notes>(__notes);
    on<_Url>(__url);
    on<_Event>(__event);
    on<_Submit>(__submit);
  }
  final AddMediaUsecases _addMediaUsecases;
  final EditMediaUsecases _editMediaUsecases;
  final GetMediaUsecases _getMediaUsecases;
  final EventFieldsUsecases _eventFieldsUsecases;
  Future<void> __init(_Init event, Emitter<MediaFormState> emit) async {
    emit(state.copyWith(initStatus: Status.loading, petId: event.petId));
    final events = List<DropItem>.from(
      (await _eventFieldsUsecases()).fold((l) => [], (r) => r),
    );
    emit(
      state.copyWith(
        events: events,
        initStatus: Status.success,
        validation: state.validationX,
      ),
    );
    if (event.id != null) {
      final result = await _getMediaUsecases(id: event.id!);
      result.fold((l) {}, (r) {
        final event = events.firstWhere((e) => e.value == r.event);
        LogUtility.warning(event.toString());
        emit(
          state.copyWith(
            notes: NotEmpty.dirty(value: r.description),
            url: NotEmpty.dirty(value: r.media),
            event: DropdownValue.dirty(event),
          ),
        );
      });
    }
  }

  Future<void> __submit(_Submit event, Emitter<MediaFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));
    final payload = MediaPayload(
      pet_id: state.petId,
      event_id: state.event.value!.id,
      description: state.notes.value,
      media: await prepareMultipart(state.url.value),
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
    emit(state.copyWith(event: DropdownValue.dirty(event.value)));
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
}
