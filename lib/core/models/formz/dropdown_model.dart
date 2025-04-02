import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/utils/text_field_validation.dart';
import 'package:formz/formz.dart';

class DropdownValue extends FormzInput<DropItem?, String> {
  const DropdownValue.pure() : super.pure(null);
  const DropdownValue.dirty(DropItem value) : super.dirty(value);

  @override
  String? validator(DropItem? value) {
    return TextFieldValidation.dropDown(value?.value);
  }

  bool get others => value?.value.toLowerCase() == 'others';
}
