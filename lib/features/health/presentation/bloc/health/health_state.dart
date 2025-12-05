part of 'health_bloc.dart';

@freezed
class HealthState with _$HealthState {
  const factory HealthState({
    @Default(0) int pageIndex,
    @Default(null) AiInsight? aiInsights,
  }) = _HealthState;
}
