part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.initialization() = _Initialization;
  const factory RegisterEvent.petDetails() = _PetDetails;
  const factory RegisterEvent.petName(String name) = _PetName;
  const factory RegisterEvent.petType(PetType value) = _PetType;
  const factory RegisterEvent.dob(String dob) = _DOB;
  const factory RegisterEvent.breed(DropItem breed) = _Breed;
  const factory RegisterEvent.weightUnit(String weightUnit) = _WeightUnit;
  const factory RegisterEvent.weight(String weight) = _Weight;
  const factory RegisterEvent.addTag(List<DropItem> value) = _AddTag;
  const factory RegisterEvent.removeTag(int index) = _RemoveTag;
}
