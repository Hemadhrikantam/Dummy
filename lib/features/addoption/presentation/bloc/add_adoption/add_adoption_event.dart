part of 'add_adoption_bloc.dart';

@freezed
class AddAdoptionEvent with _$AddAdoptionEvent {
  const factory AddAdoptionEvent.started() = _Started;
  const factory AddAdoptionEvent.name(String name) = _Name;
  const factory AddAdoptionEvent.year(DropItem year) = _Year;
  const factory AddAdoptionEvent.month(DropItem value) = _Month;
  const factory AddAdoptionEvent.petType(DropItem petType) = _PetType;
  const factory AddAdoptionEvent.breed(DropItem petBreed) = _PetBreed;
  const factory AddAdoptionEvent.address(String address) = _Address;
  const factory AddAdoptionEvent.phone(String phone) = _Phone;
  const factory AddAdoptionEvent.email(String email) = _Email;
  const factory AddAdoptionEvent.description(String description) = _Description;
  const factory AddAdoptionEvent.image(String filePath) = _Image;
  const factory AddAdoptionEvent.submit() = _Submit;
  const factory AddAdoptionEvent.initialization() = _Initialization;
}