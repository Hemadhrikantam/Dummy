part of 'media_form_bloc.dart';

@freezed
class MediaFormEvent with _$MediaFormEvent {
  const factory MediaFormEvent.init(String petId, String? id) = _Init;
  const factory MediaFormEvent.submit(String? id) = _Submit;
  const factory MediaFormEvent.notes(String value) = _Notes;
  const factory MediaFormEvent.url(String value) = _Url;
  const factory MediaFormEvent.event(DropStringItem value) = _Event;
}
