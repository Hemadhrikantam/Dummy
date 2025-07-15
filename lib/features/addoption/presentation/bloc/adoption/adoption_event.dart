part of 'adoption_bloc.dart';

@freezed
class AdoptionEvent with _$AdoptionEvent {
  const factory AdoptionEvent.adoptions() = _Adoptions;
  const factory AdoptionEvent.allPets() = _AllPets;
  
}