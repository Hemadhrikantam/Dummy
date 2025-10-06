part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(NotEmpty.pure()) final NotEmpty email,
    @Default(Password.pure()) final Password password,
    @Default(NotEmpty.pure()) final NotEmpty name,
    @Default(NotEmpty.pure()) final NotEmpty verificationId,
    @Default(MobileNo.pure()) final MobileNo phone,
    @Default(OTP.pure()) final OTP otp,
    @Default(Password.pure()) final Password confirmPassword,
    @Default(null) final CurrentUser? user,
    @Default(Status.init) final Status loginStatus,
    @Default(Status.init) final Status sendOtpStatus,
    @Default(false) final bool loginValidation,
    @Default(Status.init) final Status signupStatus,
    @Default(false) final bool signupValidation,
    @Default(Yourself.pet_parent) Yourself yourself,
    @Default(null) EnumModel? enums,
  }) = _AuthState;
}
