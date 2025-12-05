part of 'health_bloc.dart';

@freezed
class HealthEvent with _$HealthEvent {
  const factory HealthEvent.init() = _Init;
  const factory HealthEvent.getAiInsights() = _GetAiInsights;
  const factory HealthEvent.changePageIndex(int index) = _ChangePageIndex;
}
