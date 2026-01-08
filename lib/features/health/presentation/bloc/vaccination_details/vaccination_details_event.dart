part of 'vaccination_details_bloc.dart';

@freezed
class VaccinationDetailsEvent with _$VaccinationDetailsEvent {
  const factory VaccinationDetailsEvent.init(String id) = _Init;
  const factory VaccinationDetailsEvent.loadVaccinationLogs() =
      _LoadVaccinationLogs;
}
