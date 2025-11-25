part of 'wag_ai_bloc.dart';

@freezed
class WagAiState with _$WagAiState {
  factory WagAiState({@Default(Status.init) final Status initStatus}) =
      _WagAiState;
}
