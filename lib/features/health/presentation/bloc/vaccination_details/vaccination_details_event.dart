part of 'vaccination_details_bloc.dart';

@freezed
class VaccinationDetailsEvent with _$VaccinationDetailsEvent {
  const factory VaccinationDetailsEvent.init(int id) = _Init;
}
