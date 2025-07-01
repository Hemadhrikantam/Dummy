part of 'medications_bloc.dart';

@freezed
abstract class MedicationsState with _$MedicationsState {
  const factory MedicationsState({
    @Default(Status.init) final Status medicationsStatus,
    @Default([]) final List<PetMedication> medications,
    @Default(NotEmpty.pure()) final NotEmpty startDate,
    @Default(NotEmpty.pure()) final NotEmpty endDate,
  }) = _MedicationsState;
}
