import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/domain/entities/documents.dart';
import 'package:dummy/features/profile/domain/entities/media.dart';
import 'package:dummy/features/profile/domain/entities/timeline.dart';

abstract class ProfileRepository {
  ProfileRepository();
  AppTypeResponse<List<Documents>> documents();
  AppTypeResponse<List<DropItem>> eventFields();
  AppSuccessResponse addMedia({required Payload payload});
  AppSuccessResponse deleteMedia({required String id});
  AppSuccessResponse addDocument({required Payload payload});
  AppTypeResponse<List<Media>> medias();
  AppTypeResponse<Media> getMedia({required String id});
  AppTypeResponse<List<Media>> favoriteMedias();
  AppSuccessResponse editMedia({required String id, required Payload payload});
  AppSuccessResponse editPet({required Payload payload, bool edit = true});
  AppSuccessResponse updateFavroute({
    required String mediaId,
    required bool isFavroute,
  });

  // Timelines
  AppTypeResponse<List<Timeline>> timelines();
}
