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

    @Default(DropdownStringValue.pure()) DropdownStringValue frequency,
    @Default(DropdownValue.pure()) DropdownValue reminderTimezone,
    @Default(DropdownStringValue.pure()) DropdownStringValue reminderBefore,

    @Default([]) List<DropStringItem> frequencies,
    @Default([]) List<DropItem> reminderTimezones,
    @Default([]) List<DropStringItem> reminderBefores,

    @Default(false) bool validation,
    @Default('') String petId,
  }) = _VaccinationFormState;
}

extension VaccinationFormValidation on VaccinationFormState {
  bool get validationX {
    return Formz.validate([
      vaccinationName,
      company,
      // reminderHour,
      // reminderMin,
      // reminderAmPm,
      dateAdministered,
      dueDate,
      note,
      // media,
      frequency,
      // reminderTimezone,
      // reminderBefore,
    ]);
  }
}
