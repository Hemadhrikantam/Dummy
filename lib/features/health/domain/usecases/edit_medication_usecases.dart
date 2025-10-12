import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/domain/repositories/health_repository.dart';

class EditMedicationUsecases {
  EditMedicationUsecases(this.repository);
  final HealthRepository repository;
  AppSuccessResponse call({required Payload payload, required String id}) {
    return repository.editMedication(payload: payload, id: id);
  }
}
