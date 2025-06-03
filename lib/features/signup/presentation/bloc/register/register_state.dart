part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(Status.init) final Status initStatus,
    @Default([]) final List<DropItem> dogBreeds,
    @Default([]) final List<DropItem> catBreeds,
    @Default([]) final List<DropItem> personalityTags,
    @Default(NotEmpty.pure()) final NotEmpty petName,
    @Default(PetType.Cat) final PetType petType,
    @Default(NotEmpty.pure()) final NotEmpty dob,
    @Default(DropdownValue.pure()) final DropdownValue breed,
    @Default([]) final List<int> selectedPersonalityTags,
    @Default(NotEmpty.pure()) final NotEmpty weightUnit,
    @Default(NotEmpty.pure()) final NotEmpty weight,
  }) = _RegisterState;
}
