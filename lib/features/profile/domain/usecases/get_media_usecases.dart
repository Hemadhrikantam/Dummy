import 'package:dummy/core/utils/type_def.dart' show AppTypeResponse;
import 'package:dummy/features/profile/domain/entities/media.dart';
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';

class GetMediaUsecases {
  GetMediaUsecases(this.repository);
  final ProfileRepository repository;
  AppTypeResponse<Media> call({required String id}) {
    return repository.getMedia(id: id);
  }
}
