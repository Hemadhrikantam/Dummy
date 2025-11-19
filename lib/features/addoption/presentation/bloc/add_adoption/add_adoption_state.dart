part of 'add_adoption_bloc.dart';

@freezed
abstract class AddAdoptionState with _$AddAdoptionState {
  const factory AddAdoptionState({
    @Default(Status.init) Status addAdoptionStatus,
    @Default(Status.init) Status submitStatus,
    @Default(NotEmpty.pure()) NotEmpty name,
    @Default(PetType.Cat) PetType petType,
    @Default(DropdownStringValue.pure()) DropdownStringValue breed,
    @Default([]) List<DropStringItem> catBreeds,
    @Default([]) List<DropStringItem> dogBreeds,
    @Default(NotEmpty.pure()) NotEmpty address,
    @Default(MobileNo.pure()) MobileNo phone,
    @Default(Email.pure()) Email email,
    @Default(NotEmpty.pure()) NotEmpty description,
    @Default(NotEmpty.pure()) NotEmpty url,
    @Default(NotEmpty.pure()) final NotEmpty dob,
    @Default(DropdownValue.pure()) final DropdownValue gender,
    @Default(false) bool adoptionValidation,
  }) = _AddAdoptionState;
}

extension PetFormValidation on AddAdoptionState {
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
