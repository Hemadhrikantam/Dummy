import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/dailycare/walk_payload.dart';
import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';
import 'package:dummy/features/dailycare/domain/usecases/add_walk_usecases.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'walk_form_event.dart';
part 'walk_form_state.dart';
part 'walk_form_bloc.freezed.dart';

class WalkFormBloc extends Bloc<WalkFormEvent, WalkFormState> {
  WalkFormBloc({
    required AddWalkUsecases addWalkUsecases,
    required UploadFileUsecases uploadFileUsecases,
  }) : _addWalkUsecases = addWalkUsecases,
       _uploadFileUsecases = uploadFileUsecases,
       super(WalkFormState()) {
    on<_Init>(__init);
    on<_Submit>(__submit);
    on<_Date>(__date);
    on<_Duration>(__duration);
    on<_Location>(__location);
    on<_Notes>(__notes);
    on<_Media>(__media);
  }
  final AddWalkUsecases _addWalkUsecases;
  final UploadFileUsecases _uploadFileUsecases;
  Future<void> __init(_Init event, Emitter<WalkFormState> emit) async {
    emit(
      state.copyWith(
        durations: [
          DropItemModel(id: 1, value: '5 mins'),
          DropItemModel(id: 2, value: '10 mins'),
          DropItemModel(id: 3, value: '15 mins'),
          DropItemModel(id: 4, value: '20 mins'),
          DropItemModel(id: 4, value: '25 mins'),
          DropItemModel(id: 4, value: '30 mins'),
          DropItemModel(id: 4, value: '45 mins'),
          DropItemModel(id: 4, value: '60 mins'),
        ],
        submitStatus: Status.init,
        petId: event.petId,
      ),
    );
  }

  Future<void> __submit(_Submit event, Emitter<WalkFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));
    List<WalkMediaPayload> mediaList = const [];
    if (state.media.value.isNotEmpty) {
      var url = state.media.value;
      var fileSize = 1; // must be positive per backend validation
      final fileType = _inferFileType(url);
      if (!url.startsWith('http')) {
        // Fetch uploader from DI to avoid unexpected null field issues

        final uploadResult = await _uploadFileUsecases(
          path: url,
          type: UploadType.daily_care,
          public: false,
        );
        bool ok = true;
        uploadResult.fold(
          (failure) {
            ok = false;
            emit(state.copyWith(submitStatus: Status.error));
          },
          (success) {
            url = success.finalUrl;
          },
        );
        if (!ok) return;
        try {
          fileSize = await File(state.media.value).length();
          if (fileSize <= 0) fileSize = 1;
        } catch (_) {
          fileSize = 1;
        }
      }
      mediaList = [
        WalkMediaPayload(fileUrl: url, fileType: fileType, fileSize: fileSize),
      ];
    }

    final result = await _addWalkUsecases(
      payload: WalkPayload(
        petId: state.petId,
        walkDate: DateTime.parse(state.date.value),
        durationMinutes: int.parse(
          state.duration.value!.value.replaceAll(' mins', ''),
        ),
        location: state.location.value,
        notes: state.notes.value,
        media: mediaList,
      ),
    );
    result.fold(
      (failure) => emit(state.copyWith(submitStatus: Status.error)),
      (success) => emit(state.copyWith(submitStatus: Status.success)),
    );
  }

  void __date(_Date event, Emitter<WalkFormState> emit) {
    final value = NotEmpty.dirty(value: event.value);

    emit(
      state.copyWith(
        date: value,
        validation: Formz.validate([
          value,
          state.location,
          state.notes,
          state.media,
          state.duration,
        ]),
      ),
    );
  }

  void __location(_Location event, Emitter<WalkFormState> emit) {
    final value = NotEmpty.dirty(value: event.value);

    emit(
      state.copyWith(
        location: value,
        validation: Formz.validate([
          value,
          state.date,
          state.notes,
          state.media,
          state.duration,
        ]),
      ),
    );
  }

  void __notes(_Notes event, Emitter<WalkFormState> emit) {
    final value = NotEmpty.dirty(value: event.value);

    emit(
      state.copyWith(
        notes: value,
        validation: Formz.validate([
          value,
          state.location,
          state.date,
          state.media,
          state.duration,
        ]),
      ),
    );
  }

  void __media(_Media event, Emitter<WalkFormState> emit) {
    final value = NotEmpty.dirty(value: event.value);

    emit(
      state.copyWith(
        media: value,
        validation: Formz.validate([
          value,
          state.location,
          state.notes,
          state.date,
          state.duration,
        ]),
      ),
    );
  }

  void __duration(_Duration event, Emitter<WalkFormState> emit) {
    final value = DropdownValue.dirty(event.value);

    emit(
      state.copyWith(
        duration: value,
        validation: Formz.validate([
          value,
          state.location,
          state.notes,
          state.date,
          state.date,
        ]),
      ),
    );
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
