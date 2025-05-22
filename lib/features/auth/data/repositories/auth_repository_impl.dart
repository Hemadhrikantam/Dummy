import '../../../../core/models/login_model.dart';
import '../../../../core/payload/register_account_payload.dart';
import '../../../../core/utils/type_def.dart';
import '../../domain/entities/current_user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_datasource.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this._authDatasource);
  final AuthDatasource _authDatasource;
  @override
  AppTypeResponse<CurrentUser> login({required LoginModel login}) {
    return _authDatasource.login(login: login);
  }

  @override
  AppTypeResponse<CurrentUser> currentUser() {
    return _authDatasource.currentUser();
  }

  @override
  Future<bool?> logout() {
    return _authDatasource.logout();
  }

  @override
  AppSuccessResponse registerAccount({
    required RegisterAccountPayload registerAccount,
  }) {
    return _authDatasource.registerAccount(registerAccount: registerAccount);
  }

  // @override
  // AppTypeResponse<List<AwsSignedUrlModel>> generateSignedUrl(
  //     List<String> extensions) {
  //   return _authDatasource.generateSignedUrl(extensions);
  // }

  // @override
  // AppSuccessResponse upload({required String fileName, required String url}) {
  //   return _authDatasource.upload(fileName: fileName, url: url);
  // }
}
