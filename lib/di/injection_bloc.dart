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
    );
  }

  static RegisterBloc get registerBloc {
    return RegisterBloc(
      petImageUsecases: getIt<PetImageUsecases>(),
      createPetUsecases: getIt<CreatePetUsecases>(),
      catBreedUsecases: getIt<CatBreedUsecases>(),
      dogBreedUsecases: getIt<DogBreedUsecases>(),
      personalityTagUsecases: getIt<PersonalityTagUsecases>(),
    );
  }

  static PetDairyBloc get petDairyBloc {
    return PetDairyBloc(
      documentsUsecases: getIt<DocumentsUsecases>(),
      eventFieldsUsecases: getIt<EventFieldsUsecases>(),
    );
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
    );
  }

  static MedicationsBloc get medicationsBloc {
    return MedicationsBloc(medicationsUsecases: getIt<MedicationsUsecases>());
  }

  static VaccinationFormBloc get vaccinationFormBloc {
    return VaccinationFormBloc(
      addVaccinationUsecases: getIt<AddVaccinationUsecases>(),
      medicationFrequencyUsecases: getIt<MedicationFrequencyUsecases>(),
      timezonesUsecases: getIt<TimezonesUsecases>(),
      beforeUsecases: getIt<RemindBeforeUsecases>(),
    );
  }
}
