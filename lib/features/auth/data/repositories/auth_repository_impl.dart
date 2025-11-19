import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/features/auth/data/models/current_user_model.dart';
import 'package:dummy/features/auth/data/models/presign_model.dart';
import 'package:dummy/features/auth/data/models/send_otp_model.dart';
import 'package:dummy/features/signup/data/models/enum_model.dart';

import '../../../../core/models/login_model.dart';
import '../../../../core/payload/register_account_payload.dart';
import '../../../../core/payload/payload.dart';
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
  AppTypeResponse<LoginModel> currentUser() {
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

  @override
  AppTypeResponse<SendOtpModel> sendOtp({required String phone}) {
    return _authDatasource.sendOtp(phone: phone);
  }

  @override
  AppTypeResponse<CurrentUserModel> registerUser({
    required String phone,
    required String userType,
  }) {
    return _authDatasource.registerUser(phone: phone, userType: userType);
  }

  @override
  AppTypeResponse<EnumModel> enums() {
    return _authDatasource.enums();
  }

  @override
  AppSuccessResponse registerDevice({
    required String deviceId,
    required String pushToken,
    required String platform,
  }) {
    return _authDatasource.registerDevice(
      deviceId: deviceId,
      pushToken: pushToken,
      platform: platform,
    );
  }

  @override
  AppTypeResponse<PresignModel> uploadFile({
    required String path,
    bool public = true,
    required UploadType type,
  }) {
    return _authDatasource.uploadFile(path: path, type: type, public: public);
  }

  @override
  AppSuccessResponse onboardNgo({required Payload payload}) {
    return _authDatasource.onboardNgo(payload: payload);
  }

  @override
  AppSuccessResponse onboardSeeker({required Payload payload}) {
    return _authDatasource.onboardSeeker(payload: payload);
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
