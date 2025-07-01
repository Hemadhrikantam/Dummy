part of 'vaccination_form_bloc.dart';

@freezed
abstract class VaccinationFormState with _$VaccinationFormState {
  const factory VaccinationFormState({
    @Default(Status.init) Status initStatus,
    @Default(Status.init) Status submitStatus,

    @Default(false) bool isGiven,
    @Default(NotEmpty.pure()) NotEmpty vaccinationName,
    @Default(NotEmpty.pure()) NotEmpty company,
    @Default(NotEmpty.pure()) NotEmpty dateAdministered,
    @Default(NotEmpty.pure()) NotEmpty dueDate,
    @Default(NotEmpty.pure()) NotEmpty note,
    @Default(NotEmpty.pure()) NotEmpty media,
    @Default(DropdownValue.pure()) DropdownValue reminderHour,
    @Default(DropdownValue.pure()) DropdownValue reminderMin,
    @Default(DropdownValue.pure()) DropdownValue reminderAmPm,

    @Default(DropdownValue.pure()) DropdownValue frequency,
    @Default(DropdownValue.pure()) DropdownValue reminderTimezone,
    @Default(DropdownValue.pure()) DropdownValue reminderBefore,

    @Default([]) List<DropItem> frequencies,
    @Default([]) List<DropItem> reminderTimezones,
    @Default([]) List<DropItem> reminderBefores,

    @Default(false) bool validation,
    @Default(0) int petId,
  }) = _VaccinationFormState;
}

extension VaccinationFormValidation on VaccinationFormState {
  bool get validationX {
    return Formz.validate([
      vaccinationName,
      company,
      reminderHour,
      reminderMin,
      reminderAmPm,
      dateAdministered,
      dueDate,
      note,
      media,
      frequency,
      reminderTimezone,
      reminderBefore,
    ]);
  }
}
