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
    );
  }

  static RegisterBloc get registerBloc {
    return RegisterBloc(
      petImageUsecases: getIt<PetImageUsecases>(),
      createPetUsecases: getIt<CreatePetUsecases>(),
    );
  }

  static PetFormBloc get petFormBloc {
    return PetFormBloc(
      petImageUsecases: getIt<PetImageUsecases>(),
      createPetUsecases: getIt<CreatePetUsecases>(),
      catBreedUsecases: getIt<CatBreedUsecases>(),
      dogBreedUsecases: getIt<DogBreedUsecases>(),
      personalityTagUsecases: getIt<PersonalityTagUsecases>(),
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
    );
  }

  static MediaFormBloc get mediaFormBloc {
    return MediaFormBloc(
      addMediaUsecases: getIt<AddMediaUsecases>(),
      eventFieldsUsecases: getIt<EventFieldsUsecases>(),
      editMediaUsecases: getIt<EditMediaUsecases>(),
      getMediaUsecases: getIt<GetMediaUsecases>(),
    );
  }

  static DocumentFormBloc get documentFormBloc {
    return DocumentFormBloc(addDocumentUsecases: getIt<AddDocumentUsecases>());
  }

  static DashboardBloc get dashboardBloc {
    return DashboardBloc(
      dashboardDetailsUsecases: getIt<DashboardDetailsUsecases>(),
    );
  }

  static MealFormBloc get mealFormBloc {
    return MealFormBloc(addMealUsecases: getIt<AddMealUsecases>());
  }

  static WalkFormBloc get walkFormBloc {
    return WalkFormBloc(addWalkUsecases: getIt<AddWalkUsecases>());
  }

  static GroomingFormBloc get groomingFormBloc {
    return GroomingFormBloc(addGroomingUsecases: getIt<AddGroomingUsecases>());
  }

  static DewormingFormBloc get dewormingFormBloc {
    return DewormingFormBloc(
      addDewormingUsecases: getIt<AddDewormingUsecases>(),
      timezonesUsecases: getIt<TimezonesUsecases>(),
      frequencyUsecases: getIt<FrequencyUsecases>(),
      beforeUsecases: getIt<RemindBeforeUsecases>(),
    );
  }

  static ExpenseFormBloc get expenseFormBloc {
    return ExpenseFormBloc(addExpenseUsecases: getIt<AddExpenseUsecases>());
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
      medicationFrequencyUsecases: getIt<MedicationFrequencyUsecases>(),
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
      medicationFrequencyUsecases: getIt<MedicationFrequencyUsecases>(),
      timezonesUsecases: getIt<TimezonesUsecases>(),
      beforeUsecases: getIt<RemindBeforeUsecases>(),
      getVaccinationUsecases: getIt<GetVaccinationUsecases>(),
      editVaccinationUsecases: getIt<EditVaccinationUsecases>(),
    );
  }

  static VaccinationDetailsBloc get vaccinationDetailsBloc {
    return VaccinationDetailsBloc(
      getVaccinationUsecases: getIt<GetVaccinationUsecases>(),
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
      dateUsecases: getIt<GetMedicationDateUsecases>(),
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

  static AdoptionBloc get adoptionBloc {
    return AdoptionBloc(
      adoptionUsecases: getIt<AdoptionUsecases>(),
      allPetsUsecases: getIt<AllPetsUsecases>(),
    );
  }

  static OverviewBloc get overviewBloc {
    return OverviewBloc(overviewUsecases: getIt<OverviewUsecases>());
  }
}
