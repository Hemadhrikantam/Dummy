import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/breed.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/register_account_payload.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/features/signup/domain/usecases/create_pet_usecases.dart';
import 'package:dummy/features/signup/domain/usecases/pet_image_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enum/status.dart';
import '../../../../../core/models/formz/dropdown_model.dart';
import '../../../domain/usecases/cat_breed_usecases.dart';
import '../../../domain/usecases/dog_breed_usecases.dart';
import '../../../domain/usecases/personality_tag_usecases.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({
    required CatBreedUsecases catBreedUsecases,
    required DogBreedUsecases dogBreedUsecases,
    required PersonalityTagUsecases personalityTagUsecases,
    required CreatePetUsecases createPetUsecases,
    required PetImageUsecases petImageUsecases,
  }) : __catBreedUsecases = catBreedUsecases,
       __dogBreedUsecases = dogBreedUsecases,
       __personalityTagUsecases = personalityTagUsecases,
       __createPetUsecases = createPetUsecases,
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
  }

  final CatBreedUsecases __catBreedUsecases;
  final DogBreedUsecases __dogBreedUsecases;
  final PersonalityTagUsecases __personalityTagUsecases;
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
      petType: state.petType.name,
      dob: AppUtil.formatDate(DateTime.parse(state.dob.value)) ?? "",
      breed: state.breed.value!.id,
      petWeight: int.parse(state.weight.value),
      petImage: imageId,
      personalityTag:
          state.selectedPersonalityTags.map((e) => e.value!.id).toList(),
    );
    final result = await __createPetUsecases(payload: payload);

    result.fold((error) => emit(state.copyWith(submitStatus: Status.error)), (
      success,
    ) async {
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
    final breed = DropdownValue.dirty(event.breed);
    emit(state.copyWith(breed: breed));
  }

  void __addTag(_AddTag event, Emitter<RegisterState> emit) {
    List<DropdownValue> updatedTags = [];
    for (var e in event.value) {
      updatedTags.add(DropdownValue.dirty(e));
    }

    emit(state.copyWith(selectedPersonalityTags: updatedTags));
  }

  void __removeTag(_RemoveTag event, Emitter<RegisterState> emit) {
    final updatedTags = List<DropdownValue>.from(state.selectedPersonalityTags)
      ..removeAt(event.index);

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

  Future<List<DropItem>> __catBreeds() async {
    final result = await __catBreedUsecases();
    return result.fold((error) => [], (success) => success);
  }

  Future<List<DropItem>> __dogBreeds() async {
    final result = await __dogBreedUsecases();
    return result.fold((error) => [], (success) => success);
  }

  Future<List<DropItem>> __personalityTags() async {
    final result = await __personalityTagUsecases();
    return result.fold((error) => [], (success) => success);
  }
}
