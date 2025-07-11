part of 'injection.dart';


/// adoption Dependencies
Future<void> __adoptionDependencies() async {
  // adoption Data Source
  final adoptionDataSource = PetAdoptionDatasourceImpl(
    http: getIt<AppHttp>(),
  );
  getIt.registerLazySingleton<PetAdoptionDatasource>(() => adoptionDataSource);

  // adoption Repo
  final adoptionRepository = PetAdoptionRepositoryImpl(getIt<PetAdoptionDatasource>());
  getIt.registerLazySingleton<PetAdoptionRepository>(() => adoptionRepository);

  // adoption Usecase
  final submitAdoption = SubmitPetAdoptionUsecases(getIt<PetAdoptionRepository>());
  final adoptions = AdoptionUsecases(getIt<PetAdoptionRepository>());

  //   //
  getIt.registerLazySingleton<SubmitPetAdoptionUsecases>(() => submitAdoption);
  getIt.registerLazySingleton<AdoptionUsecases>(() => adoptions);
}
