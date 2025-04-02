import 'package:formz/formz.dart';
import '../../utils/text_field_validation.dart';

class NotEmpty extends FormzInput<String, String?> {
  const NotEmpty.pure() : super.pure('');
  const NotEmpty.dirty({String value = ''}) : super.dirty(value);
  @override
  String? validator(value) {
    return TextFieldValidation.notEmpty(value: value);
  }
}

class NotNull extends FormzInput<double?, String?> {
  const NotNull.pure() : super.pure(null);
  const NotNull.dirty({double? value}) : super.dirty(value);

  @override
  String? validator(value) {
    return TextFieldValidation.notNull(value: value);
  }
}

class TypeNotNull<T> extends FormzInput<T?, String?> {
  const TypeNotNull.pure() : super.pure(null);
  const TypeNotNull.dirty({T? value}) : super.dirty(value);
  @override
  String? validator(value) {
    if (value == null) {
      return '*';
    }
    return null;
  }
}

// class ListNotEmpty extends FormzInput<List<int>, String> {
//   ListNotEmpty.pure() : super.pure([]);
//   const ListNotEmpty.dirty([super.value = const []]) : super.dirty();

//   @override
//   String? validator(List<int> value) {
//     return value.isEmpty ? currentContext.l10n.listCannotBeEmpty : null;
//   }
// }
