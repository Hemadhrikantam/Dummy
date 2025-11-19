part of 'vet_near_me_bloc.dart';

@freezed
class VetNearMeEvent with _$VetNearMeEvent {
  const factory VetNearMeEvent.init() = _Init;
  const factory VetNearMeEvent.loadClinic() = _LoadClinic;
  const factory VetNearMeEvent.loadStore() = _LoadStore;
}
