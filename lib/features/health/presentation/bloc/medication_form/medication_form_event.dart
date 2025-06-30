part of 'medication_form_bloc.dart';


@freezed
class MedicationFormEvent with _$MedicationFormEvent {
  const factory MedicationFormEvent.init(int petId) = _Init;
  const factory MedicationFormEvent.reminder(bool value) = _Reminder;
  const factory MedicationFormEvent.tabletName(String value) = _TabletName;
  const factory MedicationFormEvent.company(String value) = _Company;
  const factory MedicationFormEvent.dosage(String value) = _Dosage;
  const factory MedicationFormEvent.dosageUnit(DropItem value) = _DosageUnit;

  const factory MedicationFormEvent.morningTimeHour(DropItem value) = _MorningTimeHour;
  const factory MedicationFormEvent.morningTimeMin(DropItem value) = _MorningTimeMin;

  const factory MedicationFormEvent.afternoonTimeHour(DropItem value) = _AfternoonTimeHour;
  const factory MedicationFormEvent.afternoonTimeMin(DropItem value) = _AfternoonTimeMin;

  const factory MedicationFormEvent.nightTimeHour(DropItem value) = _NightTimeHour;
  const factory MedicationFormEvent.nightTimeMin(DropItem value) = _NightTimeMin;

  const factory MedicationFormEvent.morningTimeEnable(bool value) = _MorningTimeEnable;
  const factory MedicationFormEvent.nightTimeEnable(bool value) = _NightTimeEnable;
  const factory MedicationFormEvent.afternoonTimeEnable(bool value) = _AfternoonTimeEnable;


  const factory MedicationFormEvent.startDate(String value) = _StartDate;
  const factory MedicationFormEvent.endDate(String value) = _EndDate;
  const factory MedicationFormEvent.note(String value) = _Note;
  const factory MedicationFormEvent.media(String value) = _Media;
  const factory MedicationFormEvent.frequency(DropItem value) = _Frequency;
  const factory MedicationFormEvent.submit() = _Submit;
}