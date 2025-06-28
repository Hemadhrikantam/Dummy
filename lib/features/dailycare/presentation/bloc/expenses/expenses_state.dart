part of 'expenses_bloc.dart';

@freezed
abstract class ExpensesState with _$ExpensesState {
  const factory ExpensesState({
    @Default(Status.init) final Status expensesStatus,
    @Default([]) final List<PetExpense> expenses,
  }) = _ExpensesState;
}
