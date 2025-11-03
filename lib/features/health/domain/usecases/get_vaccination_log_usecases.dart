import 'package:dummy/core/utils/type_def.dart';
import '../entities/vaccination_log_view.dart';
import '../repositories/health_repository.dart';

class GetVaccinationLogUsecases {
  GetVaccinationLogUsecases(this.repository);
  final HealthRepository repository;

  AppTypeResponse<VaccinationLogView> call({required String vaccinationId}) {
    return repository.getVaccinationLog(id: vaccinationId);
  }
}