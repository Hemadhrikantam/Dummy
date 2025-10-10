part of 'expense_form_bloc.dart';

@freezed
abstract class ExpenseFormState with _$ExpenseFormState {
  const factory ExpenseFormState({
    @Default(Status.init) Status submitStatus,
    @Default(NotEmpty.pure()) NotEmpty date,
    @Default(NotEmpty.pure()) NotEmpty category,
    @Default(NotEmpty.pure()) NotEmpty notes,
    @Default(NotEmpty.pure()) NotEmpty media,
    @Default(false) bool validation,
    @Default('') String petId,
  }) = _ExpenseFormState;
}

extension ExpenseFormValidation on ExpenseFormState {
  bool get validationX {
    return Formz.validate([date, category, notes, media]);
  }
}
