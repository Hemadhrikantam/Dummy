import 'package:dummy/features/auth/data/models/send_otp_model.dart';

import '../../../../core/utils/type_def.dart';
import '../repositories/auth_repository.dart';

class SendOtpUsecases {
  SendOtpUsecases(this.authRepository);
  final AuthRepository authRepository;
  AppTypeResponse<SendOtpModel> call({required String phone}) {
    return authRepository.sendOtp(phone: phone);
  }
}
