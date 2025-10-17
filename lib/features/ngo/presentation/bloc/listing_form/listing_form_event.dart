part of 'listing_form_bloc.dart';

@freezed
class ListingFormEvent with _$ListingFormEvent {
  const factory ListingFormEvent.started() = _Started;
  const factory ListingFormEvent.name(String name) = _Name;
  const factory ListingFormEvent.dob(String dob) = _DOB;
  const factory ListingFormEvent.petGender(DropItem petGender) = _PetGender;
  const factory ListingFormEvent.petType(PetType petType) = _PetType;
  const factory ListingFormEvent.breed(DropStringItem petBreed) = _PetBreed;
  const factory ListingFormEvent.address(String address) = _Address;
  const factory ListingFormEvent.phone(String phone) = _Phone;
  const factory ListingFormEvent.email(String email) = _Email;
  const factory ListingFormEvent.description(String description) = _Description;
  const factory ListingFormEvent.image(String filePath) = _Image;
  const factory ListingFormEvent.submit({int? id}) = _Submit;
  const factory ListingFormEvent.initialization({int? id}) = _Initialization;
}
