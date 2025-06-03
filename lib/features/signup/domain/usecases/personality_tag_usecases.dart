import '../../../../core/models/drop_item.dart';
import '../../../../core/utils/type_def.dart';
import '../repositories/signup_repository.dart';

class PersonalityTagUsecases {
  PersonalityTagUsecases(this.repository);
  final SignupRepository repository;
  AppTypeResponse<List<DropItem>> call() {
    return repository.personalityTags();
  }
}
