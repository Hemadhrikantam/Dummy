import 'package:dummy/core/utils/type_def.dart' show AppSuccessResponse;
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';

class DeleteMediaUsecases {
  DeleteMediaUsecases(this.repository);
  final ProfileRepository repository;
  AppSuccessResponse call({required String id}) {
    return repository.deleteMedia(id: id);
  }
}
