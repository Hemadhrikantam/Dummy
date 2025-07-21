part of 'injection.dart';

/// AUTH Dependencies
Future<void> __dailyCareDependencies() async {
  // AUTH Data Source
  final dailyCareDatasource = DailyCareDatasourceImpl(
    http: getIt<AppHttp>(),
    storage: getIt<LocalStorage>(),
  );
  getIt.registerLazySingleton<DailyCareDatasource>(() => dailyCareDatasource);

  // AUTH Repo
  final dailyRepository = DailyCareRepositoryImpl(getIt<DailyCareDatasource>());
  getIt.registerLazySingleton<DailyCareRepository>(() => dailyRepository);

  // AUTH Usecase
  final addMealUsecases = AddMealUsecases(getIt<DailyCareRepository>());
  final addWalkUsecases = AddWalkUsecases(getIt<DailyCareRepository>());
  final addGroomingUsecases = AddGroomingUsecases(getIt<DailyCareRepository>());
  final addDewormingUsecases = AddDewormingUsecases(getIt<DailyCareRepository>());
  final addExpenseUsecases = AddExpenseUsecases(getIt<DailyCareRepository>());
  final timezonesUsecases = TimezonesUsecases(getIt<DailyCareRepository>());
  final frequencyUsecases = FrequencyUsecases(getIt<DailyCareRepository>());
  final beforeUsecases = RemindBeforeUsecases(getIt<DailyCareRepository>());
  final mealsUsecases = MealsUsecases(getIt<DailyCareRepository>());
  final walksUsecases = WalksUsecases(getIt<DailyCareRepository>());
  final groomingsUsecases = GroomingsUsecases(getIt<DailyCareRepository>());
  final expensesUsecases = ExpensesUsecases(getIt<DailyCareRepository>());
  final dewormingsUsecases = DewormingsUsecases(getIt<DailyCareRepository>());
  final overviewUsecases = OverviewUsecases(getIt<DailyCareRepository>());

  //   //
  getIt.registerLazySingleton<AddMealUsecases>(() => addMealUsecases);
  getIt.registerLazySingleton<AddWalkUsecases>(() => addWalkUsecases);
  getIt.registerLazySingleton<AddGroomingUsecases>(() => addGroomingUsecases);
  getIt.registerLazySingleton<AddDewormingUsecases>(() => addDewormingUsecases);
  getIt.registerLazySingleton<AddExpenseUsecases>(() => addExpenseUsecases);
  getIt.registerLazySingleton<TimezonesUsecases>(() => timezonesUsecases);
  getIt.registerLazySingleton<FrequencyUsecases>(() => frequencyUsecases);
  getIt.registerLazySingleton<RemindBeforeUsecases>(() => beforeUsecases);
  getIt.registerLazySingleton<MealsUsecases>(() => mealsUsecases);
  getIt.registerLazySingleton<WalksUsecases>(() => walksUsecases);
  getIt.registerLazySingleton<GroomingsUsecases>(() => groomingsUsecases);
  getIt.registerLazySingleton<ExpensesUsecases>(() => expensesUsecases);
  getIt.registerLazySingleton<DewormingsUsecases>(() => dewormingsUsecases);
  getIt.registerLazySingleton<OverviewUsecases>(() => overviewUsecases);
}
