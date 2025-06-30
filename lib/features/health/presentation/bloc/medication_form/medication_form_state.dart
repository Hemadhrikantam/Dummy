part of 'medication_form_bloc.dart';


@freezed
abstract class MedicationFormState with _$MedicationFormState {
  const factory MedicationFormState({
    @Default(Status.init) Status submitStatus,

    @Default(false) bool reminder,
    @Default(NotEmpty.pure()) NotEmpty tabletName,
    @Default(NotEmpty.pure()) NotEmpty company,
    @Default(NotEmpty.pure()) NotEmpty dosage,
    @Default(DropdownValue.pure()) DropdownValue dosageUnit,

    @Default(false) bool morningTimeEnable,
    @Default(false) bool afternoonTimeEnable,
    @Default(false) bool nightTimeEnable,

    @Default(DropdownValue.pure()) DropdownValue morningTimeHour,
    @Default(DropdownValue.pure()) DropdownValue morningTimeMin,

    @Default(DropdownValue.pure()) DropdownValue afternoonTimeHour,
    @Default(DropdownValue.pure()) DropdownValue afternoonTimeMin,

    @Default(DropdownValue.pure()) DropdownValue nightTimeHour,
    @Default(DropdownValue.pure()) DropdownValue nightTimeMin,

    @Default(NotEmpty.pure()) NotEmpty startDate,
    @Default(NotEmpty.pure()) NotEmpty endDate,
    @Default(NotEmpty.pure()) NotEmpty note,
    @Default(NotEmpty.pure()) NotEmpty media,

    @Default(DropdownValue.pure()) DropdownValue frequency,
    @Default([]) List<DropItem> dosageUnits,
    @Default([]) List<DropItem> frequencies,

    @Default(false) bool validation,
    @Default(0) int petId,
  }) = _MedicationFormState;
}

extension MedicationFormValidation on MedicationFormState {
  bool get validationX {
    return Formz.validate([
      tabletName,
      company,
      dosage,
      dosageUnit,
      morningTimeHour,
      morningTimeMin,
      afternoonTimeHour,
      afternoonTimeMin,
      nightTimeHour,
      nightTimeMin,
      startDate,
      endDate,
      note,
      media,
      frequency,
    ]);
  }
}