part of 'injection.dart';

/// profile Dependencies
Future<void> __profileDependencies() async {
  // profile Data Source
  final profileDataSource = ProfileDatasourceImpl(http: getIt<AppHttp>());
  getIt.registerLazySingleton<ProfileDatasource>(() => profileDataSource);

  // profile Repo
  final profileRepository = ProfileRepositoryImpl(getIt<ProfileDatasource>());
  getIt.registerLazySingleton<ProfileRepository>(() => profileRepository);

  // profile Usecases
  final documents = DocumentsUsecases(getIt<ProfileRepository>());

  //   //
  getIt.registerLazySingleton<DocumentsUsecases>(() => documents);
}
