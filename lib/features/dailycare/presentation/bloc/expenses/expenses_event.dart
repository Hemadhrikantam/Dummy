part of 'expenses_bloc.dart';

@freezed
class ExpensesEvent with _$ExpensesEvent {
  const factory ExpensesEvent.init() = _Init;
  const factory ExpensesEvent.expenses(DateTime? date) = _Expenses;
}
