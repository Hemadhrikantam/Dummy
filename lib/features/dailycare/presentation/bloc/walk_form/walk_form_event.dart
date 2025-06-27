part of 'walk_form_bloc.dart';

@freezed
class WalkFormEvent with _$WalkFormEvent {
  const factory WalkFormEvent.init() = _Init;
  const factory WalkFormEvent.date(String value) = _Date;
  const factory WalkFormEvent.duration(DropItem value) = _Duration;
  const factory WalkFormEvent.location(String value) = _Location;
  const factory WalkFormEvent.notes(String value) = _Notes;
  const factory WalkFormEvent.media(String value) = _Media;
  const factory WalkFormEvent.submit() = _Submit;
}