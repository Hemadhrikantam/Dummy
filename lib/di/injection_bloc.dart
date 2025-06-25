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
      createPetUsecases: getIt<CreatePetUsecases>(),
      catBreedUsecases: getIt<CatBreedUsecases>(),
      dogBreedUsecases: getIt<DogBreedUsecases>(),
      personalityTagUsecases: getIt<PersonalityTagUsecases>(),
    );
  }
}
