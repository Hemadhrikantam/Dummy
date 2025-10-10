part of 'vaccination_form_bloc.dart';

@freezed
class VaccinationFormEvent with _$VaccinationFormEvent {
  const factory VaccinationFormEvent.init(String petId, int? id) = _Init;
  const factory VaccinationFormEvent.isGiven(bool value) = _IsGiven;
  const factory VaccinationFormEvent.vaccinationName(String value) =
      _VaccinationName;
  const factory VaccinationFormEvent.company(String value) = _Company;

  const factory VaccinationFormEvent.dateAdministered(String value) =
      _DateAdministered;
  const factory VaccinationFormEvent.dueDate(String value) = _DueDate;
  const factory VaccinationFormEvent.note(String value) = _Note;
  const factory VaccinationFormEvent.media(String value) = _Media;
  const factory VaccinationFormEvent.frequency(DropItem value) = _Frequency;
  const factory VaccinationFormEvent.reminderTimezone(DropItem value) =
      _ReminderTimezone;
  const factory VaccinationFormEvent.reminderBefore(DropItem value) =
      _ReminderBefore;
  const factory VaccinationFormEvent.reminderHour(DropItem value) =
      _ReminderHour;
  const factory VaccinationFormEvent.reminderMin(DropItem value) = _ReminderMin;
  const factory VaccinationFormEvent.reminderAmPm(DropItem value) =
      _ReminderAmPm;
  const factory VaccinationFormEvent.submit({int? id}) = _Submit;
}
