import 'package:formz/formz.dart';

import '../../utils/text_field_validation.dart';

class Email extends FormzInput<String?, String?> {
  const Email.pure() : super.pure('');
  const Email.dirty({String value = ''}) : super.dirty(value);

  @override
  String? validator(String? value) {
    return TextFieldValidation.email(value: value ??'');
  }
}
