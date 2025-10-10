part of 'document_form_bloc.dart';

@freezed
class DocumentFormEvent with _$DocumentFormEvent {
  const factory DocumentFormEvent.init(String petId, int? id) = _Init;
  const factory DocumentFormEvent.submit(int? id) = _Submit;
  const factory DocumentFormEvent.url(String value) = _Url;
}
