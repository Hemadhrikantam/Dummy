part of 'vaccination_log_form_bloc.dart';

@freezed
class VaccinationLogFormEvent with _$VaccinationLogFormEvent {
  const factory VaccinationLogFormEvent.init({
    required String vaccinationId,
    bool? check,
    DateTime? date,
    String? notes,
  }) = _Init;
  const factory VaccinationLogFormEvent.isGiven(bool value) = _IsGiven;
  const factory VaccinationLogFormEvent.notesChanged(String value) = _NotesChanged;
  const factory VaccinationLogFormEvent.dateChanged(DateTime value) = _DateChanged;
  const factory VaccinationLogFormEvent.submit() = _Submit;
}