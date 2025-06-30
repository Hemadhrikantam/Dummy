import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dailycare/domain/entities/frequency.dart';
import '../repositories/health_repository.dart';

class MedicationFrequencyUsecases {
  MedicationFrequencyUsecases(this.repository);
  final HealthRepository repository;

  AppTypeResponse<List<Frequency>> call() {
    return repository.medicationFrequencies();
  }
}
