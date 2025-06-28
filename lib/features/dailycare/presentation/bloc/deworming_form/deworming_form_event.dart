part of 'deworming_form_bloc.dart';


@freezed
class DewormingFormEvent with _$DewormingFormEvent {
  const factory DewormingFormEvent.init(int petId) = _Init;
  const factory DewormingFormEvent.date(String value) = _Date;
  const factory DewormingFormEvent.productName(String value) = _ProductName;
  const factory DewormingFormEvent.dueDate(String value) = _DueDate;
  const factory DewormingFormEvent.reminderTime(String value) = _ReminderTime;
  const factory DewormingFormEvent.notes(String value) = _Notes;
  const factory DewormingFormEvent.media(String value) = _Media;
  const factory DewormingFormEvent.frequency(DropItem value) = _Frequency;
  const factory DewormingFormEvent.reminderTimezone(DropItem value) = _ReminderTimezone;
  const factory DewormingFormEvent.reminderBefore(DropItem value) = _ReminderBefore;
  const factory DewormingFormEvent.submit() = _Submit;
}