part of 'vaccination_details_bloc.dart';

@freezed
class VaccinationDetailsState with _$VaccinationDetailsState {
  const factory VaccinationDetailsState({
    @Default(Status.init) final Status initStatus,
    @Default(null) final PetVaccination? vaccination,
  }) = _VaccinationDetailsState;
}
