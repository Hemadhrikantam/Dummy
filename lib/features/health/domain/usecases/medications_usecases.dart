import 'package:dummy/core/utils/type_def.dart';
import '../entities/medication.dart';
import '../repositories/health_repository.dart';

class MedicationsUsecases {
  MedicationsUsecases(this.repository);
  final HealthRepository repository;

  AppTypeResponse<List<PetMedication>> call(
    String? key,
    String? fromDate,
    String? toDate,
  ) {
    return repository.medications(key, fromDate, toDate);
  }
}
