import 'package:dummy/core/utils/type_def.dart' show AppTypeResponse;
import 'package:dummy/features/profile/domain/entities/timeline.dart';
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';

class ListTimelineUsecases {
  ListTimelineUsecases(this.repository);
  final ProfileRepository repository;

  AppTypeResponse<List<Timeline>> call() {
    return repository.timelines();
  }
}