part of 'media_form_bloc.dart';

@freezed
abstract class MediaFormState with _$MediaFormState {
  const factory MediaFormState({
    @Default(Status.init) Status initStatus,
    @Default(Status.init) Status submitStatus,

    @Default(NotEmpty.pure()) NotEmpty notes,
    @Default(NotEmpty.pure()) NotEmpty url,
    @Default(DropdownValue.pure()) DropdownValue event,

    @Default([]) List<DropItem> events,

    @Default(false) bool validation,
    @Default('') String petId,
  }) = _MediaFormState;
}

extension MedicationFormValidation on MediaFormState {
  bool get validationX {
    return Formz.validate([notes, url, event]);
  }
}
