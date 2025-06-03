import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/breed.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
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
  }) : __catBreedUsecases = catBreedUsecases,
       __dogBreedUsecases = dogBreedUsecases,
       __personalityTagUsecases = personalityTagUsecases,
       super(RegisterState()) {
    on<_Initialization>(__initialization);
    on<_PetName>(__petName);
    on<_PetType>(__petType);
    on<_Breed>(__breed);
    on<_DOB>(__dob);
    on<_AddTag>(__addTag);
    on<_RemoveTag>(__removeTag);
    on<_WeightUnit>(__weightUnit);
  }

  final CatBreedUsecases __catBreedUsecases;
  final DogBreedUsecases __dogBreedUsecases;
  final PersonalityTagUsecases __personalityTagUsecases;

  Future<void> __initialization(
    _Initialization event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(initStatus: Status.loading));
    print('hii');
    final catBreeds = await __catBreeds();
    final dogBreeds = await __dogBreeds();
    final personalityTags = await __personalityTags();
    print('hiiiiii');

    emit(
      state.copyWith(
        initStatus: Status.success,
        catBreeds: catBreeds,
        dogBreeds: dogBreeds,
        personalityTags: personalityTags,
      ),
    );
  }

  void __petName(_PetName event, Emitter<RegisterState> emit) {
    final petName = NotEmpty.dirty(value: event.name);
    emit(state.copyWith(petName: petName));
  }

  void __petType(_PetType event, Emitter<RegisterState> emit) {
    emit(state.copyWith(petType: event.value));
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
    final updatedTags = List<int>.from(state.selectedPersonalityTags)
      ..add(event.value);

    emit(state.copyWith(selectedPersonalityTags: updatedTags));
  }

  void __removeTag(_RemoveTag event, Emitter<RegisterState> emit) {
    final updatedTags = List<int>.from(state.selectedPersonalityTags)
      ..removeAt(event.index);

    emit(state.copyWith(selectedPersonalityTags: updatedTags));
  }

  void __weightUnit(_WeightUnit event, emit) {
    final unit = NotEmpty.dirty(value: event.weightUnit);
    emit(state.copyWith(weightUnit: unit));
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
