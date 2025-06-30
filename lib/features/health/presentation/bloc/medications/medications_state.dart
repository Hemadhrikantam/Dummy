part of 'medications_bloc.dart';

@freezed
abstract class MedicationsState with _$MedicationsState {
  const factory MedicationsState({
    @Default(Status.init) final Status medicationsStatus,
    @Default([]) final List<PetMedication> medications,
  }) = _MedicationsState;
}
