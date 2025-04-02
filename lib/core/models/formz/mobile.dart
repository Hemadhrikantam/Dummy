import 'package:formz/formz.dart';

import '../../utils/text_field_validation.dart';

class MobileNo extends FormzInput<String?, String?> {
  const MobileNo.pure() : super.pure('');
  const MobileNo.dirty({String value = ''}) : super.dirty(value);

  @override
  String? validator(String? value) {
    return TextFieldValidation.mobile(value: value ??'');
  }
}
