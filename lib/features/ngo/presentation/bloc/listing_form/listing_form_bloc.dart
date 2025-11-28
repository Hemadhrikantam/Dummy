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

    emit(
      state.copyWith(
        catBreeds: catBreeds,
        dogBreeds: dogBreeds,
        addListingStatus: Status.success,
      ),
    );

    // if (event.id != null) {
    //   final result = await _adoptionDetailsUsecases(id: event.id!);
    //   result.fold((l) {}, (r) async {
    //     final List<DropStringItem> breeds =
    //         r.petType == 'Dog'
    //             ? dogBreeds
    //             : r.petType == 'Cat'
    //                 ? catBreeds
    //                 : [];
    //     emit(
    //       state.copyWith(
    //         name: NotEmpty.dirty(value: r.name),
    //         address: NotEmpty.dirty(value: r.address),
    //         description: NotEmpty.dirty(value: r.description),
    //         url: NotEmpty.dirty(value: r.petImage),
    //         phone: MobileNo.dirty(value: r.phone),
    //         email: Email.dirty(value: r.email),
    //         year: DropdownValue.dirty(
    //           DropItemModel(id: r.age.toInt(), value: r.age.toInt().toString()),
    //         ),
    //         petType: DropdownStringValue.dirty(
    //           petTypes.firstWhere((e) => e.value == r.petType,
    //               orElse: () => DropItemModel(id: -1, value: r.petType)),
    //         ),
    //         breed: DropdownStringValue.dirty(
    //           breeds.firstWhere((e) => e.id == r.petBreed.id,
    //               orElse: () => DropItemModel(id: r.petBreed.id, value: r.petBreed.petBreed)),
    //         ),
    //       ),
    //     );
    //   });
    // }
  }

  void _onName(_Name event, Emitter<ListingFormState> emit) {
    final name = NotEmpty.dirty(value: event.name);
    emit(state.copyWith(name: name, adoptionValidation: state.validationX));
  }

  void _onPhone(_Phone event, Emitter<ListingFormState> emit) {
    final phone = MobileNo.dirty(value: event.phone);
    emit(state.copyWith(phone: phone, adoptionValidation: state.validationX));
  }

  void _onEmail(_Email event, Emitter<ListingFormState> emit) {
    emit(state.copyWith(email: Email.dirty(value: event.email)));
  }

  void _onAddress(_Address event, Emitter<ListingFormState> emit) {
    final address = NotEmpty.dirty(value: event.address);
    emit(
      state.copyWith(address: address, adoptionValidation: state.validationX),
    );
  }

  void _onDescription(_Description event, Emitter<ListingFormState> emit) {
    emit(state.copyWith(description: NotEmpty.dirty(value: event.description)));
  }

  void _onPetType(_PetType event, Emitter<ListingFormState> emit) {
    emit(
      state.copyWith(
        petType: event.petType,
        adoptionValidation: state.validationX,
      ),
    );
  }

  void _onPetBreed(_PetBreed event, Emitter<ListingFormState> emit) {
    final breed = DropdownStringValue.dirty(event.petBreed);
    emit(state.copyWith(breed: breed, adoptionValidation: state.validationX));
  }

  void _onImagePath(_Image event, Emitter<ListingFormState> emit) {
    LogUtility.error('Listing image path: ${event.filePath}');
    final url = NotEmpty.dirty(value: event.filePath);
    emit(state.copyWith(url: url, adoptionValidation: state.validationX));
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
      name: state.name.value,
      type: state.petType.name.toLowerCase(),
      breedId: (state.breed.value?.id ?? '').toString(),
      gender: state.gender.value?.value.toLowerCase(),
      dob:
          state.dob.value.isNotEmpty
              ? DateTime.tryParse(state.dob.value)
              : null,
      image_url: url,
      weight: const PetWeightPayload(value: '0', unit: 'kg'),
      personalityTags: const [],
    );

    final result =
        event.id != null
            ? await __editPetUsecases(payload: payload)
            : await __createPetUsecases(payload: payload);

    await result.fold(
      (error) async {
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
                );

        listingResult.fold(
          (err) {
            emit(state.copyWith(submitStatus: Status.error));
          },
          (ok) {
            emit(state.copyWith(submitStatus: Status.success));
            currentContext.pop();
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
