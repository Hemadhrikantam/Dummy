import 'package:formz/formz.dart';

import '../../utils/text_field_validation.dart';

class OTP extends FormzInput<String?,String?> {
  const OTP.pure() : super.pure('');
  const OTP.dirty({String value = ''}) : super.dirty(value);

  @override
  String? validator(String? value) {
    return TextFieldValidation.otp(value: value ??'');
  }
}
