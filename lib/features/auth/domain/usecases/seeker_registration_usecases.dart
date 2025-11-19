import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import '../repositories/auth_repository.dart';

class SeekerRegistrationUsecases {
  SeekerRegistrationUsecases(this._repository);
  final AuthRepository _repository;

  AppSuccessResponse call({required Payload payload}) {
    return _repository.onboardSeeker(payload: payload);
  }
}