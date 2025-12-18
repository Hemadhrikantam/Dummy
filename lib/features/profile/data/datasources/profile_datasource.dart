import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/data/models/documents_model.dart';
import 'package:dummy/features/profile/data/models/media_model.dart';
import 'package:dummy/features/profile/data/models/account_detail_model.dart';
import 'package:dummy/features/profile/data/models/timeline_model.dart';

abstract class ProfileDatasource {
  ProfileDatasource();
  AppTypeResponse<List<DocumentsModel>> documents();
  AppSuccessResponse addMedia({required Payload payload});
  AppSuccessResponse editPet({required Payload payload, bool edit = true});
  AppSuccessResponse deleteMedia({required String id});
  AppSuccessResponse editMedia({required String id, required Payload payload});
  AppSuccessResponse addDocument({required Payload payload});
  AppSuccessResponse deleteDocument({required String id});
  AppSuccessResponse updateFavroute({
    required String mediaId,
    required bool isFavroute,
  });
  AppTypeResponse<List<DropItemModel>> eventFields();
  AppTypeResponse<List<MediaModel>> medias();
  AppTypeResponse<List<MediaModel>> favoriteMedias();
  AppTypeResponse<MediaModel> getMedia({required String id});

  // Timelines
  AppTypeResponse<List<TimelineModel>> timelines();

  AppTypeResponse<AccountDetailModel> accountMe();

  AppSuccessResponse addAccountUser({
    required String mobileNumber,
    required String name,
    required String role,
  });

  AppSuccessResponse editAccount({required Payload payload});

  AppTypeResponse<List<TimelineModel>> memories();
  AppSuccessResponse addMemory({required Payload payload});
}
