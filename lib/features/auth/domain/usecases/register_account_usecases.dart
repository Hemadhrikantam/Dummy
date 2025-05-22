import '../../../../core/payload/register_account_payload.dart';
import '../../../../core/utils/type_def.dart';
import '../repositories/auth_repository.dart';

class RegisterAccountUsecases {
  RegisterAccountUsecases(this.authRepository);
  final AuthRepository authRepository;
  AppSuccessResponse call({required RegisterAccountPayload registerAccount}) {
    return authRepository.registerAccount(registerAccount: registerAccount);
  }
}
