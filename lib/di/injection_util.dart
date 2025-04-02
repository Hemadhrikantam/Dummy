part of 'injection.dart';


Future<void> _initServicesAndUtils() async {
  // Route
  final navigationService = NavigationService();
  getIt.registerLazySingleton<NavigationService>(() => navigationService);

  // Local Storage
  getIt.registerSingleton<LocalStorage>(
      const LocalStorageImpl(FlutterSecureStorage()));

  // REST API Call
  final dio = Dio();
  dio.interceptors.add(CustomInterceptor());
  getIt.registerSingleton<Dio>(dio);

  final appHttp = AppHttpImpl(getIt<Dio>(), getIt<LocalStorage>());
  getIt.registerLazySingleton<AppHttp>(() => appHttp);

  //
}
