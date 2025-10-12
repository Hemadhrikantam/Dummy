part of 'vaccination_details_bloc.dart';

@freezed
class VaccinationDetailsState with _$VaccinationDetailsState {
  const factory VaccinationDetailsState({
    @Default(Status.init) final Status initStatus,
    @Default(null) final PetVaccination? vaccination,
    @Default(Status.init) final Status logsStatus,
    // @Default([]) final List<VaccinationLog> vaccinationLogs,
    @Default(Status.init) final Status addLogStatus,
  }) = _VaccinationDetailsState;
}
