part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.init() = _Init;
  const factory AuthEvent.initialisation() = _Initialisation;
  const factory AuthEvent.email(String email) = _Email;
  const factory AuthEvent.password(String password) = _Password;
  const factory AuthEvent.confirmPassword(String confirmPassword) =
      _ConfirmPassword;
  const factory AuthEvent.name(String name) = _Name;
  const factory AuthEvent.login() = _Login;
  const factory AuthEvent.signup() = _Signup;
  const factory AuthEvent.checkUser() = _CheckUser;
  const factory AuthEvent.logout() = _Logout;
}
