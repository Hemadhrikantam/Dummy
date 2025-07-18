import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/data/models/documents_model.dart';
import 'package:dummy/features/profile/data/models/media_model.dart';

abstract class ProfileDatasource {
  ProfileDatasource();
  AppTypeResponse<List<DocumentsModel>> documents();
  AppSuccessResponse addMedia({required Payload payload});
  AppSuccessResponse editMedia({required int id, required Payload payload});
  AppSuccessResponse addDocument({required Payload payload});

  AppTypeResponse<List<DropItemModel>> eventFields();
  AppTypeResponse<List<MediaModel>> medias();
  AppTypeResponse<MediaModel> getMedia({required int id});
}
