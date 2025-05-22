part of 'injection.dart';

/// AUTH Dependencies
Future<void> __authDependencies() async {
  // AUTH Data Source
  final authDataSource = AuthDatasourceImpl(
    http: getIt<AppHttp>(),
    storage: getIt<LocalStorage>(),
  );
  getIt.registerLazySingleton<AuthDatasource>(() => authDataSource);

  // AUTH Repo
  final authRepository = AuthRepositoryImpl(getIt<AuthDatasource>());
  getIt.registerLazySingleton<AuthRepository>(() => authRepository);

  // AUTH Usecase
  final login = LoginUserUsecases(getIt<AuthRepository>());
  final currentUser = CurrentUserUsecases(getIt<AuthRepository>());
  final registerAccount = RegisterAccountUsecases(getIt<AuthRepository>());
  // final awsSignedUrl = AwsGenerateSignedUrlUsecases(getIt<AuthRepository>());
  // final upload = UploadUsecases(getIt<AuthRepository>());
  final logout = LogoutUsecases(getIt<AuthRepository>());

  //   //
  getIt.registerLazySingleton<LoginUserUsecases>(() => login);
  getIt.registerLazySingleton<CurrentUserUsecases>(() => currentUser);
  getIt.registerLazySingleton<RegisterAccountUsecases>(() => registerAccount);
  // getIt.registerLazySingleton<AwsGenerateSignedUrlUsecases>(() => awsSignedUrl);
  // getIt.registerLazySingleton<UploadUsecases>(() => upload);
  getIt.registerLazySingleton<LogoutUsecases>(() => logout);
}
