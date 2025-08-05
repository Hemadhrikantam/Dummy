import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/domain/repositories/health_repository.dart';

class DeleteMedicationUsecases {
  DeleteMedicationUsecases(this.repository);
  final HealthRepository repository;
  AppSuccessResponse call({required int id}) {
    return repository.deleteMedication(id: id);
  }
}
