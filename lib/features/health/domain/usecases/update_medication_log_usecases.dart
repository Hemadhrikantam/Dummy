import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/domain/repositories/health_repository.dart';

class UpdateMedicationLogUsecases {
  UpdateMedicationLogUsecases(this.repository);
  final HealthRepository repository;

  AppSuccessResponse call({
    required String medicationId,
    required String logId,
    required bool check,
    required DateTime date,
  }) {
    return repository.updateMedicationLog(
      medicationId: medicationId,
      logId: logId,
      check: check,
      date: date,
    );
  }
}
