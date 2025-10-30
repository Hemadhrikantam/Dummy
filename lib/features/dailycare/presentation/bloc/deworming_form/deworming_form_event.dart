part of 'deworming_form_bloc.dart';

@freezed
class DewormingFormEvent with _$DewormingFormEvent {
  const factory DewormingFormEvent.init(String petId) = _Init;
  const factory DewormingFormEvent.date(String value) = _Date;
  const factory DewormingFormEvent.productName(String value) = _ProductName;
  const factory DewormingFormEvent.dueDate(String value) = _DueDate;
  const factory DewormingFormEvent.notes(String value) = _Notes;
  const factory DewormingFormEvent.media(String value) = _Media;
  const factory DewormingFormEvent.frequency(DropStringItem value) = _Frequency;
  const factory DewormingFormEvent.reminderTimezone(DropItem value) =
      _ReminderTimezone;
  const factory DewormingFormEvent.reminderBefore(DropItem value) =
      _ReminderBefore;
  const factory DewormingFormEvent.reminderHour(DropItem value) = _ReminderHour;
  const factory DewormingFormEvent.reminderMin(DropItem value) = _ReminderMin;
  const factory DewormingFormEvent.reminderAmPm(DropItem value) = _ReminderAmPm;
  const factory DewormingFormEvent.submit() = _Submit;
}
