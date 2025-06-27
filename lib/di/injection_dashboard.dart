part of 'injection.dart';


Future<void> __dashboardDependencies() async {

  final dashboardDataSource = DashboardDetailsDatasourceImpl(
    http: getIt<AppHttp>(),
  );
  getIt.registerLazySingleton<DashboardDetailsDatasource>(() => dashboardDataSource);
  final dashboardDetailsRepository = DashboardDetailsRepositoryImpl ( getIt<DashboardDetailsDatasource>());
  getIt.registerLazySingleton<DashboardDetailsRepository>(() => dashboardDetailsRepository);

  // Signup Usecase
  final dashboardDetail = DashboardDetailsUsecases(getIt<DashboardDetailsRepository>());

  //   //
  getIt.registerLazySingleton<DashboardDetailsUsecases>(() => dashboardDetail);
}
