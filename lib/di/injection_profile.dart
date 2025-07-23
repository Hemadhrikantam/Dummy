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
  final editMediaUsecases = EditMediaUsecases(getIt<ProfileRepository>());
  final getMediaUsecases = GetMediaUsecases(getIt<ProfileRepository>());
  final favoriteMediasUsecases = FavoriteMediasUsecases(
    getIt<ProfileRepository>(),
  );
  final editMediaFavrouteUsecases = EditMediaFavrouteUsecases(
    getIt<ProfileRepository>(),
  );
  final deleteMediaUsecases = DeleteMediaUsecases(getIt<ProfileRepository>());

  //   //
  getIt.registerLazySingleton<DocumentsUsecases>(() => documents);
  getIt.registerLazySingleton<EventFieldsUsecases>(() => eventFields);
  getIt.registerLazySingleton<AddMediaUsecases>(() => addMediaUsecases);
  getIt.registerLazySingleton<AddDocumentUsecases>(() => addDocumentUsecases);
  getIt.registerLazySingleton<MediasUsecases>(() => mediasUsecases);
  getIt.registerLazySingleton<EditMediaUsecases>(() => editMediaUsecases);
  getIt.registerLazySingleton<GetMediaUsecases>(() => getMediaUsecases);
  getIt.registerLazySingleton<DeleteMediaUsecases>(() => deleteMediaUsecases);
  getIt.registerLazySingleton<FavoriteMediasUsecases>(
    () => favoriteMediasUsecases,
  );
  getIt.registerLazySingleton<EditMediaFavrouteUsecases>(
    () => editMediaFavrouteUsecases,
  );
}
