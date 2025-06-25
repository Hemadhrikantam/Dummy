import 'package:dummy/core/payload/payload.dart';
import '../../../../core/utils/type_def.dart';
import '../repositories/signup_repository.dart';

class CreatePetUsecases {
  CreatePetUsecases(this.repository);
  final SignupRepository repository;
  AppSuccessResponse call({required Payload payload}) {
    return repository.createPet(payload: payload);
  }
}
