import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/email.dart';
import 'package:dummy/core/models/formz/mobile.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/adoption/pet_adoption_payload.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/addoption/domain/usecases/adoption_details_usecases.dart';
import 'package:dummy/features/addoption/domain/usecases/edit_pet_adoption_usecases.dart';
import 'package:dummy/features/addoption/domain/usecases/submit_pet_adoption_form.dart';
import 'package:dummy/features/signup/domain/usecases/cat_breed_usecases.dart';
import 'package:dummy/features/signup/domain/usecases/dog_breed_usecases.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/drop_item.dart';
import '../../../../../core/utils/bottom_models.dart';

part 'add_adoption_event.dart';
part 'add_adoption_state.dart';
part 'add_adoption_bloc.freezed.dart';

class AddAdoptionBloc extends Bloc<AddAdoptionEvent, AddAdoptionState> {
  AddAdoptionBloc({
    required SubmitPetAdoptionUsecases submitPetAdoptionUsecase,
    required CatBreedUsecases catBreedUsecases,
    required DogBreedUsecases dogBreedUsecases,
    required AdoptionDetailsUsecases adoptionDetailsUsecases,
    required EditPetAdoptionUsecases editPetAdoptionUsecases,
  }) : __submitPetAdoptionUsecase = submitPetAdoptionUsecase,
       __catBreeds = catBreedUsecases,
       __dogBreeds = dogBreedUsecases,
       __editPetAdoptionUsecase = editPetAdoptionUsecases,
       __adoptionDetailsUsecases = adoptionDetailsUsecases,
       super(AddAdoptionState()) {
    on<_Name>(__name);
    on<_Year>(__year);
    on<_Month>(__month);
    on<_Phone>(__phone);
    on<_Email>(__email);
    on<_Address>(__address);
    on<_Description>(__description);
    on<_PetType>(__petType);
    on<_PetBreed>(__petBreed);
    on<_Image>(__imagePath);
    on<_Submit>(__submit);
    on<_Initialization>(_initialization);
  }
  final SubmitPetAdoptionUsecases __submitPetAdoptionUsecase;
  final EditPetAdoptionUsecases __editPetAdoptionUsecase;
  final AdoptionDetailsUsecases __adoptionDetailsUsecases;
  final CatBreedUsecases __catBreeds;
  final DogBreedUsecases __dogBreeds;

  Future<void> _initialization(
    _Initialization event,
    Emitter<AddAdoptionState> emit,
  ) async {
    emit(state.copyWith(addAdoptionStatus: Status.loading));
    final catBreeds = await _catBreeds();
    final dogBreeds = await _dogBreeds();
    emit(
      state.copyWith(
        catBreeds: catBreeds,
        dogBreeds: dogBreeds,
        addAdoptionStatus: Status.success,
      ),
    );
    if (event.id != null) {
      final result = await __adoptionDetailsUsecases(id: event.id!);
      result.fold((l) {}, (r) {
        final List<DropItem> petTypes = [
          DropItemModel(id: 1, value: 'Dog'),
          DropItemModel(id: 2, value: 'Cat'),
          DropItemModel(id: 3, value: 'Snake'),
          DropItemModel(id: 4, value: 'Horse'),
          DropItemModel(id: 5, value: 'Hamster'),
        ];
        final List<DropItem> breeds =
            r.petType == 'Dog'
                ? dogBreeds
                : r.petType == 'Cat'
                ? catBreeds
                : [];
        emit(
          state.copyWith(
            name: NotEmpty.dirty(value: r.name),
            address: NotEmpty.dirty(value: r.address),
            description: NotEmpty.dirty(value: r.description),
            url: NotEmpty.dirty(value: r.petImage),
            phone: MobileNo.dirty(value: r.phone),
            email: Email.dirty(value: r.email),
            year: DropdownValue.dirty(
              DropItemModel(id: r.age.toInt(), value: r.age.toInt().toString()),
            ),
            petType: DropdownValue.dirty(
              petTypes.firstWhere((e) => e.value == r.petType),
            ),
            breed: DropdownValue.dirty(
              breeds.firstWhere((e) => e.id == r.petBreed),
            ),
          ),
        );
      });
    }
  }

  void __name(_Name event, Emitter<AddAdoptionState> emit) {
    final name = NotEmpty.dirty(value: event.name);
    emit(
      state.copyWith(
        name: name,
        adoptionValidation: Formz.validate([
          name,
          state.year,
          state.petType,
          state.breed,
          state.address,
          state.phone,
          state.url,
          state.month,
        ]),
      ),
    );
  }

  void __year(_Year event, Emitter<AddAdoptionState> emit) {
    final year = DropdownValue.dirty(event.year);
    emit(
      state.copyWith(
        year: year,
        adoptionValidation: Formz.validate([
          state.name,
          year,
          state.petType,
          state.breed,
          state.address,
          state.phone,
          state.url,
          state.month,
        ]),
      ),
    );
  }

  void __month(_Month event, Emitter<AddAdoptionState> emit) {
    final month = DropdownValue.dirty(event.value);
    emit(
      state.copyWith(
        month: month,
        adoptionValidation: Formz.validate([
          state.name,
          month,
          state.year,
          state.petType,
          state.breed,
          state.address,
          state.phone,
          state.url,
        ]),
      ),
    );
  }

  void __phone(_Phone event, Emitter<AddAdoptionState> emit) {
    final phone = MobileNo.dirty(value: event.phone);
    emit(
      state.copyWith(
        phone: phone,
        adoptionValidation: Formz.validate([
          state.name,
          state.year,
          state.petType,
          state.breed,
          state.address,
          state.month,
          phone,
          state.url,
        ]),
      ),
    );
  }

  void __email(_Email event, Emitter<AddAdoptionState> emit) {
    emit(state.copyWith(email: Email.dirty(value: event.email)));
  }

  void __address(_Address event, Emitter<AddAdoptionState> emit) {
    final address = NotEmpty.dirty(value: event.address);
    emit(
      state.copyWith(
        address: address,
        adoptionValidation: Formz.validate([
          state.name,
          state.year,
          state.petType,
          state.breed,
          address,
          state.phone,
          state.url,
          state.month,
        ]),
      ),
    );
  }

  void __description(_Description event, Emitter<AddAdoptionState> emit) {
    emit(state.copyWith(description: NotEmpty.dirty(value: event.description)));
  }

  void __petType(_PetType event, Emitter<AddAdoptionState> emit) {
    final petType = DropdownValue.dirty(event.petType);
    emit(
      state.copyWith(
        petType: petType,
        adoptionValidation: Formz.validate([
          state.name,
          state.year,
          petType,
          state.breed,
          state.address,
          state.phone,
          state.url,
          state.month,
        ]),
      ),
    );
  }

  void __petBreed(_PetBreed event, Emitter<AddAdoptionState> emit) {
    final breed = DropdownValue.dirty(event.petBreed);
    emit(
      state.copyWith(
        breed: breed,
        adoptionValidation: Formz.validate([
          state.name,
          state.year,
          state.petType,
          breed,
          state.address,
          state.phone,
          state.url,
          state.month,
        ]),
      ),
    );
  }

  void __imagePath(_Image event, Emitter<AddAdoptionState> emit) {
    LogUtility.error('url  ${event.filePath}');
    final url = NotEmpty.dirty(value: event.filePath);
    emit(
      state.copyWith(
        url: url,
        adoptionValidation: Formz.validate([
          url,
          state.name,
          state.year,
          state.petType,
          state.breed,
          state.address,
          state.phone,
          state.month,
        ]),
      ),
    );
  }

  void __submit(_Submit event, Emitter<AddAdoptionState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));

    final payload = PetAdoptionPayload(
      name: state.name.value,
      year: state.year.value?.value ?? '',
      petType: state.petType.value?.value ?? '',
      address: state.address.value,
      phone: state.phone.value ?? '',
      email: state.email.value ?? '',
      description: state.description.value,
      isAdopted: false,
      petBreed: state.breed.value?.id ?? 0,
      petImage: await MultipartFile.fromFile(
        state.url.value,
        filename: state.url.value.split('/').last,
      ),
    );

    final result =
        event.id != null
            ? await __editPetAdoptionUsecase(payload, event.id!)
            : await __submitPetAdoptionUsecase(payload);
    result.fold((error) => emit(state.copyWith(submitStatus: Status.error)), (
      success,
    ) {
      emit(state.copyWith(submitStatus: Status.success));
      BottomModels.addAdoptionSuccessBottomSheet(currentContext);
    });
  }

  Future<List<DropItem>> _catBreeds() async {
    final result = await __catBreeds();
    return result.fold((l) => [], (r) => r);
  }

  Future<List<DropItem>> _dogBreeds() async {
    final result = await __dogBreeds();
    return result.fold((l) => [], (r) => r);
  }
}
