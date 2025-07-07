import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/data/datasources/profile_datasource.dart';
import 'package:dummy/features/profile/data/models/media_model.dart';
import 'package:dummy/features/profile/domain/entities/documents.dart';
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
  AppTypeResponse<List<MediaModel>> medias() {
    return datasource.medias();
  }
}
