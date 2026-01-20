part of 'vaccinations_bloc.dart';

@freezed
class VaccinationsEvent with _$VaccinationsEvent {
  const factory VaccinationsEvent.init() = _Init;
  const factory VaccinationsEvent.delete(String id) = _Delete;
  const factory VaccinationsEvent.vaccinations(String? key) = _Vaccinations;
  const factory VaccinationsEvent.filter(
    String? dateAdministered,
    String? dueDate,
  ) = _Filter;
  
}
