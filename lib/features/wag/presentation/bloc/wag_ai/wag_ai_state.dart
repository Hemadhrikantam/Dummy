part of 'wag_ai_bloc.dart';

@freezed
class WagAiState with _$WagAiState {
  factory WagAiState({
    @Default(Status.init) final Status initStatus,
    @Default(null) final Stream<String>? stream,
    @Default(NotEmpty.pure()) final NotEmpty message,
    @Default([]) final List<String> images,
    @Default([]) final List<AiMessage> history,
    @Default(null) final AiUsage? usage,
  }) = _WagAiState;
}
