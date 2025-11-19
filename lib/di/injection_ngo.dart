part of 'injection.dart';

Future<void> __ngoDependencies() async {
  // Datasource
  getIt.registerLazySingleton<NgoDatasource>(() => NgoDatasourceImpl(
        http: getIt<AppHttp>(),
      ));

  // Repository
  getIt.registerLazySingleton<NgoRepository>(
    () => NgoRepositoryImpl(datasource: getIt<NgoDatasource>()),
  );

  // Usecases
  getIt.registerLazySingleton<GetNgoProfileUsecase>(
    () => GetNgoProfileUsecase(getIt<NgoRepository>()),
  );
  getIt.registerLazySingleton<UpdateNgoProfileUsecase>(
    () => UpdateNgoProfileUsecase(getIt<NgoRepository>()),
  );
  getIt.registerLazySingleton<AddPetListingUsecase>(
    () => AddPetListingUsecase(getIt<NgoRepository>()),
  );
  getIt.registerLazySingleton<EditPetListingUsecase>(
    () => EditPetListingUsecase(getIt<NgoRepository>()),
  );
  getIt.registerLazySingleton<MarkAdoptedUsecase>(
    () => MarkAdoptedUsecase(getIt<NgoRepository>()),
  );
  getIt.registerLazySingleton<PetListingUsecase>(
    () => PetListingUsecase(getIt<NgoRepository>()),
  );
}