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

  static MealsBloc get mealsBloc {
    return MealsBloc(mealsUsecases: getIt<MealsUsecases>());
  }

  static WalksBloc get walksBloc {
    return WalksBloc(walksUsecases: getIt<WalksUsecases>());
  }
}
