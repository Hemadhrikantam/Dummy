import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/ngo/domain/repositories/ngo_repository.dart';

class UpdateNgoProfileUsecase {
  UpdateNgoProfileUsecase(this.repository);
  final NgoRepository repository;

  AppSuccessResponse call({required Payload payload}) {
    return repository.updateProfile(payload: payload);
  }
}