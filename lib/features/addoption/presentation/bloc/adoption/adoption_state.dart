part of 'adoption_bloc.dart';

@freezed
abstract class AdoptionState with _$AdoptionState {
  const factory AdoptionState({
    @Default(Status.init) Status adoptionStatus,
    @Default([]) List<Listing> adoptions,
    @Default([]) List<Listing> allPets,
  }) = _AdoptionState;
}
