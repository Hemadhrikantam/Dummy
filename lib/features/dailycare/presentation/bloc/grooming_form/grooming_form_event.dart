part of 'grooming_form_bloc.dart';

@freezed
class GroomingFormEvent with _$GroomingFormEvent {
  const factory GroomingFormEvent.init(int petId) = _Init;
  const factory GroomingFormEvent.date(String value) = _Date;
  const factory GroomingFormEvent.groomingType(String value) = _GroomingType;
  const factory GroomingFormEvent.notes(String value) = _Notes;
  const factory GroomingFormEvent.media(String value) = _Media;
  const factory GroomingFormEvent.submit() = _Submit;
}