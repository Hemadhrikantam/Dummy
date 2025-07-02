import 'package:dummy/core/utils/type_def.dart';
import '../entities/vaccination.dart';
import '../repositories/health_repository.dart';

class VaccinationsUsecases {
  VaccinationsUsecases(this.repository);
  final HealthRepository repository;

  AppTypeResponse<List<PetVaccination>> call(
    String? key,
    String? fromDate,
    String? toDate,
  ) {
    return repository.vaccinations(key, fromDate, toDate);
  }
}
