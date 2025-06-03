import '../../../../core/models/drop_item.dart';
import '../../../../core/utils/type_def.dart';

abstract class SignupRepository {
  const SignupRepository();
  AppTypeResponse<List<DropItem>> catBreeds();
  AppTypeResponse<List<DropItem>> dogBreeds();
  AppTypeResponse<List<DropItem>> personalityTags();
}
