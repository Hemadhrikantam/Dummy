part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(Status.init) final Status initStatus,
    @Default([]) final List<DashboardPetDetails> dashboardPetDetails,
  }) = _DashboardState;
}
