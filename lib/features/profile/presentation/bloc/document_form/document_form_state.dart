part of 'document_form_bloc.dart';

@freezed
abstract class DocumentFormState with _$DocumentFormState {
  const factory DocumentFormState({
    @Default(Status.init) Status initStatus,
    @Default(Status.init) Status submitStatus,

    @Default(NotEmpty.pure()) NotEmpty url,

    @Default(false) bool validation,
    @Default('') String petId,
  }) = _DocumentFormState;
}

extension MedicationFormValidation on DocumentFormState {
  bool get validationX {
    return Formz.validate([url]);
  }
}
