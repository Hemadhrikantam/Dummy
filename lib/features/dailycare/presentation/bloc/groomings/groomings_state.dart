part of 'groomings_bloc.dart';

@freezed
abstract class GroomingsState with _$GroomingsState {
  const factory GroomingsState({
    @Default(Status.init) final Status groomingsStatus,
    @Default([]) final List<PetGrooming> groomings,
  }) = _GroomingsState;
}
