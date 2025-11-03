part of 'vaccination_log_form_bloc.dart';

@freezed
class VaccinationLogFormState with _$VaccinationLogFormState {
  const factory VaccinationLogFormState({
    String? vaccinationId,
    @Default(true) bool check,
    @Default(NotEmpty.pure()) NotEmpty notes,
    DateTime? date,
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
