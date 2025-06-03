import 'package:formz/formz.dart';

enum PasswordValidationError {
  empty,
  tooShort,
  noUppercase,
  noLowercase,
  noSpecialChar,
}

enum ConfirmPasswordValidationError { empty, mismatch }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  static final _uppercaseRegex = RegExp(r'[A-Z]');
  static final _lowercaseRegex = RegExp(r'[a-z]');
  static final _specialCharRegex = RegExp(
    r'[!@#\$&*~^%()_+\-=\[\]{};:\\|,.<>\/?]',
  );

  @override
  PasswordValidationError? validator(String? value) {
    if (value?.isEmpty ?? true) return PasswordValidationError.empty;
    if (value!.length < 8) return PasswordValidationError.tooShort;
    if (!_uppercaseRegex.hasMatch(value)) {
      return PasswordValidationError.noUppercase;
    }
    if (!_lowercaseRegex.hasMatch(value)) {
      return PasswordValidationError.noLowercase;
    }
    if (!_specialCharRegex.hasMatch(value)) {
      return PasswordValidationError.noSpecialChar;
    }
    return null;
  }
}

// ConfirmPassword validation class
// class ConfirmPassword
//     extends FormzInput<String, ConfirmPasswordValidationError> {
//   const ConfirmPassword.dirty({required this.password, String value = ''})
//     : super.dirty(value);

//   const ConfirmPassword.pure({this.password = ''}) : super.pure('');
//   final String password;

//   @override
//   ConfirmPasswordValidationError? validator(String? value) {
//     if (value?.isEmpty == true) {
//       return ConfirmPasswordValidationError.empty;
//     }
//     if (value != password) {
//       return ConfirmPasswordValidationError.mismatch;
//     }
//     return null;
//   }
// }
