import 'package:dummy/core/utils/type_def.dart' show AppTypeResponse;
import 'package:dummy/features/profile/domain/entities/media.dart';
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';

class MediasUsecases {
  MediasUsecases(this.repository);
  final ProfileRepository repository;
  AppTypeResponse<List<Media>> call() {
    return repository.medias();
  }
}
