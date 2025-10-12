import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/domain/repositories/health_repository.dart';

class DeleteVaccinationUsecases {
  DeleteVaccinationUsecases(this.repository);
  final HealthRepository repository;
  AppSuccessResponse call({required String id}) {
    return repository.deleteVaccination(id: id);
  }
}
