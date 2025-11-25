part of 'wag_ai_bloc.dart';

@freezed
class WagAiEvent with _$WagAiEvent {
  const factory WagAiEvent.initialization() = _Initialization;
  const factory WagAiEvent.chat() = _Chat;
  const factory WagAiEvent.message(String value) = _Message;
  const factory WagAiEvent.images(List<String> images) = _Images;
}
