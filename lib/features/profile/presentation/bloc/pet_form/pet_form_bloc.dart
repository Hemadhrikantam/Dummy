import 'package:dummy/core/enum/breed.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/register_account_payload.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:dummy/features/profile/domain/usecases/edit_pet_usecases.dart';
import 'package:dummy/features/signup/domain/usecases/cat_breed_usecases.dart';
import 'package:dummy/features/signup/domain/usecases/create_pet_usecases.dart';
import 'package:dummy/features/signup/domain/usecases/dog_breed_usecases.dart';
import 'package:dummy/features/signup/domain/usecases/personality_tag_usecases.dart';
import 'package:dummy/features/signup/domain/usecases/pet_image_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_form_event.dart';
part 'pet_form_state.dart';
part 'pet_form_bloc.freezed.dart';

class PetFormBloc extends Bloc<PetFormEvent, PetFormState> {
  PetFormBloc({
    required CatBreedUsecases catBreedUsecases,
    required DogBreedUsecases dogBreedUsecases,
    required PersonalityTagUsecases personalityTagUsecases,
    required CreatePetUsecases createPetUsecases,
    required PetImageUsecases petImageUsecases,
    required EditPetUsecases editPetUsecases,
  }) : __catBreedUsecases = catBreedUsecases,
       __dogBreedUsecases = dogBreedUsecases,
       __personalityTagUsecases = personalityTagUsecases,
       __createPetUsecases = createPetUsecases,
       __petImageUsecases = petImageUsecases,
       __editPetUsecases = editPetUsecases,
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

  final CatBreedUsecases __catBreedUsecases;
  final EditPetUsecases __editPetUsecases;
  final DogBreedUsecases __dogBreedUsecases;
  final PersonalityTagUsecases __personalityTagUsecases;
  final CreatePetUsecases __createPetUsecases;
  final PetImageUsecases __petImageUsecases;

  Future<void> __initialization(_Init event, Emitter<PetFormState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));

    final catBreeds = await __catBreeds();
    final dogBreeds = await __dogBreeds();
    final personalityTags = await __personalityTags();

    if (event.id != null) {
      // final success = currentContext
      //     .read<DashboardBloc>()
      //     .state
      //     .dashboardPetDetails
      //     .firstWhere((pet) => pet.id == event.id);
      // print(success);

      // final breeds =
      //     success.petType.toLowerCase() == "cat" ? catBreeds : dogBreeds;

      // emit(
      //   state.copyWith(
      //     initStatus: Status.success,
      //     catbreeds: catBreeds,
      //     dogbreeds: dogBreeds,
      //     personalityTags: personalityTags,
      //     petType:
      //         success.petType.toLowerCase() == "cat"
      //             ? PetType.Cat
      //             : PetType.Dog,
      //     dob: NotEmpty.dirty(value: success.dob),
      //     breed: DropdownStringValue.dirty(
      //       breeds.firstWhere((b) => b.value == success.breed.name),
      //     ),
      //     petImage: NotEmpty.dirty(value: success.petImage.petImage),
      //     petImageId: success.petImage.id,
      //     selectedPersonalityTags:
      //         success.personalityTag
      //             .map(
      //               (e) => DropdownStringValue.dirty(
      //                 DropStringItemModel(id: e.id, value: e.name),
      //               ),
      //             )
      //             .toList(),
      //     gender: DropdownValue.dirty(
      //       DropItemModel(
      //         id: success.gender == 'Male' ? 1 : 2,
      //         value: success.gender,
      //       ),
      //     ),
      //     weight: NotEmpty.dirty(value: success.petWeight.toString()),
      //     petName: NotEmpty.dirty(value: success.petName),
      //   ),
      // );
    } else {
      // emit(
      //   state.copyWith(
      //     initStatus: Status.success,
      //     catbreeds: catBreeds,
      //     dogbreeds: dogBreeds,
      //     personalityTags: personalityTags,
      //   ),
      // );
    }

    emit(state.copyWith(validation: state.validationX));
  }

  Future<void> __submit(_Submit event, Emitter<PetFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));
    var imageId = 0;
    if (state.petImageId > 0) {
      imageId = state.petImageId;
    } else if (state.petImage.isValid) {
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
    // final payload = RegisterAccountPayload(
    //   petName: state.petName.value,
    //   petType: state.petType.name,
    //   dob: AppUtil.formatDate(DateTime.parse(state.dob.value)),
    //   breed: state.breed.value!.id,
    //   petWeight: double.parse(state.weight.value).toInt(),
    //   gender: state.gender.value?.value ?? '',
    //   petImage: imageId,
    //   personalityTag:
    //       state.selectedPersonalityTags.map((e) => e.value!.id).toList(),
    //   latitude: 0,
    //   longitude: 0,
    // );
    // final result =
    //     event.id == null
    //         ? await __createPetUsecases(payload: payload)
    //         : await __editPetUsecases(id: event.id!, payload: payload);

    // result.fold((error) => emit(state.copyWith(submitStatus: Status.error)), (
    //   success,
    // ) async {
    //   emit(state.copyWith(submitStatus: Status.success));
    // });
  }

  void __petName(_PetName event, Emitter<PetFormState> emit) {
    final petName = NotEmpty.dirty(value: event.name);
    emit(state.copyWith(petName: petName));
    emit(state.copyWith(validation: state.validationX));
  }

  void __petType(_PetType event, Emitter<PetFormState> emit) {
    emit(state.copyWith(petType: event.value));
    emit(state.copyWith(validation: state.validationX));
  }

  void __petImage(_PetImage event, Emitter<PetFormState> emit) {
    emit(state.copyWith(petImage: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
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
