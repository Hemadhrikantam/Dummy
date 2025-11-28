import 'dart:io';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/dailycare/grooming_payload.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/dailycare/domain/usecases/add_grooming_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grooming_form_event.dart';
part 'grooming_form_state.dart';
part 'grooming_form_bloc.freezed.dart';

class GroomingFormBloc extends Bloc<GroomingFormEvent, GroomingFormState> {
  GroomingFormBloc({
    required AddGroomingUsecases addGroomingUsecases,
    required UploadFileUsecases uploadFileUsecases,
  }) : _addGroomingUsecase = addGroomingUsecases,
       _uploadFileUsecases = uploadFileUsecases,
       super(const GroomingFormState()) {
    on<_Init>(_onInit);
    on<_Date>(_onDate);
    on<_GroomingType>(_onGroomingType);
    on<_Notes>(_onNotes);
    on<_Media>(_onMedia);
    on<_Submit>(_onSubmit);
  }

  final AddGroomingUsecases _addGroomingUsecase;
  final UploadFileUsecases _uploadFileUsecases;

  void _onInit(_Init event, Emitter<GroomingFormState> emit) {
    final groomingTypes =
        currentContext.read<AuthBloc>().state.enums!.groomingTypes;
    emit(
      state.copyWith(
        petId: event.petId,
        groomingTypes:
            groomingTypes
                .map((e) => DropStringItemModel(id: e.id, value: e.name))
                .toList(),
      ),
    );
  }

  void _onDate(_Date event, Emitter<GroomingFormState> emit) {
    emit(state.copyWith(date: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onGroomingType(_GroomingType event, Emitter<GroomingFormState> emit) {
    emit(state.copyWith(groomingType: DropdownStringValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onNotes(_Notes event, Emitter<GroomingFormState> emit) {
    emit(state.copyWith(notes: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onMedia(_Media event, Emitter<GroomingFormState> emit) {
    emit(state.copyWith(media: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  Future<void> _onSubmit(_Submit event, Emitter<GroomingFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));

    // Prepare media payload: upload local file to get final URL and size
    List<GroomingMediaPayload> mediaList = const [];
    if (state.media.value.isNotEmpty) {
      var url = state.media.value;
      var fileSize = 1; // must be positive per backend validation
      final fileType = _inferFileType(url);
      if (!url.startsWith('http')) {
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
        GroomingMediaPayload(
          fileUrl: url,
          fileType: fileType,
          fileSize: fileSize.toString(),
        ),
      ];
    }
    final result = await _addGroomingUsecase(
      payload: GroomingPayload(
        petId: state.petId,
        groomingDate: state.date.value,
        groomingTypeId: state.groomingType.value?.id ?? '',
        notes: state.notes.value,
        mediaList: mediaList,
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(submitStatus: Status.error)),
      (success) => emit(state.copyWith(submitStatus: Status.success)),
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
