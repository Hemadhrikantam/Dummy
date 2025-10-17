import 'package:formz/formz.dart';

import '../../utils/text_field_validation.dart';

class PinCode extends FormzInput<String?, String?> {
  const PinCode.pure() : super.pure('');
  const PinCode.dirty({String value = ''}) : super.dirty(value);

  @override
  String? validator(String? value) {
    return TextFieldValidation.pinCode(value ?? '');
  }
}