part of 'vet_near_me_bloc.dart';

@freezed
abstract class VetNearMeState with _$VetNearMeState {
  const factory VetNearMeState({
    @Default(Status.init) final Status initStatus,
    @Default([]) final List<Clinic> clinics,
  }) = _VetNearMeState;
}
