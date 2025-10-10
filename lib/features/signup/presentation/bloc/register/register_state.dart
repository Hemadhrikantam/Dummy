part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(Status.init) final Status initStatus,
    @Default(Status.init) final Status submitStatus,
    @Default([]) final List<DropStringItem> dogBreeds,
    @Default([]) final List<DropStringItem> catBreeds,
    @Default([]) final List<DropStringItem> personalityTags,
    @Default(NotEmpty.pure()) final NotEmpty petName,
    @Default(NotEmpty.pure()) final NotEmpty petImage,
    @Default(PetType.Cat) final PetType petType,
    @Default(NotEmpty.pure()) final NotEmpty dob,
    @Default(DropdownStringValue.pure()) final DropdownStringValue breed,
    @Default([]) final List<DropdownStringValue> selectedPersonalityTags,
    @Default(NotEmpty.pure()) final NotEmpty weightUnit,
    @Default(NotEmpty.pure()) final NotEmpty weight,
    final double? latitude,
    final double? longitude,

    @Default(DropdownValue.pure()) final DropdownValue gender,
  }) = _RegisterState;
}
