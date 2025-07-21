part of 'overview_bloc.dart';

@freezed
class OverviewEvent with _$OverviewEvent {
  const factory OverviewEvent.started() = _Started;
  const factory OverviewEvent.overview(int petId) = _Overview;
}