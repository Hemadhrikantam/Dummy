import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/data/datasources/profile_datasource.dart';
import 'package:dummy/features/profile/data/models/media_model.dart';
import 'package:dummy/features/profile/domain/entities/documents.dart';
import 'package:dummy/features/profile/domain/entities/media.dart';
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRepositoryImpl(this.datasource);
  final ProfileDatasource datasource;
  @override
  AppTypeResponse<List<Documents>> documents() {
    return datasource.documents();
  }

  @override
  AppTypeResponse<List<DropItem>> eventFields() {
    return datasource.eventFields();
  }

  @override
  AppSuccessResponse addDocument({required Payload payload}) {
    return datasource.addDocument(payload: payload);
  }

  @override
  AppSuccessResponse addMedia({required Payload payload}) {
    return datasource.addMedia(payload: payload);
  }

  @override
  AppTypeResponse<List<Media>> medias() {
    return datasource.medias();
  }

  @override
  AppTypeResponse<MediaModel> getMedia({required int id}) {
    return datasource.getMedia(id: id);
  }

  @override
  AppSuccessResponse editMedia({required int id, required Payload payload}) {
    return datasource.editMedia(id: id, payload: payload);
  }

  @override
  AppSuccessResponse updateFavroute({
    required int mediaId,
    required bool isFavroute,
  }) {
    return datasource.updateFavroute(mediaId: mediaId, isFavroute: isFavroute);
  }

  @override
  AppTypeResponse<List<Media>> favoriteMedias() {
    return datasource.favoriteMedias();
  }

  @override
  AppSuccessResponse deleteMedia({required int id}) {
    return datasource.deleteMedia(id: id);
  }

  @override
  AppSuccessResponse editPet({required int id, required Payload payload}) {
    return datasource.editPet(id: id, payload: payload);
  }
}
