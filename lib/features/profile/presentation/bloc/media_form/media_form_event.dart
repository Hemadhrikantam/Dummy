part of 'media_form_bloc.dart';

@freezed
class MediaFormEvent with _$MediaFormEvent {
  const factory MediaFormEvent.init(String petId, int? id) = _Init;
  const factory MediaFormEvent.submit(int? id) = _Submit;
  const factory MediaFormEvent.notes(String value) = _Notes;
  const factory MediaFormEvent.url(String value) = _Url;
  const factory MediaFormEvent.event(DropItem value) = _Event;
}
