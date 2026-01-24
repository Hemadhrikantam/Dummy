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
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/ngo/domain/usecases/add_pet_listing_usecase.dart';
import 'package:dummy/features/ngo/domain/usecases/edit_pet_listing_usecase.dart';
import 'package:dummy/features/ngo/presentation/bloc/ngo_home/ngo_home_bloc.dart';
import 'package:dummy/features/profile/domain/usecases/add_pet_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/edit_pet_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/utils/bottom_models.dart';

part 'listing_form_event.dart';
part 'listing_form_state.dart';
part 'listing_form_bloc.freezed.dart';

class ListingFormBloc extends Bloc<ListingFormEvent, ListingFormState> {
  ListingFormBloc({
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
       super(const ListingFormState()) {
    on<_Name>(_onName);
    on<_Phone>(_onPhone);
    on<_Email>(_onEmail);
    on<_Address>(_onAddress);
    on<_Description>(_onDescription);
    on<_PetType>(_onPetType);
    on<_PetBreed>(_onPetBreed);
    on<_Image>(_onImagePath);
    on<_DOB>(_onDOB);
    on<_PetGender>(_onPetGender);
    on<_Submit>(_onSubmit);
    on<_Initialization>(_onInitialization);
  }

  final AddPetUsecases __createPetUsecases;
  final EditPetUsecases __editPetUsecases;
  final UploadFileUsecases __uploadFileUsecases;
  final AddPetListingUsecase __addPetListingUsecase;
  final EditPetListingUsecase __editPetListingUsecase;

  Future<void> _onInitialization(
    _Initialization event,
    Emitter<ListingFormState> emit,
  ) async {
    emit(state.copyWith(addListingStatus: Status.loading));
    final catBreeds = await __catBreeds();
    final dogBreeds = await __dogBreeds();
    await Future.delayed(Duration(seconds: 1));
    emit(
      state.copyWith(
        catBreeds: catBreeds,
        dogBreeds: dogBreeds,
        addListingStatus: Status.success,
        adoptionValidation: false,
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
      ),
    );

    if (event.id != null) {
      final pet =
          currentContext
              .read<NgoHomeBloc>()
              .state
              .listing
              .where((element) => element.id == event.id)
              .firstOrNull;
      if (pet != null) {
        final breeds =
            pet.petType.toLowerCase() == 'cat' ? catBreeds : dogBreeds;
        DropdownStringValue breedDropdown = DropdownStringValue.pure();
        if (pet.breedName.isNotEmpty) {
          final selectedBreed = breeds.firstWhere(
            (e) => e.value == pet.breedName,
          );
          breedDropdown = DropdownStringValue.dirty(
            DropStringItemModel(
              id: selectedBreed.id,
              value: selectedBreed.value,
            ),
          );
        }
        LogUtility.info(pet.petType);
        emit(
          state.copyWith(
            name: NotEmpty.dirty(value: pet.petName),
            dob: NotEmpty.dirty(value: pet.petDob?.toString() ?? ''),
            gender: DropdownValue.dirty(
              [
                DropItemModel(id: 1, value: 'Male'),
                DropItemModel(id: 2, value: 'Female'),
              ].where((element) => element.id == 1).first,
            ),
            description: NotEmpty.dirty(value: pet.description),
            petType:
                pet.petType.toLowerCase() == 'cat' ? PetType.Cat : PetType.Dog,
            breed: breedDropdown,
            address: NotEmpty.dirty(value: pet.contactAddress ?? ''),
            phone: MobileNo.dirty(value: pet.contactPhone ?? ''),
            email: Email.dirty(value: pet.contactEmail ?? ''),
            url: NotEmpty.dirty(value: pet.imageUrl ?? ''),
          ),
        );
      }
    }
    emit(
      state.copyWith(
        adoptionValidation: state.validationX,
        addListingStatus: Status.success,
      ),
    );
  }

  void _onName(_Name event, Emitter<ListingFormState> emit) {
    final name = NotEmpty.dirty(value: event.name);
    emit(state.copyWith(name: name));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void _onPhone(_Phone event, Emitter<ListingFormState> emit) {
    final phone = MobileNo.dirty(value: event.phone);
    emit(state.copyWith(phone: phone));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void _onEmail(_Email event, Emitter<ListingFormState> emit) {
    emit(state.copyWith(email: Email.dirty(value: event.email)));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void _onAddress(_Address event, Emitter<ListingFormState> emit) {
    final address = NotEmpty.dirty(value: event.address);
    emit(state.copyWith(address: address));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void _onDescription(_Description event, Emitter<ListingFormState> emit) {
    emit(state.copyWith(description: NotEmpty.dirty(value: event.description)));
  }

  void _onPetType(_PetType event, Emitter<ListingFormState> emit) {
    emit(state.copyWith(petType: event.petType));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void _onPetBreed(_PetBreed event, Emitter<ListingFormState> emit) {
    final breed = DropdownStringValue.dirty(event.petBreed);
    emit(state.copyWith(breed: breed));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  void _onImagePath(_Image event, Emitter<ListingFormState> emit) {
    LogUtility.error('Listing image path: ${event.filePath}');
    final url = NotEmpty.dirty(value: event.filePath);
    emit(state.copyWith(url: url));
    emit(state.copyWith(adoptionValidation: state.validationX));
  }

  Future<void> _onSubmit(_Submit event, Emitter<ListingFormState> emit) async {
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
      pet_id: event.id,
      name: state.name.value,
      type: state.petType?.name.toLowerCase() ?? '',
      breedId: (state.breed.value?.id ?? '').toString(),
      gender: state.gender.value?.value.toLowerCase(),
      dob:
          state.dob.value.isNotEmpty
              ? DateTime.tryParse(state.dob.value)
              : null,
      image_url: url,
      weight: const PetWeightPayload(value: '0', unit: 'kg'),
      personalityTags: const [],
      ownership_type: OwnershipType.adoption_listing.name,
    );

    final result =
        event.id != null
            ? await __editPetUsecases(payload: payload)
            : await __createPetUsecases(payload: payload);

    await result.fold(
      (error) async {
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
                  contactAddress:
                      state.address.value.isNotEmpty
                          ? state.address.value
                          : null,
                );

        listingResult.fold(
          (err) {
            LogUtility.error(err.message);
            AppAlert.showToast(message: err.message);
            emit(state.copyWith(submitStatus: Status.error));
          },
          (ok) {
            AppAlert.showToast(message: ok.message);
            emit(state.copyWith(submitStatus: Status.success));
            currentContext.pop();
            currentContext.read<NgoHomeBloc>().add(NgoHomeEvent.init());
            BottomModels.addAdoptionSuccessBottomSheet(currentContext);
          },
        );
      },
    );
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

  void _onDOB(_DOB event, Emitter<ListingFormState> emit) {
    final dob = NotEmpty.dirty(value: event.dob);
    emit(state.copyWith(dob: dob, adoptionValidation: state.validationX));
  }

  void _onPetGender(_PetGender event, Emitter<ListingFormState> emit) {
    final gender = DropdownValue.dirty(event.petGender);
    emit(state.copyWith(gender: gender, adoptionValidation: state.validationX));
  }
}
