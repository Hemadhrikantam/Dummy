import '../../../../core/models/login_model.dart';
import '../../../../core/payload/register_account_payload.dart';
import '../../../../core/utils/type_def.dart';
import '../entities/current_user.dart';

abstract class AuthRepository {
  const AuthRepository();
  AppTypeResponse<CurrentUser> login({required LoginModel login});
  AppTypeResponse<CurrentUser> currentUser();
  Future<bool?> logout();
  AppSuccessResponse registerAccount({
    required RegisterAccountPayload registerAccount,
  });

  // AppTypeResponse<List<AwsSignedUrlModel>> generateSignedUrl(
  //     List<String> extensions);
  // AppSuccessResponse upload({required String fileName, required String url});
}
