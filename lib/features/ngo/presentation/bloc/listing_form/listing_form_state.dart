part of 'listing_form_bloc.dart';

@freezed
abstract class ListingFormState with _$ListingFormState {
  const factory ListingFormState({
    @Default(Status.init) Status addListingStatus,
    @Default(Status.init) Status submitStatus,
    @Default(NotEmpty.pure()) NotEmpty name,
    @Default(PetType.Cat) PetType petType,
    @Default(DropdownStringValue.pure()) DropdownStringValue breed,
    @Default(NotEmpty.pure()) NotEmpty address,
    @Default(MobileNo.pure()) MobileNo phone,
    @Default(Email.pure()) Email email,
    @Default(NotEmpty.pure()) NotEmpty description,
    @Default(NotEmpty.pure()) NotEmpty url,
    @Default(NotEmpty.pure()) final NotEmpty dob,
    @Default(DropdownValue.pure()) final DropdownValue gender,
    @Default([]) List<DropStringItem> catBreeds,
    @Default([]) List<DropStringItem> dogBreeds,
    @Default(false) bool adoptionValidation,
  }) = _ListingFormState;
}

extension PetFormValidation on ListingFormState {
  bool get validationX {
    return Formz.validate([
      name,
      breed,
      address,
      phone,
      email,
      description,
      url,
      dob,
      gender,
    ]);
  }
}
