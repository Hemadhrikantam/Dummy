part of 'vaccination_log_form_bloc.dart';

@freezed
class VaccinationLogFormState with _$VaccinationLogFormState {
  const factory VaccinationLogFormState({
    String? vaccinationId,
    @Default(false) bool check,
    @Default(true) bool isFinalDoseCompleted,
    @Default(NotEmpty.pure()) NotEmpty notes,
    @Default(null) DateTime? date,
    @Default(null) DateTime? nextDueDate,
    @Default(Status.init) Status submitStatus,
    String? errorMessage,
    @Default(false) bool validation,
  }) = _VaccinationLogFormState;
}

extension VaccinationLogFormValidation on VaccinationLogFormState {
  bool get validationX {
    return Formz.validate([notes]);
  }
}
