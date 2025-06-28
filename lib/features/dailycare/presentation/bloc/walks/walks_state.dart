part of 'walks_bloc.dart';

@freezed
abstract class WalksState with _$WalksState {
  const factory WalksState({
    @Default(Status.init) final Status walksStatus,
    @Default([]) final List<PetWalk> walks,
  }) = _WalksState;
}
