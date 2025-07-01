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
  final addMedicationUsecases = AddMedicationUsecases(
    getIt<HealthRepository>(),
  );
  final medicationFrequencyUsecases = MedicationFrequencyUsecases(
    getIt<HealthRepository>(),
  );
  final medicationsUsecases = MedicationsUsecases(getIt<HealthRepository>());
  final addVaccinationUsecases = AddVaccinationUsecases(
    getIt<HealthRepository>(),
  );

  //
  getIt.registerLazySingleton<AddMedicationUsecases>(
    () => addMedicationUsecases,
  );
  getIt.registerLazySingleton<MedicationFrequencyUsecases>(
    () => medicationFrequencyUsecases,
  );
  getIt.registerLazySingleton<MedicationsUsecases>(() => medicationsUsecases);
  getIt.registerLazySingleton<AddVaccinationUsecases>(
    () => addVaccinationUsecases,
  );
}
