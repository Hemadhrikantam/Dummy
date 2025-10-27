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
  final getMedicationUsecases = GetMedicationUsecases(
    getIt<HealthRepository>(),
  );
  final editMedicationUsecases = EditMedicationUsecases(
    getIt<HealthRepository>(),
  );
  final vaccinationsUsecases = VaccinationsUsecases(getIt<HealthRepository>());
  final getMedicationDateUsecases = GetMedicationDateUsecases(
    getIt<HealthRepository>(),
  );
  final getMedicationLogsUsecases = GetMedicationLogsUsecases(
    getIt<HealthRepository>(),
  );
  final updateMedicationDateUsecases = UpdateMedicationDateUsecases(
    getIt<HealthRepository>(),
  );
  final deleteMedicationUsecases = DeleteMedicationUsecases(
    getIt<HealthRepository>(),
  );
  final getVaccinationUsecases = GetVaccinationUsecases(
    getIt<HealthRepository>(),
  );
  final deleteVaccinationUsecases = DeleteVaccinationUsecases(
    getIt<HealthRepository>(),
  );
  final editVaccinationUsecases = EditVaccinationUsecases(
    getIt<HealthRepository>(),
  );
  // final addVaccinationLogUsecases = AddVaccinationLogUsecases(
  //   getIt<HealthRepository>(),
  // );
  // final getVaccinationLogsUsecases = GetVaccinationLogsUsecases(
  //   getIt<HealthRepository>(),
  // );

  //
  getIt.registerLazySingleton<AddMedicationUsecases>(
    () => addMedicationUsecases,
  );
  getIt.registerLazySingleton<DeleteMedicationUsecases>(
    () => deleteMedicationUsecases,
  );
  getIt.registerLazySingleton<MedicationFrequencyUsecases>(
    () => medicationFrequencyUsecases,
  );
  getIt.registerLazySingleton<MedicationsUsecases>(() => medicationsUsecases);
  getIt.registerLazySingleton<AddVaccinationUsecases>(
    () => addVaccinationUsecases,
  );
  getIt.registerLazySingleton<GetMedicationUsecases>(
    () => getMedicationUsecases,
  );
  getIt.registerLazySingleton<EditMedicationUsecases>(
    () => editMedicationUsecases,
  );
  getIt.registerLazySingleton<VaccinationsUsecases>(() => vaccinationsUsecases);
  getIt.registerLazySingleton<GetMedicationDateUsecases>(
    () => getMedicationDateUsecases,
  );
  getIt.registerLazySingleton<GetMedicationLogsUsecases>(
    () => getMedicationLogsUsecases,
  );
  getIt.registerLazySingleton<UpdateMedicationDateUsecases>(
    () => updateMedicationDateUsecases,
  );
  getIt.registerLazySingleton<GetVaccinationUsecases>(
    () => getVaccinationUsecases,
  );
  getIt.registerLazySingleton<DeleteVaccinationUsecases>(
    () => deleteVaccinationUsecases,
  );
  getIt.registerLazySingleton<EditVaccinationUsecases>(
    () => editVaccinationUsecases,
  );
  // getIt.registerLazySingleton<AddVaccinationLogUsecases>(
  //   () => addVaccinationLogUsecases,
  // );
  // getIt.registerLazySingleton<GetVaccinationLogsUsecases>(
  //   () => getVaccinationLogsUsecases,
  // );
}
