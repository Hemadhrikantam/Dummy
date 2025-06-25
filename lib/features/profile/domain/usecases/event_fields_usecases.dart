import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';

class EventFieldsUsecases {
  EventFieldsUsecases(this.repository);
  final ProfileRepository repository;

  AppTypeResponse<List<DropItem>> call() {
    return repository.eventFields();
  }
}
