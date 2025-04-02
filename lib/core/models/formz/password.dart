import 'package:formz/formz.dart';

enum PasswordValidationError { empty, tooShort }
enum ConfirmPasswordValidationError { empty, mismatch }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String? value) {
    if (value?.isEmpty == true) {
      return PasswordValidationError.empty;
    }
    if (value!.length < 6) {
      return PasswordValidationError.tooShort;
    }
    return null;
  }
}

// ConfirmPassword validation class
class ConfirmPassword extends FormzInput<String, ConfirmPasswordValidationError> {
  const ConfirmPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);

  const ConfirmPassword.pure({this.password = ''}) : super.pure('');
  final String password;

  @override
  ConfirmPasswordValidationError? validator(String? value) {
    if (value?.isEmpty == true) {
      return ConfirmPasswordValidationError.empty;
    }
    if (value != password) {
      return ConfirmPasswordValidationError.mismatch;
    }
    return null;
  }
}
