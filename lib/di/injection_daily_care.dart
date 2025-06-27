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
  final mealsUsecases = MealsUsecases(getIt<DailyCareRepository>());
  final walksUsecases = WalksUsecases(getIt<DailyCareRepository>());

  //   //
  getIt.registerLazySingleton<AddMealUsecases>(() => addMealUsecases);
  getIt.registerLazySingleton<AddWalkUsecases>(() => addWalkUsecases);
  getIt.registerLazySingleton<MealsUsecases>(() => mealsUsecases);
  getIt.registerLazySingleton<WalksUsecases>(() => walksUsecases);
}
