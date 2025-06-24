import 'package:dummy/features/auth/data/models/current_user_model.dart';
import 'package:dummy/features/auth/data/models/send_otp_model.dart';

import '../../../../core/models/login_model.dart';
import '../../../../core/payload/register_account_payload.dart';
import '../../../../core/utils/type_def.dart';
import '../entities/current_user.dart';

abstract class AuthRepository {
  const AuthRepository();
  AppTypeResponse<CurrentUser> login({required LoginModel login});
    AppTypeResponse<SendOtpModel>  sendOtp({required String phone});
     AppTypeResponse<CurrentUserModel> registerUser({required String phone, required String userType});
  AppTypeResponse<CurrentUser> currentUser();
  Future<bool?> logout();
  AppSuccessResponse registerAccount({
    required RegisterAccountPayload registerAccount,
  });

  // AppTypeResponse<List<AwsSignedUrlModel>> generateSignedUrl(
  //     List<String> extensions);
  // AppSuccessResponse upload({required String fileName, required String url});
}
