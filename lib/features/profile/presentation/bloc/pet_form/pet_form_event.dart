part of 'pet_form_bloc.dart';

@freezed
class PetFormEvent with _$PetFormEvent {
  const factory PetFormEvent.init(int? id) = _Init;
  const factory PetFormEvent.submit(int? id) = _Submit;
  const factory PetFormEvent.petName(String name) = _PetName;
  const factory PetFormEvent.petImage(String value) = _PetImage;
  const factory PetFormEvent.petType(PetType value) = _PetType;
  const factory PetFormEvent.dob(String dob) = _DOB;
  const factory PetFormEvent.breed(DropItem breed) = _Breed;
  const factory PetFormEvent.weightUnit(String weightUnit) = _WeightUnit;
  const factory PetFormEvent.weight(String weight) = _Weight;
  const factory PetFormEvent.addTag(List<DropItem> value) = _AddTag;
  const factory PetFormEvent.removeTag(int index) = _RemoveTag;
  const factory PetFormEvent.petGender(DropItem petGender) = _PetGender;
}
