part of 'pet_form_bloc.dart';

@freezed
abstract class PetFormState with _$PetFormState {
  const factory PetFormState({
    @Default(Status.init) final Status initStatus,
    @Default(Status.init) final Status submitStatus,
    @Default(false) final bool validation,

    @Default(NotEmpty.pure()) final NotEmpty petName,
    @Default(PetType.Cat) final PetType petType,
    @Default(NotEmpty.pure()) final NotEmpty dob,
    @Default(DropdownValue.pure()) final DropdownValue gender,
    @Default(NotEmpty.pure()) final NotEmpty petImage,
    @Default(0) final int petImageId,
    @Default(DropdownStringValue.pure()) final DropdownStringValue breed,
    @Default([]) final List<DropdownStringValue> selectedPersonalityTags,
    @Default(NotEmpty.pure()) final NotEmpty weightUnit,
    @Default(NotEmpty.pure()) final NotEmpty weight,
    //
    @Default([]) final List<DropStringItem> catbreeds,
    @Default([]) final List<DropStringItem> dogbreeds,
    @Default([]) final List<DropStringItem> personalityTags,
  }) = _PetFormState;
}

extension PetFormValidation on PetFormState {
  bool get validationX {
    return Formz.validate([petName, gender, dob, petImage, breed, weight]);
  }
}
