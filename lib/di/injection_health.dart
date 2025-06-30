part of 'injection.dart';

/// AUTH Dependencies
Future<void> __healthDependencies() async {
  // AUTH Data Source
  final healthDataSource = HealthDatasourceImpl(
    http: getIt<AppHttp>(),
    storage: getIt<LocalStorage>(),
  );
  getIt.registerLazySingleton<HealthDatasource>(() => healthDataSource);

  // AUTH Repo
  final healthRepository = HealthRepositoryImpl(getIt<HealthDatasource>());
  getIt.registerLazySingleton<HealthRepository>(() => healthRepository);

  // HEALTH Usecase
  final addMedicationUsecases = AddMedicationUsecases(getIt<HealthRepository>());

  //  
  getIt.registerLazySingleton<AddMedicationUsecases>(() => addMedicationUsecases);
}
