import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/data/models/documents_model.dart';

abstract class ProfileDatasource {
  ProfileDatasource();
  AppTypeResponse<List<DocumentsModel>> documents();
  
  AppTypeResponse<List<DropItemModel>> eventFields();
}
