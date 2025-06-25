import 'package:dummy/core/payload/payload.dart';

import '../../../../core/models/drop_item.dart';
import '../../../../core/utils/type_def.dart';

abstract class SignupDatasource {
  const SignupDatasource();
  AppTypeResponse<List<DropItemModel>> catBreeds();
  AppTypeResponse<List<DropItemModel>> dogBreeds();
  AppTypeResponse<List<DropItemModel>> personalityTags();
  AppSuccessResponse createPet({required Payload payload});
}
