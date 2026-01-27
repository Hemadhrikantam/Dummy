part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.initialization() = _Initialization;
  const factory RegisterEvent.init() = _Init;
  const factory RegisterEvent.petDetails() = _PetDetails;
  const factory RegisterEvent.petName(String name) = _PetName;
  const factory RegisterEvent.petImage(String value) = _PetImage;
  const factory RegisterEvent.petType(PetType value) = _PetType;
  const factory RegisterEvent.dob(String dob) = _DOB;
  const factory RegisterEvent.breed(DropStringItem breed) = _Breed;
  const factory RegisterEvent.weightUnit(String weightUnit) = _WeightUnit;
  const factory RegisterEvent.weight(String weight) = _Weight;
  const factory RegisterEvent.addTag(List<DropStringItem> value) = _AddTag;
  const factory RegisterEvent.removeTag(int index) = _RemoveTag;
  const factory RegisterEvent.createPet() = _CreatePet;
  const factory RegisterEvent.petGender(DropItem petGender) = _PetGender;
  const factory RegisterEvent.setLocation({
    required double latitude,
    required double longitude,
  }) = _SetLocation;
}
