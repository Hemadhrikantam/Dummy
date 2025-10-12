import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dummy/api/storage_key.dart';
import 'package:dummy/core/enum/breed.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/register_account_payload.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/signup/domain/usecases/create_pet_usecases.dart';
import 'package:dummy/features/signup/domain/usecases/pet_image_usecases.dart';
import 'package:dummy/service/local_storage_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enum/status.dart';
import '../../../../../core/models/formz/dropdown_model.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({
    required CreatePetUsecases createPetUsecases,
    required PetImageUsecases petImageUsecases,
  }) : __createPetUsecases = createPetUsecases,
       __petImageUsecases = petImageUsecases,
       super(RegisterState()) {
    on<_Initialization>(__initialization);
    on<_PetName>(__petName);
    on<_PetType>(__petType);
    on<_PetImage>(__petImage);
    on<_Breed>(__breed);
    on<_DOB>(__dob);
    on<_AddTag>(__addTag);
    on<_RemoveTag>(__removeTag);
    on<_WeightUnit>(__weightUnit);
    on<_Weight>(__weight);
    on<_CreatePet>(__createPet);
    on<_PetGender>(__petGender);
    on<_SetLocation>(__setLocation);
  }

  final CreatePetUsecases __createPetUsecases;
  final PetImageUsecases __petImageUsecases;
  Future<void> __initialization(
    _Initialization event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(initStatus: Status.loading));
    final catBreeds = await __catBreeds();
    final dogBreeds = await __dogBreeds();
    final personalityTags = await __personalityTags();

    emit(
      state.copyWith(
        initStatus: Status.success,
        catBreeds: catBreeds,
        dogBreeds: dogBreeds,
        personalityTags: personalityTags,
      ),
    );
  }

  Future<void> __createPet(
    _CreatePet event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(submitStatus: Status.loading));
    var imageId = 0;
    if (state.petImage.isValid) {
      final result = await __petImageUsecases(path: state.petImage.value);
      result.fold(
        (error) {
          emit(state.copyWith(submitStatus: Status.error));
          return;
        },
        (success) {
          imageId = success.id;
        },
      );
    }
    final payload = RegisterAccountPayload(
      petName: state.petName.value,
      petType: state.petType.name.toLowerCase(),
      dob: AppUtil.formatDate(DateTime.parse(state.dob.value)),
      breedId: state.breed.value!.id,
      weightValue: int.parse(state.weight.value),
      gender: (state.gender.value?.value ?? '').toLowerCase(),
      imageFile: imageId.toString(),
      personalityTags:
          state.selectedPersonalityTags.map((e) => e.value!.id).toList(),
      // latitude: state.latitude ?? 0,
      // longitude: state.longitude ?? 0,
      mobileNumber: currentContext.read<AuthBloc>().state.phone.value ?? '',
      weightUnit: state.weightUnit.value.toLowerCase(),
      deviceId: '',
      pushToken: '',
      platform: '',
    );
    final result = await __createPetUsecases(payload: payload);

    result.fold((error) => emit(state.copyWith(submitStatus: Status.error)), (
      success,
    ) async {
      var usercred = SecureStorageItem(
        key: StorageKey.userCred,
        value: json.encode({
          'phone': currentContext.read<AuthBloc>().state.phone.value ?? '',
          'account_type': currentContext.read<AuthBloc>().state.yourself.name,
        }),
      );
      currentContext.read<AuthBloc>().add(AuthEvent.updateFcm());
      Injection.appStorage.write(usercred);
      emit(state.copyWith(submitStatus: Status.success));
    });
  }

  void __petName(_PetName event, Emitter<RegisterState> emit) {
    final petName = NotEmpty.dirty(value: event.name);
    print(petName);
    emit(state.copyWith(petName: petName));
  }

  void __petType(_PetType event, Emitter<RegisterState> emit) {
    emit(state.copyWith(petType: event.value));
  }

  void __petImage(_PetImage event, Emitter<RegisterState> emit) {
    emit(state.copyWith(petImage: NotEmpty.dirty(value: event.value)));
  }

  void __dob(_DOB event, Emitter<RegisterState> emit) {
    final dob = NotEmpty.dirty(value: event.dob);
    emit(state.copyWith(dob: dob));
  }

  void __breed(_Breed event, emit) {
    final breed = DropdownStringValue.dirty(event.breed);
    emit(state.copyWith(breed: breed));
  }

  void __addTag(_AddTag event, Emitter<RegisterState> emit) {
    List<DropdownStringValue> updatedTags = [];
    for (var e in event.value) {
      updatedTags.add(DropdownStringValue.dirty(e));
    }

    emit(state.copyWith(selectedPersonalityTags: updatedTags));
  }

  void __removeTag(_RemoveTag event, Emitter<RegisterState> emit) {
    final updatedTags = List<DropdownStringValue>.from(
      state.selectedPersonalityTags,
    )..removeAt(event.index);

    emit(state.copyWith(selectedPersonalityTags: updatedTags));
  }

  void __weightUnit(_WeightUnit event, emit) {
    final unit = NotEmpty.dirty(value: event.weightUnit);
    emit(state.copyWith(weightUnit: unit));
  }

  void __weight(_Weight event, emit) {
    final weight = NotEmpty.dirty(value: event.weight);
    emit(state.copyWith(weight: weight));
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

  void __petGender(_PetGender event, Emitter<RegisterState> emit) {
    final gender = DropdownValue.dirty(event.petGender);
    emit(state.copyWith(gender: gender));
  }

  void __setLocation(_SetLocation event, Emitter<RegisterState> emit) {
    emit(state.copyWith(latitude: event.latitude, longitude: event.longitude));
  }
}
