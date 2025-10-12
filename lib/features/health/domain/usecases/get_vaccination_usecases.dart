import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/domain/entities/vaccination.dart';
import '../repositories/health_repository.dart';

class GetVaccinationUsecases {
  GetVaccinationUsecases(this.repository);
  final HealthRepository repository;

  AppTypeResponse<PetVaccination> call({required String id}) {
    return repository.getVaccination(id: id);
  }
}
