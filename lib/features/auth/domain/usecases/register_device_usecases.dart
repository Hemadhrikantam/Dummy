import '../../../../core/utils/type_def.dart';
import '../repositories/auth_repository.dart';

class RegisterDeviceUsecases {
  RegisterDeviceUsecases(this.authRepository);
  final AuthRepository authRepository;

  AppSuccessResponse call({
    required String deviceId,
    required String pushToken,
    required String platform,
  }) {
    return authRepository.registerDevice(
      deviceId: deviceId,
      pushToken: pushToken,
      platform: platform,
    );
  }
}