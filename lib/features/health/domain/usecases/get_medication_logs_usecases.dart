import 'package:dummy/core/utils/type_def.dart';
import '../entities/medication_log.dart';
import '../repositories/health_repository.dart';

class GetMedicationLogsUsecases {
  GetMedicationLogsUsecases(this.repository);
  final HealthRepository repository;

  AppTypeResponse<List<MedicationLog>> call({
    required String medicationId,
    String? fromDate,
    String? toDate,
  }) {
    return repository.medicationLogs(medicationId, fromDate, toDate);
  }
}
