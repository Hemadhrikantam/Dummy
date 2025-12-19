import 'dart:io';

import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/dailycare/meal_payload.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/dailycare/domain/usecases/add_meal_usecases.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_form_event.dart';
part 'meal_form_state.dart';
part 'meal_form_bloc.freezed.dart';

class MealFormBloc extends Bloc<MealFormEvent, MealFormState> {
  MealFormBloc({
    required AddMealUsecases addMealUsecases,
    required UploadFileUsecases uploadFileUsecases,
  }) : _addMealUsecases = addMealUsecases,
       _uploadFileUsecases = uploadFileUsecases,
       super(MealFormState()) {
    on<_Init>(__init);
    on<_Submit>(__submit);
    on<_Date>(__date);
    on<_MealType>(__mealType);
    on<_Notes>(__notes);
    on<_Media>(__media);
    on<_MealTimeH>(__mealTimeH);
    on<_MealTimeM>(__mealTimeM);
  }
  final AddMealUsecases _addMealUsecases;
  final UploadFileUsecases _uploadFileUsecases;

  Future<void> __init(_Init event, Emitter<MealFormState> emit) async {
    final mealtypes =
        currentContext.read<AuthBloc>().state.enums?.mealTypes ?? [];
    emit(
      state.copyWith(
        mealtypes:
            mealtypes
                .map((e) => DropStringItemModel(id: e.id, value: e.name))
                .toList(),
        submitStatus: Status.init,
        petId: event.petId,
      ),
    );
  }

  Future<void> __submit(_Submit event, Emitter<MealFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));

    // Prepare media payload: upload local file to get final URL and size
    List<MealMediaPayload> mediaList = const [];
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
        MealMediaPayload(
          fileUrl: url,
          fileType: fileType,
          fileSize: fileSize,
          mediaCaption: '',
        ),
      ];
    }

    final result = await _addMealUsecases(
      payload: MealPayload(
        date: DateTime.parse(state.date.value),
        mealTypeId: state.mealType.value?.id ?? '',
        notes: state.notes.value,
        mealTime:
            '${state.mealTimeH.value?.value.padLeft(2, '0')}:${state.mealTimeM.value?.value.padLeft(2, '0')}',
        pet: currentContext.read<DashboardBloc>().state.selectedPet?.id ?? '',
        media: mediaList,
      ),
    );
    result.fold((failure) => emit(state.copyWith(submitStatus: Status.error)), (
      success,
    ) {
      String? extractedId;
      if (success.message.contains(' - ')) {
        final parts = success.message.split(' - ');
        if (parts.length > 1) {
          extractedId = parts.last.trim();
        }
      }
      currentContext.read<PetDairyBloc>().add(
        PetDairyEvent.addedEntityId(extractedId ?? ''),
      );
      emit(state.copyWith(submitStatus: Status.success));
    });
  }

  String _inferFileType(String pathOrUrl) {
    final lower = pathOrUrl.toLowerCase();
    return lower.endsWith('.mp4') ||
            lower.endsWith('.mov') ||
            lower.contains('video')
        ? 'video'
        : 'image';
  }

  void __date(_Date event, Emitter<MealFormState> emit) {
    final date = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(date: date));
    emit(state.copyWith(validation: state.validationX));
  }

  void __mealType(_MealType event, Emitter<MealFormState> emit) {
    emit(state.copyWith(mealType: DropdownStringValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void __notes(_Notes event, Emitter<MealFormState> emit) {
    final notes = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(notes: notes));
    emit(state.copyWith(validation: state.validationX));
  }

  void __media(_Media event, Emitter<MealFormState> emit) {
    final updated = NotEmpty.dirty(value: event.value);
    emit(state.copyWith(media: updated));
    emit(state.copyWith(validation: state.validationX));
  }

  void __mealTimeH(_MealTimeH event, Emitter<MealFormState> emit) {
    emit(state.copyWith(mealTimeH: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void __mealTimeM(_MealTimeM event, Emitter<MealFormState> emit) {
    emit(state.copyWith(mealTimeM: DropdownValue.dirty(event.value)));
    emit(state.copyWith(validation: state.validationX));
  }
}
