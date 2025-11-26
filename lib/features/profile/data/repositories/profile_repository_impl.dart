import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/data/datasources/profile_datasource.dart';
import 'package:dummy/features/profile/data/models/media_model.dart';
import 'package:dummy/features/profile/domain/entities/documents.dart';
import 'package:dummy/features/profile/domain/entities/media.dart';
import 'package:dummy/features/profile/domain/entities/timeline.dart';
import 'package:dummy/features/profile/domain/entities/account_detail.dart';
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
  AppTypeResponse<MediaModel> getMedia({required String id}) {
    return datasource.getMedia(id: id);
  }

  @override
  AppSuccessResponse editMedia({required String id, required Payload payload}) {
    return datasource.editMedia(id: id, payload: payload);
  }

  @override
  AppSuccessResponse updateFavroute({
    required String mediaId,
    required bool isFavroute,
  }) {
    return datasource.updateFavroute(mediaId: mediaId, isFavroute: isFavroute);
  }

  @override
  AppTypeResponse<List<Media>> favoriteMedias() {
    return datasource.favoriteMedias();
  }

  @override
  AppSuccessResponse deleteMedia({required String id}) {
    return datasource.deleteMedia(id: id);
  }

  @override
  AppSuccessResponse editPet({required Payload payload, bool edit = true}) {
    return datasource.editPet(payload: payload, edit: edit);
  }

  // Timelines
  @override
  AppTypeResponse<List<Timeline>> timelines() {
    // Delegate to datasource; model already conforms to Timeline
    return datasource.timelines();
  }

  // Account
  @override
  AppTypeResponse<AccountDetail> accountMe() {
    return datasource.accountMe();
  }

  @override
  AppSuccessResponse addAccountUser({
    required String mobileNumber,
    required String name,
    required String role,
  }) {
    return datasource.addAccountUser(
      mobileNumber: mobileNumber,
      name: name,
      role: role,
    );
  }

  @override
  AppSuccessResponse editAccount({required Payload payload}) {
    return datasource.editAccount(payload: payload);
  }
}
