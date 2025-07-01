import 'package:dummy/core/utils/type_def.dart';
import '../entities/medication.dart';
import '../repositories/health_repository.dart';

class GetMedicationUsecases {
  GetMedicationUsecases(this.repository);
  final HealthRepository repository;

  AppTypeResponse<PetMedication> call({required int id}) {
    return repository.getMedication(id: id);
  }
}
