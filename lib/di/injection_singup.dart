part of 'injection.dart';

/// Signup Dependencies
Future<void> __signupDependencies() async {
  // Signup Data Source
  final signupDataSource = SignupDatasourceImpl(
    http: getIt<AppHttp>(),
    storage: getIt<LocalStorage>(),
  );
  getIt.registerLazySingleton<SignupDatasource>(() => signupDataSource);

  // Signup Repo
  final signupRepository = SignupRepositoryImpl(getIt<SignupDatasource>());
  getIt.registerLazySingleton<SignupRepository>(() => signupRepository);

  // Signup Usecase
  final catBreed = CatBreedUsecases(getIt<SignupRepository>());
  final dogBreed = DogBreedUsecases(getIt<SignupRepository>());
  final personalityTag = PersonalityTagUsecases(getIt<SignupRepository>());

  //   //
  getIt.registerLazySingleton<CatBreedUsecases>(() => catBreed);
  getIt.registerLazySingleton<DogBreedUsecases>(() => dogBreed);
  getIt.registerLazySingleton<PersonalityTagUsecases>(() => personalityTag);
}
