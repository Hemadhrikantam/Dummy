import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/features/auth/data/models/current_user_model.dart';
import 'package:dummy/features/auth/data/models/presign_model.dart';
import 'package:dummy/features/auth/data/models/send_otp_model.dart';
import 'package:dummy/features/signup/data/models/enum_model.dart';

import '../../../../core/models/login_model.dart';
import '../../../../core/payload/payload.dart';
import '../../../../core/payload/register_account_payload.dart';
import '../../../../core/utils/type_def.dart';
import '../entities/current_user.dart';

abstract class AuthRepository {
  const AuthRepository();
  AppTypeResponse<CurrentUser> login({required LoginModel login});
  AppTypeResponse<SendOtpModel> sendOtp({required String phone});
  AppTypeResponse<EnumModel> enums();
  AppTypeResponse<CurrentUserModel> registerUser({
    required String phone,
    required String userType,
  });
  AppTypeResponse<LoginModel> currentUser();
  Future<bool?> logout();
  AppSuccessResponse registerAccount({
    required RegisterAccountPayload registerAccount,
  });

  AppSuccessResponse registerDevice({
    required String deviceId,
    required String pushToken,
    required String platform,
  });
  AppTypeResponse<PresignModel> uploadFile({
    required String path,
    bool public = true,
    required UploadType type,
  });

  AppSuccessResponse onboardNgo({required Payload payload});
  AppSuccessResponse onboardSeeker({required Payload payload});
  // AppTypeResponse<List<AwsSignedUrlModel>> generateSignedUrl(
  //     List<String> extensions);
  // AppSuccessResponse upload({required String fileName, required String url});
}
