import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/data/models/medication_date_model.dart';
import 'package:dummy/features/health/domain/repositories/health_repository.dart';

class UpdateMedicationDateUsecases {
  UpdateMedicationDateUsecases(this.repository);
  final HealthRepository repository;
  AppSuccessResponse call({
    required MedicationDateModel payload,
    required String id,
  }) {
    return repository.updateMedicationDate(payload: payload, id: id);
  }
}
