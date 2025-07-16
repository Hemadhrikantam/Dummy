part of 'pet_form_bloc.dart';

@freezed
class PetFormEvent with _$PetFormEvent {
  const factory PetFormEvent.init() = _Init;
  const factory PetFormEvent.submit() = _Submit;
  const factory PetFormEvent.name(String value) = _Name;
  const factory PetFormEvent.petType(String value) = _PetType;
  const factory PetFormEvent.dob(DateTime value) = _Dob;
  const factory PetFormEvent.weight(int value) = _Weight;
  const factory PetFormEvent.breed(DropItem value) = _Breed;
  const factory PetFormEvent.addPersonalityTag(DropItem value) = _AddPersonalityTag;
  const factory PetFormEvent.RemovePersonalityTag(DropItem value) = _RemovePersonalityTag;
  const factory PetFormEvent.imagePath(String value) = _ImagePath;



}