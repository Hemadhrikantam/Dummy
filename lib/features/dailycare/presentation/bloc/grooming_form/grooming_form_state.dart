part of 'grooming_form_bloc.dart';

@freezed
abstract class GroomingFormState with _$GroomingFormState {
  const factory GroomingFormState({
    @Default(Status.init) Status submitStatus,
    @Default(NotEmpty.pure()) NotEmpty date,
    @Default(DropdownStringValue.pure()) final DropdownStringValue groomingType,
    @Default(NotEmpty.pure()) NotEmpty notes,
    @Default(NotEmpty.pure()) NotEmpty media,
    @Default(false) bool validation,
    @Default('') String petId,
    @Default([]) final List<DropStringItem> groomingTypes,
    @Default('') String addedGroomingId,
  }) = _GroomingFormState;
}

extension GroomingFormValidation on GroomingFormState {
  bool get validationX {
    return Formz.validate([date, groomingType, notes, media]);
  }
}
