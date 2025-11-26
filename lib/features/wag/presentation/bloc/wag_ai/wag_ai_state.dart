part of 'wag_ai_bloc.dart';

@freezed
class WagAiState with _$WagAiState {
  factory WagAiState({
    @Default(Status.init) final Status initStatus,
    @Default(Status.init) final Status sendChatStatus,
    @Default(null) final Stream<String>? stream,
    @Default('') final String streamResponse,
    @Default(NotEmpty.pure()) final NotEmpty message,
    @Default([]) final List<String> images,
    @Default([]) final List<AiMessage> history,
    @Default(null) final AiChatHistory? historydetails,
    @Default([]) final List<Message> responses,
    @Default(null) final AiUsage? usage,
    @Default(false) final bool isSSECOnnected,
    // Pagination state for history
    @Default(1) final int historyPage,
    @Default(15) final int historyLimit,
    @Default(true) final bool hasMoreHistory,
    @Default(Status.init) final Status historyStatus,
  }) = _WagAiState;
}
