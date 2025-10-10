part of 'expense_form_bloc.dart';

@freezed
class ExpenseFormEvent with _$ExpenseFormEvent {
  const factory ExpenseFormEvent.init(String petId) = _Init;
  const factory ExpenseFormEvent.date(String value) = _Date;
  const factory ExpenseFormEvent.category(String value) = _Category;
  const factory ExpenseFormEvent.notes(String value) = _Notes;
  const factory ExpenseFormEvent.media(String value) = _Media;
  const factory ExpenseFormEvent.submit() = _Submit;
}
