import '../../../../core/utils/type_def.dart';
import '../repositories/auth_repository.dart';

class SendOtpUsecases {
  SendOtpUsecases(this.authRepository);
  final AuthRepository authRepository;
  AppSuccessResponse call({required String phone}) {
    return authRepository.sendOtp(phone: phone);
  }
}
