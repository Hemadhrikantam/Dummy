part of 'add_adoption_bloc.dart';

@freezed
abstract class AddAdoptionState with _$AddAdoptionState {
  const factory AddAdoptionState({
    @Default(Status.init) Status addAdoptionStatus,
    @Default(Status.init) Status submitStatus,
    @Default(NotEmpty.pure()) NotEmpty name,
    @Default(DropdownValue.pure()) DropdownValue year,
    @Default(DropdownValue.pure()) DropdownValue month,
    @Default(DropdownValue.pure()) DropdownValue petType,
    @Default([]) List<DropItem> petTypes,
    @Default(DropdownValue.pure()) DropdownValue breed,
    @Default([]) List<DropItem> catBreeds,
    @Default([]) List<DropItem> dogBreeds,
    @Default(NotEmpty.pure()) NotEmpty address,
    @Default(MobileNo.pure()) MobileNo phone,
    @Default(Email.pure()) Email email,
    @Default(NotEmpty.pure()) NotEmpty description,
    @Default(NotEmpty.pure()) NotEmpty url,
    @Default(false) bool adoptionValidation,
  })= _AddAdoptionState;
}
