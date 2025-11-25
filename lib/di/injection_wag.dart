part of 'injection.dart';

Future<void> __wagDependencies() async {
  // wag Data Source
  final wagDataSource = WagDatasourceImpl(
    http: getIt<AppHttp>(),
    localStorage: getIt<LocalStorage>(),
  );
  getIt.registerLazySingleton<WagDatasource>(() => wagDataSource);

  // wag Repo
  final wagRepository = WagRepositoryImpl(getIt<WagDatasource>());
  getIt.registerLazySingleton<WagRepository>(() => wagRepository);

  // wag Usecases
  final aiStreamUsecases = AiStreamUsecases(getIt<WagRepository>());
  final sendChatUsecases = SendChatUsecases(getIt<WagRepository>());
  final aiChatHistoryUsecases = AiChatHistoryUsecases(getIt<WagRepository>());
  final aiUsageUsecases = AiUsageUsecases(getIt<WagRepository>());

  //   //
  getIt.registerLazySingleton<AiStreamUsecases>(() => aiStreamUsecases);
  getIt.registerLazySingleton<SendChatUsecases>(() => sendChatUsecases);
  getIt.registerLazySingleton<AiChatHistoryUsecases>(
    () => aiChatHistoryUsecases,
  );
  getIt.registerLazySingleton<AiUsageUsecases>(() => aiUsageUsecases);
}
