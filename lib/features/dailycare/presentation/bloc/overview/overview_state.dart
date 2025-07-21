part of 'overview_bloc.dart';

@freezed
abstract class OverviewState with _$OverviewState {
  const factory OverviewState({
    @Default(Status.init) final Status initStatus,
    @Default(null) final Overview? overview,

    
  }) = _OverviewState;
}
