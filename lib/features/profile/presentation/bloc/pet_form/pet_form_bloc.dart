import 'package:dummy/core/enum/breed.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/pet_payload.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/profile/domain/usecases/edit_pet_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/bottom_models.dart';
import '../../../../../core/utils/toast_message.dart';

part 'pet_form_event.dart';
part 'pet_form_state.dart';
part 'pet_form_bloc.freezed.dart';

class PetFormBloc extends Bloc<PetFormEvent, PetFormState> {
  PetFormBloc({
    required EditPetUsecases editPetUsecases,
    required UploadFileUsecases uploadFileUsecases,
  }) : __editPetUsecases = editPetUsecases,
       __uploadFileUsecases = uploadFileUsecases,
       super(PetFormState()) {
    on<_Init>(__initialization);
    on<_PetName>(__petName);
    on<_PetType>(__petType);
    on<_PetImage>(__petImage);
    on<_Breed>(__breed);
    on<_DOB>(__dob);
    on<_AddTag>(__addTag);
    on<_RemoveTag>(__removeTag);
    on<_WeightUnit>(__weightUnit);
    on<_Weight>(__weight);
    on<_Submit>(__submit);
    on<_PetGender>(__petGender);
  }

  final EditPetUsecases __editPetUsecases;
  final UploadFileUsecases __uploadFileUsecases;

  Future<void> __initialization(_Init event, Emitter<PetFormState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));

    final catBreeds = await __catBreeds();
    final dogBreeds = await __dogBreeds();
    final personalityTags = await __personalityTags();

    if (event.id != null) {
      final success = currentContext
          .read<DashboardBloc>()
          .state
          .dashboardPetDetails
          .firstWhere((pet) => pet.id == event.id);

      final breeds =
          success.type.toLowerCase() == "cat" ? catBreeds : dogBreeds;
      print(success.type.toLowerCase());
      print(breeds);
      print(success.breedName);

      emit(
        state.copyWith(
          catbreeds: catBreeds,
          dogbreeds: dogBreeds,
          personalityTags: personalityTags,
          petType:
              success.type.toLowerCase() == "cat" ? PetType.Cat : PetType.Dog,
          dob: NotEmpty.dirty(value: success.dob),
          breed: DropdownStringValue.dirty(
            breeds.firstWhere((b) => b.value == success.breedName),
          ),
          petImage: NotEmpty.dirty(
            value:
                (success.imageUrl ?? '').contains('http')
                    ? success.imageUrl!
                    : '',
          ),

          selectedPersonalityTags:
              success.personalityTags
                  .map(
                    (e) => DropdownStringValue.dirty(
                      personalityTags.firstWhere((p) => p.value == e),
                    ),
                  )
                  .toList(),
          gender: DropdownValue.dirty(
            DropItemModel(
              id: success.gender == 'Male' ? 1 : 2,
              value: success.gender,
            ),
          ),
          weight: NotEmpty.dirty(
            value:
                double.tryParse(
                  success.weightValue.toString(),
                )?.toInt().toString() ??
                '',
          ),
          weightUnit: NotEmpty.dirty(
            value: success.weightUnit == 'kg' ? 'Kg' : 'Lb',
          ),
          petName: NotEmpty.dirty(value: success.name),
        ),
      );
    } else {
      emit(
        state.copyWith(
          catbreeds: catBreeds,
          dogbreeds: dogBreeds,
          personalityTags: personalityTags,
        ),
      );
    }

    emit(
      state.copyWith(validation: state.validationX, initStatus: Status.success),
    );
  }

  Future<void> __submit(_Submit event, Emitter<PetFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));
    var url = state.petImage.value;
    if (state.petImage.isValid && !state.petImage.value.contains('http')) {
      final result = await __uploadFileUsecases(
        path: state.petImage.value,
        type: UploadType.profile_pics,
      );
      result.fold(
        (error) {
          emit(state.copyWith(submitStatus: Status.error));
          return;
        },
        (success) {
          url = success.finalUrl;
        },
      );
    }
    final payload = PetPayload(
      pet_id: event.id,
      name: state.petName.value,
      type: state.petType.name,
      dob: DateTime.parse(state.dob.value),
      breedId: state.breed.value!.id,
      weight: PetWeightPayload(
        value: state.weight.value,
        unit: state.weightUnit.value.toLowerCase(),
      ),
      gender: (state.gender.value?.value ?? '').toLowerCase(),
      image_url: url,
      personalityTags:
          state.selectedPersonalityTags.map((e) => e.value!.id).toList(),
      ownership_type: OwnershipType.owned.name,
    );
    LogUtility.info('Payload: $payload');
    final result = await __editPetUsecases(
      payload: payload,
      edit: event.id != null,
    );

    result.fold(
      (error) {
        emit(state.copyWith(submitStatus: Status.error));
        if (error.message.contains('Pet limit reached')) {
          BottomModels.needPremiumBottomSheet(currentContext);
        }
        AppAlert.showToast(message: error.message);
      },
      (success) async {
        AppAlert.showToast(message: success.message);
        emit(state.copyWith(submitStatus: Status.success));
      },
    );
    emit(state.copyWith(submitStatus: Status.init));
  }

  void __petName(_PetName event, Emitter<PetFormState> emit) {
    final petName = NotEmpty.dirty(value: event.name);
    emit(state.copyWith(petName: petName));
    emit(state.copyWith(validation: state.validationX));
  }

  void __petType(_PetType event, Emitter<PetFormState> emit) {
    emit(
      state.copyWith(petType: event.value, breed: DropdownStringValue.pure()),
    );
    emit(state.copyWith(validation: state.validationX));
  }

  void __petImage(_PetImage event, Emitter<PetFormState> emit) {
    emit(state.copyWith(petImage: NotEmpty.dirty(value: event.value)));
    // emit(state.copyWith(validation: state.validationX));
  }

  void __dob(_DOB event, Emitter<PetFormState> emit) {
    final dob = NotEmpty.dirty(value: event.dob);
    emit(state.copyWith(dob: dob));
    emit(state.copyWith(validation: state.validationX));
  }

  void __breed(_Breed event, emit) {
    final breed = DropdownStringValue.dirty(event.breed);
    emit(state.copyWith(breed: breed));
    emit(state.copyWith(validation: state.validationX));
  }

  void __addTag(_AddTag event, Emitter<PetFormState> emit) {
    List<DropdownStringValue> updatedTags = [];
    for (var e in event.value) {
      updatedTags.add(DropdownStringValue.dirty(e));
    }
    emit(state.copyWith(selectedPersonalityTags: updatedTags));
    emit(state.copyWith(validation: state.validationX));
  }

  void __removeTag(_RemoveTag event, Emitter<PetFormState> emit) {
    final updatedTags = List<DropdownStringValue>.from(
      state.selectedPersonalityTags,
    )..removeAt(event.index);

    emit(state.copyWith(selectedPersonalityTags: updatedTags));
    emit(state.copyWith(validation: state.validationX));
  }

  void __weightUnit(_WeightUnit event, emit) {
    final unit = NotEmpty.dirty(value: event.weightUnit);
    emit(state.copyWith(weightUnit: unit));
    emit(state.copyWith(validation: state.validationX));
  }

  void __weight(_Weight event, emit) {
    final weight = NotEmpty.dirty(value: event.weight);
    emit(state.copyWith(weight: weight));
    emit(state.copyWith(validation: state.validationX));
  }

  void __petGender(_PetGender event, Emitter<PetFormState> emit) {
    final gender = DropdownValue.dirty(event.petGender);
    emit(state.copyWith(gender: gender));
    emit(state.copyWith(validation: state.validationX));
  }

  Future<List<DropStringItem>> __catBreeds() async {
    final enums = currentContext.read<AuthBloc>().state.enums;
    if (enums == null) {
      return [];
    } else {
      final dogBreeds = enums.breeds.where((b) => b.type == 'cat').toList();
      return dogBreeds
          .map((b) => DropStringItemModel(id: b.id, value: b.name))
          .toList();
    }
  }

  Future<List<DropStringItem>> __dogBreeds() async {
    final enums = currentContext.read<AuthBloc>().state.enums;
    if (enums == null) {
      return [];
    } else {
      final dogBreeds = enums.breeds.where((b) => b.type == 'dog').toList();
      return dogBreeds
          .map((b) => DropStringItemModel(id: b.id, value: b.name))
          .toList();
    }
  }

  Future<List<DropStringItem>> __personalityTags() async {
    final enums = currentContext.read<AuthBloc>().state.enums;
    if (enums == null) {
      return [];
    } else {
      return enums.personalityTags
          .map((b) => DropStringItemModel(id: b.id, value: b.name))
          .toList();
    }
  }
}
