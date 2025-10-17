import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import '../repositories/auth_repository.dart';

class NgoRegistrationUsecases {
  NgoRegistrationUsecases(this._repository);
  final AuthRepository _repository;

  AppSuccessResponse call({required Payload payload}) {
    return _repository.onboardNgo(payload: payload);
  }
}