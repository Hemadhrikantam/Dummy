import '../../../../core/models/login_model.dart';
import '../../../../core/payload/register_account_payload.dart';
import '../../../../core/utils/type_def.dart';
import '../models/current_user_model.dart';

abstract class AuthDatasource {
  const AuthDatasource();
  AppTypeResponse<CurrentUserModel> login({required LoginModel login});
  AppTypeResponse<CurrentUserModel> currentUser();
  AppSuccessResponse registerAccount({
    required RegisterAccountPayload registerAccount,
  });
  Future<bool?> logout();

  // AppTypeResponse<List<AwsSignedUrlModel>> generateSignedUrl(
  //     List<String> extensions);
  // AppSuccessResponse upload({required String fileName, required String url});
}
