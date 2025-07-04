part of 'medication_details_bloc.dart';

@freezed
abstract class MedicationDetailsState with _$MedicationDetailsState {
  const factory MedicationDetailsState({
    @Default(Status.init) Status initStatus,
    @Default(null) PetMedication? medication,
    @Default(0) int id,
    @Default([]) List<MedicationDate> dates,

  }) = _MedicationDetailsState;
}