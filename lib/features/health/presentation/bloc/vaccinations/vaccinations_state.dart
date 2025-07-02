part of 'vaccinations_bloc.dart';

@freezed
abstract class VaccinationsState with _$VaccinationsState {
  const factory VaccinationsState({
    @Default(Status.init) final Status vaccinationsStatus,
    @Default([]) final List<PetVaccination> vaccinations,
    @Default(NotEmpty.pure()) final NotEmpty dateAdministered,
    @Default(NotEmpty.pure()) final NotEmpty dueDate,
  }) = _VaccinationsState;
}
