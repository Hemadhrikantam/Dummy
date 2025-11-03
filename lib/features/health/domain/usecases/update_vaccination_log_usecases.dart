import 'package:dummy/core/utils/type_def.dart';
import '../repositories/health_repository.dart';

class UpdateVaccinationLogUsecases {
  UpdateVaccinationLogUsecases(this.repository);
  final HealthRepository repository;

  AppSuccessResponse call({
    required String vaccinationId,
    required bool check,
    required String notes,
    required DateTime date,
  }) {
    return repository.updateVaccinationLog(
      vaccinationId: vaccinationId,
      check: check,
      notes: notes,
      date: date,
    );
  }
}