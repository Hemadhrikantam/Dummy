import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/ngo/domain/repositories/ngo_repository.dart';

class DeletePetUsecase {
  DeletePetUsecase(this.repository);
  final NgoRepository repository;

  AppSuccessResponse call({required String id}) {
    return repository.deletePet(id: id);
  }
}
