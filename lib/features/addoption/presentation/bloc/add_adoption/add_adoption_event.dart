part of 'add_adoption_bloc.dart';

@freezed
class AddAdoptionEvent with _$AddAdoptionEvent {
  const factory AddAdoptionEvent.started() = _Started;
  const factory AddAdoptionEvent.name(String name) = _Name;
  const factory AddAdoptionEvent.dob(String dob) = _DOB;
  const factory AddAdoptionEvent.petGender(DropItem petGender) = _PetGender;
  const factory AddAdoptionEvent.petType(PetType petType) = _PetType;
  const factory AddAdoptionEvent.breed(DropStringItem petBreed) = _PetBreed;
  const factory AddAdoptionEvent.address(String address) = _Address;
  const factory AddAdoptionEvent.phone(String phone) = _Phone;
  const factory AddAdoptionEvent.email(String email) = _Email;
  const factory AddAdoptionEvent.description(String description) = _Description;
  const factory AddAdoptionEvent.image(String filePath) = _Image;
  const factory AddAdoptionEvent.submit({String? id, String? petId}) = _Submit;
  const factory AddAdoptionEvent.initialization({String? id}) = _Initialization;
}
