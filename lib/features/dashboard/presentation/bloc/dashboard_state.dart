part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(Status.init) final Status initStatus,
    @Default('') final String petName,
    @Default('') final String petImage,
    @Default(null) final DashboardPetDetails? selectedPet,
    @Default(0) final int selectedPetId,
    @Default(0) final int pageIndex,
    @Default([]) final List<DashboardPetDetails> dashboardPetDetails,
  }) = _DashboardState;
}
