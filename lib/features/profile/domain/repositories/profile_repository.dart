import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/domain/entities/documents.dart';
import 'package:dummy/features/profile/domain/entities/media.dart';

abstract class ProfileRepository {
  ProfileRepository();
  AppTypeResponse<List<Documents>> documents();
  AppTypeResponse<List<DropItem>> eventFields();
  AppSuccessResponse addMedia({required Payload payload});
  AppSuccessResponse addDocument({required Payload payload});
  AppTypeResponse<List<Media>> medias();
  AppTypeResponse<Media> getMedia({required int id});
  AppTypeResponse<List<Media>> favoriteMedias();
  AppSuccessResponse editMedia({required int id, required Payload payload});
  AppSuccessResponse updateFavroute({
    required int mediaId,
    required bool isFavroute,
  });
}
