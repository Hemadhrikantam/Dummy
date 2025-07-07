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
  final eventFields = EventFieldsUsecases(getIt<ProfileRepository>());
  final addMediaUsecases = AddMediaUsecases(getIt<ProfileRepository>());
  final addDocumentUsecases = AddDocumentUsecases(getIt<ProfileRepository>());
  final mediasUsecases = MediasUsecases(getIt<ProfileRepository>());

  //   //
  getIt.registerLazySingleton<DocumentsUsecases>(() => documents);
  getIt.registerLazySingleton<EventFieldsUsecases>(() => eventFields);
  getIt.registerLazySingleton<AddMediaUsecases>(() => addMediaUsecases);
  getIt.registerLazySingleton<AddDocumentUsecases>(() => addDocumentUsecases);
  getIt.registerLazySingleton<MediasUsecases>(() => mediasUsecases);
}
