part of 'injection.dart';

/// adoption Dependencies
Future<void> __adoptionDependencies() async {
  // adoption Data Source
  final adoptionDataSource = PetAdoptionDatasourceImpl(http: getIt<AppHttp>());
  getIt.registerLazySingleton<PetAdoptionDatasource>(() => adoptionDataSource);

  // adoption Repo
  final adoptionRepository = PetAdoptionRepositoryImpl(
    getIt<PetAdoptionDatasource>(),
  );
  getIt.registerLazySingleton<PetAdoptionRepository>(() => adoptionRepository);

  // adoption Usecase
  final submitAdoption = SubmitPetAdoptionUsecases(
    getIt<PetAdoptionRepository>(),
  );
  final adoptions = AdoptionUsecases(getIt<PetAdoptionRepository>());
  final adoptionDetailsUsecases = AdoptionDetailsUsecases(
    getIt<PetAdoptionRepository>(),
  );
  final editPetAdoptionUsecases = EditPetAdoptionUsecases(
    getIt<PetAdoptionRepository>(),
  );
  final allPetsUsecases = AllPetsUsecases(
    getIt<PetAdoptionRepository>(),
  );

  final petTypesUsecases = PetTypesUsecases(
    getIt<PetAdoptionRepository>(),
  );

  //   //
  getIt.registerLazySingleton<SubmitPetAdoptionUsecases>(() => submitAdoption);
  getIt.registerLazySingleton<AdoptionUsecases>(() => adoptions);
  getIt.registerLazySingleton<AdoptionDetailsUsecases>(() => adoptionDetailsUsecases);
  getIt.registerLazySingleton<EditPetAdoptionUsecases>(() => editPetAdoptionUsecases);
  getIt.registerLazySingleton<AllPetsUsecases>(() => allPetsUsecases);
  getIt.registerLazySingleton<PetTypesUsecases>(() => petTypesUsecases);
  
}
