part of 'injection.dart';

class InjectionBloc {
  static AuthBloc get authBloc {
    return AuthBloc(
      sendOtpUsecases: getIt<SendOtpUsecases>(),
      loginUserUsecases: getIt<LoginUserUsecases>(),
      currentUserUsecases: getIt<CurrentUserUsecases>(),
      logoutUsecases: getIt<LogoutUsecases>(),
      registerAccountUsecases: getIt<RegisterAccountUsecases>(),
      registerUserUsecases: getIt<RegisterUserUsecases>(),
      enumsUsecases: getIt<EnumsUsecases>(),
      registerDeviceUsecases: getIt<RegisterDeviceUsecases>(),
    );
  }

  static RegisterBloc get registerBloc {
    return RegisterBloc(
      uploadFileUseacases: getIt<UploadFileUsecases>(),
      createPetUsecases: getIt<CreatePetUsecases>(),
    );
  }

  static PetFormBloc get petFormBloc {
    return PetFormBloc(
      uploadFileUsecases: getIt<UploadFileUsecases>(),
      createPetUsecases: getIt<CreatePetUsecases>(),
      editPetUsecases: getIt<EditPetUsecases>(),
    );
  }

  static PetDairyBloc get petDairyBloc {
    return PetDairyBloc(
      documentsUsecases: getIt<DocumentsUsecases>(),
      eventFieldsUsecases: getIt<EventFieldsUsecases>(),
      mediasUsecases: getIt<MediasUsecases>(),
      editMediaFavrouteUsecases: getIt<EditMediaFavrouteUsecases>(),
      favoriteMediasUsecases: getIt<FavoriteMediasUsecases>(),
      deleteMediaUsecases: getIt<DeleteMediaUsecases>(),
      listTimelinesUsecases: getIt<ListTimelineUsecases>(),
    );
  }

  static MediaFormBloc get mediaFormBloc {
    return MediaFormBloc(
      addMediaUsecases: getIt<AddMediaUsecases>(),
      uploadFileUsecases: getIt<UploadFileUsecases>(),
      editMediaUsecases: getIt<EditMediaUsecases>(),
      getMediaUsecases: getIt<GetMediaUsecases>(),
    );
  }

  static DocumentFormBloc get documentFormBloc {
    return DocumentFormBloc(
      addDocumentUsecases: getIt<AddDocumentUsecases>(),
      uploadFileUsecases: getIt<UploadFileUsecases>(),
    );
  }

  static DashboardBloc get dashboardBloc {
    return DashboardBloc(
      dashboardDetailsUsecases: getIt<DashboardDetailsUsecases>(),
    );
  }

  static MealFormBloc get mealFormBloc {
    return MealFormBloc(
      addMealUsecases: getIt<AddMealUsecases>(),
      uploadFileUsecases: getIt<UploadFileUsecases>(),
    );
  }

  static WalkFormBloc get walkFormBloc {
    return WalkFormBloc(
      addWalkUsecases: getIt<AddWalkUsecases>(),
      uploadFileUsecases: getIt<UploadFileUsecases>(),
    );
  }

  static GroomingFormBloc get groomingFormBloc {
    return GroomingFormBloc(
      addGroomingUsecases: getIt<AddGroomingUsecases>(),
      uploadFileUsecases: getIt<UploadFileUsecases>(),
    );
  }

  static DewormingFormBloc get dewormingFormBloc {
    return DewormingFormBloc(
      addDewormingUsecases: getIt<AddDewormingUsecases>(),
      timezonesUsecases: getIt<TimezonesUsecases>(),
      frequencyUsecases: getIt<FrequencyUsecases>(),
      beforeUsecases: getIt<RemindBeforeUsecases>(),
      uploadFileUsecases: getIt<UploadFileUsecases>(),
    );
  }

  static ExpenseFormBloc get expenseFormBloc {
    return ExpenseFormBloc(
      addExpenseUsecases: getIt<AddExpenseUsecases>(),
      uploadFileUsecases: getIt<UploadFileUsecases>(),
    );
  }

  static MealsBloc get mealsBloc {
    return MealsBloc(mealsUsecases: getIt<MealsUsecases>());
  }

  static WalksBloc get walksBloc {
    return WalksBloc(walksUsecases: getIt<WalksUsecases>());
  }

  static GroomingsBloc get groomingsBloc {
    return GroomingsBloc(groomingsUsecases: getIt<GroomingsUsecases>());
  }

  static ExpensesBloc get expensesBloc {
    return ExpensesBloc(expensesUsecases: getIt<ExpensesUsecases>());
  }

  static DewormingsBloc get dewormingsBloc {
    return DewormingsBloc(dewormingsUsecases: getIt<DewormingsUsecases>());
  }

  static MedicationFormBloc get medicationFormBloc {
    return MedicationFormBloc(
      addMedicationUsecases: getIt<AddMedicationUsecases>(),
      uploadFileUsecases: getIt<UploadFileUsecases>(),
      getMedicationUsecases: getIt<GetMedicationUsecases>(),
      editMedicationUsecases: getIt<EditMedicationUsecases>(),
    );
  }

  static MedicationsBloc get medicationsBloc {
    return MedicationsBloc(
      deleteMedicationUsecases: getIt<DeleteMedicationUsecases>(),
      medicationsUsecases: getIt<MedicationsUsecases>(),
    );
  }

  static VaccinationFormBloc get vaccinationFormBloc {
    return VaccinationFormBloc(
      addVaccinationUsecases: getIt<AddVaccinationUsecases>(),
      getVaccinationUsecases: getIt<GetVaccinationUsecases>(),
      editVaccinationUsecases: getIt<EditVaccinationUsecases>(),
    );
  }

  static VetNearMeBloc get vetNearMeBloc {
    return VetNearMeBloc(listClinicUsecases: getIt<ListClinicUsecases>());
  }

  static VaccinationDetailsBloc get vaccinationDetailsBloc {
    return VaccinationDetailsBloc(
      getVaccinationUsecases: getIt<GetVaccinationUsecases>(),
      getVaccinationLogUsecases: getIt<GetVaccinationLogUsecases>(),
      updateVaccinationLogUsecases: getIt<UpdateVaccinationLogUsecases>(),
      // addVaccinationLogUsecases: getIt<AddVaccinationLogUsecases>(),
      // getVaccinationLogsUsecases: getIt<GetVaccinationLogsUsecases>(),
    );
  }

  static VaccinationLogFormBloc get vaccinationLogFormBloc {
    return VaccinationLogFormBloc(
      updateVaccinationLogUsecases: getIt<UpdateVaccinationLogUsecases>(),
    );
  }

  static VaccinationsBloc get vaccinationsBloc {
    return VaccinationsBloc(
      vaccinationsUsecases: getIt<VaccinationsUsecases>(),
      deleteVaccinationUsecases: getIt<DeleteVaccinationUsecases>(),
    );
  }

  static MedicationDetailsBloc get medicationDetailsBloc {
    return MedicationDetailsBloc(
      getMedicationUsecases: getIt<GetMedicationUsecases>(),
      dateUsecases: getIt<GetMedicationLogsUsecases>(),
      updateLogUsecases: getIt<UpdateMedicationLogUsecases>(),
      editDateUsecases: getIt<UpdateMedicationDateUsecases>(),
    );
  }

  static AddAdoptionBloc get addAdoptionBloc {
    return AddAdoptionBloc(
      submitPetAdoptionUsecase: getIt<SubmitPetAdoptionUsecases>(),
      editPetAdoptionUsecases: getIt<EditPetAdoptionUsecases>(),
      dogBreedUsecases: getIt<DogBreedUsecases>(),
      catBreedUsecases: getIt<CatBreedUsecases>(),
      adoptionDetailsUsecases: getIt<AdoptionDetailsUsecases>(),
      petTypesUsecases: getIt<PetTypesUsecases>(),
    );
  }

  static ListingFormBloc get listingFormBloc {
    return ListingFormBloc(
      createPetUsecases: getIt<AddPetUsecases>(),
      editPetUsecases: getIt<EditPetUsecases>(),
      uploadFileUsecases: getIt<UploadFileUsecases>(),
      addPetListingUsecase: getIt<AddPetListingUsecase>(),
      editPetListingUsecase: getIt<EditPetListingUsecase>(),
    );
  }

  static AdoptionBloc get adoptionBloc {
    return AdoptionBloc(
      adoptionUsecases: getIt<AdoptionUsecases>(),
      allPetsUsecases: getIt<AllPetsUsecases>(),
    );
  }

  static OverviewBloc get overviewBloc {
    return OverviewBloc(overviewUsecases: getIt<OverviewUsecases>());
  }

  static NgoRegistrationBloc get ngoRegistrationBloc {
    return NgoRegistrationBloc(
      ngoRegistrationUsecases: getIt<NgoRegistrationUsecases>(),
      uploadFileUsecases: getIt<UploadFileUsecases>(),
    );
  }

  static NgoProfileBloc get ngoProfileBloc {
    return NgoProfileBloc(
      getNgoProfileUsecase: getIt<GetNgoProfileUsecase>(),
      updateNgoProfileUsecase: getIt<UpdateNgoProfileUsecase>(),
      uploadFileUsecases: getIt<UploadFileUsecases>(),
    );
  }

  static NgoHomeBloc get ngoHomeBloc {
    return NgoHomeBloc(
      getNgoProfileUsecase: getIt<GetNgoProfileUsecase>(),
      petListingUsecase: getIt<PetListingUsecase>(),
    );
  }
}

// import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';

// mBloc get listingFormBloc {
//     return ListingFormBloc(
//       createPetUsecases: getIt<AddPetUsecases>(),
//       editPetUsecases: getIt<EditPetUsecases>(),
//       uploadFileUsecases: getIt<UploadFileUsecases>(),
//       addPetListingUsecase: getIt<AddPetListingUsecase>(),
//     );

//   static AdoptionFormBloc get adoptionFormBloc {
//     return AdoptionFormBloc(
//   static AdoptionBloc get adoptionBloc {
//     return AdoptionBloc(
//     );
//   }

//   static OverviewBloc get overviewBloc {
//     return OverviewBloc(overviewUsecases: getIt<OverviewUsecases>());
//   }

//   static NgoRegistrationBloc get ngoRegistrationBloc {
//     return NgoRegistrationBloc(
//       ngoRegistrationUsecases: getIt<NgoRegistrationUsecases>(),
//       uploadFileUsecases: getIt<UploadFileUsecases>(),
//     );
//   }

//   static NgoProfileBloc get ngoProfileBloc {
//     return NgoProfileBloc(
//       getNgoProfileUsecase: getIt<GetNgoProfileUsecase>(),
//       updateNgoProfileUsecase: getIt<UpdateNgoProfileUsecase>(),
//       uploadFileUsecases: getIt<UploadFileUsecases>(),
//     );
//   }

//   static NgoHomeBloc get ngoHomeBloc {
//     return NgoHomeBloc(
//       getNgoProfileUsecase: getIt<GetNgoProfileUsecase>(),
//       petListingUsecase: getIt<PetListingUsecase>(),
//     );
//   }
// }
