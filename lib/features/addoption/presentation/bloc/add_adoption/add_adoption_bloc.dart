import 'dart:async';

import 'package:dummy/core/enum/breed.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/email.dart';
import 'package:dummy/core/models/formz/mobile.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/pet_payload.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/addoption/presentation/bloc/adoption/adoption_bloc.dart';
import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/ngo/domain/usecases/add_pet_listing_usecase.dart';
import 'package:dummy/features/ngo/domain/usecases/edit_pet_listing_usecase.dart';
import 'package:dummy/features/profile/domain/usecases/add_pet_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/edit_pet_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/bottom_models.dart';
import '../../../../../core/utils/toast_message.dart';

part 'add_adoption_event.dart';
part 'add_adoption_state.dart';
part 'add_adoption_bloc.freezed.dart';

class AddAdoptionBloc extends Bloc<AddAdoptionEvent, AddAdoptionState> {
  AddAdoptionBloc({
    required AddPetUsecases createPetUsecases,
    required EditPetUsecases editPetUsecases,
    required UploadFileUsecases uploadFileUsecases,
    required AddPetListingUsecase addPetListingUsecase,
    required EditPetListingUsecase editPetListingUsecase,
  }) : __createPetUsecases = createPetUsecases,
       __editPetUsecases = editPetUsecases,
       __uploadFileUsecases = uploadFileUsecases,
       __addPetListingUsecase = addPetListingUsecase,
       __editPetListingUsecase = editPetListingUsecase,
       super(AddAdoptionState()) {
    on<_Name>(__name);
    on<_DOB>(__dob);
    on<_PetGender>(__petGender);
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
  final AddPetUsecases __createPetUsecases;
  final EditPetUsecases __editPetUsecases;
  final UploadFileUsecases __uploadFileUsecases;
  final AddPetListingUsecase __addPetListingUsecase;
  final EditPetListingUsecase __editPetListingUsecase;

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
        petType: null,
        breed: DropdownStringValue.pure(),
        gender: DropdownValue.pure(),
        phone: MobileNo.pure(),
        email: Email.pure(),
        address: NotEmpty.pure(),
        description: NotEmpty.pure(),
        name: NotEmpty.pure(),
        dob: NotEmpty.pure(),
        url: NotEmpty.pure(),
        addAdoptionStatus: Status.init,
      ),
    );
    if (event.id != null) {
      final pet =
          currentContext
              .read<AdoptionBloc>()
              .state
              .adoptions
              .where((element) => element.id == event.id)
              .firstOrNull;
      if (pet != null) {
        emit(
          state.copyWith(
            name: NotEmpty.dirty(value: pet.petName),
            dob: NotEmpty.dirty(value: pet.petDob?.toString() ?? ''),
            //   gender: DropdownValue.dirty([
            //   DropItemModel(id: 1, value: 'Male'),
            //   DropItemModel(id: 2, value: 'Female'),
            // ].where((element) => element.value == pet.petGender).first),
            description: NotEmpty.dirty(value: pet.description),
            petType:
                pet.petType.toLowerCase() == 'cat' ? PetType.Cat : PetType.Dog,
            breed: DropdownStringValue.dirty(
              DropStringItemModel(id: "", value: pet.breedName),
            ),
          ),
        );
      }
      emit(state.copyWith(adoptionValidation: state.validationX));
    }
  }

  void __name(_Name event, Emitter<AddAdoptionState> emit) {
    final name = NotEmpty.dirty(value: event.name);
    emit(state.copyWith(name: name, adoptionValidation: state.validationX));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void __dob(_DOB event, Emitter<AddAdoptionState> emit) {
    final dob = NotEmpty.dirty(value: event.dob);
    emit(state.copyWith(dob: dob, adoptionValidation: state.validationX));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void __petGender(_PetGender event, Emitter<AddAdoptionState> emit) {
    final gender = DropdownValue.dirty(event.petGender);
    emit(state.copyWith(gender: gender, adoptionValidation: state.validationX));
  }

  void __phone(_Phone event, Emitter<AddAdoptionState> emit) {
    final phone = MobileNo.dirty(value: event.phone);
    emit(state.copyWith(phone: phone));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void __email(_Email event, Emitter<AddAdoptionState> emit) {
    emit(state.copyWith(email: Email.dirty(value: event.email)));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void __address(_Address event, Emitter<AddAdoptionState> emit) {
    final address = NotEmpty.dirty(value: event.address);
    emit(
      state.copyWith(address: address, adoptionValidation: state.validationX),
    );
  }

  void __description(_Description event, Emitter<AddAdoptionState> emit) {
    emit(state.copyWith(description: NotEmpty.dirty(value: event.description)));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void __petType(_PetType event, Emitter<AddAdoptionState> emit) {
    emit(
      state.copyWith(
        petType: event.petType,
        adoptionValidation: state.validationX,
      ),
    );
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void __petBreed(_PetBreed event, Emitter<AddAdoptionState> emit) {
    final breed = DropdownStringValue.dirty(event.petBreed);
    emit(state.copyWith(breed: breed, adoptionValidation: state.validationX));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void __imagePath(_Image event, Emitter<AddAdoptionState> emit) {
    LogUtility.error('url  ${event.filePath}');
    final url = NotEmpty.dirty(value: event.filePath);
    emit(state.copyWith(url: url, adoptionValidation: state.validationX));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void __submit(_Submit event, Emitter<AddAdoptionState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));

    var url = state.url.value;
    if (state.url.isValid && !state.url.value.contains('http')) {
      final result = await __uploadFileUsecases(
        path: state.url.value,
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
      name: state.name.value,
      type: state.petType!.name.toLowerCase(),
      breedId: (state.breed.value?.id ?? '').toString(),
      gender: state.gender.value?.value.toLowerCase(),
      dob: DateTime.parse(state.dob.value),
      image_url: url,
      weight: const PetWeightPayload(value: '', unit: 'kg'),
      personalityTags: const [],
      ownership_type: OwnershipType.adoption_listing.name,
    );

    final result =
        event.id != null
            ? await __editPetUsecases(payload: payload)
            : await __createPetUsecases(payload: payload);

    await result.fold(
      (error) async {
        if (error.message.contains('Pet limit reached')) {
          BottomModels.needPremiumBottomSheet(currentContext);
        }
        AppAlert.showToast(message: error.message);
        emit(state.copyWith(submitStatus: Status.error));
      },
      (success) async {
        final petId = success.message;
        final listingStatus = 'available';
        final listingResult =
            event.id != null
                ? await __editPetListingUsecase(
                  id: event.id!.toString(),
                  desc: state.description.value,
                  petId: petId,
                  status: listingStatus,
                )
                : await __addPetListingUsecase(
                  desc: state.description.value,
                  petId: petId,
                  status: listingStatus,
                  contactEmail: state.email.value,
                  contactPhone: state.phone.value,
                  contactAddress: state.address.value,
                );

        listingResult.fold(
          (err) {
            AppAlert.showToast(message: err.message);
            emit(state.copyWith(submitStatus: Status.error));
          },
          (ok) {
            AppAlert.showToast(message: ok.message);
            emit(state.copyWith(submitStatus: Status.success));
            currentContext.read<AdoptionBloc>().add(AdoptionEvent.adoptions());
            currentContext.pop();
            BottomModels.addAdoptionSuccessBottomSheet(currentContext);
          },
        );
      },
    );
  }

  Future<List<DropStringItem>> _catBreeds() async {
    final enums = currentContext.read<AuthBloc>().state.enums;
    if (enums == null) {
      return [];
    } else {
      final catBreeds = enums.breeds.where((b) => b.type == 'cat').toList();
      return catBreeds
          .map((b) => DropStringItemModel(id: b.id, value: b.name))
          .toList();
    }
  }

  Future<List<DropStringItem>> _dogBreeds() async {
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
}
