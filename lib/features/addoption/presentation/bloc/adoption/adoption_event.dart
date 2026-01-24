part of 'adoption_bloc.dart';

@freezed
class AdoptionEvent with _$AdoptionEvent {
  const factory AdoptionEvent.adoptions() = _Adoptions;
  const factory AdoptionEvent.allPets() = _AllPets;
  const factory AdoptionEvent.markStatus({
    required String id,
    required String status,
  }) = _MarkStatus;
  const factory AdoptionEvent.deletePet({
    required String id,
  }) = _DeletePet;
  
}