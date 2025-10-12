import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/domain/entities/medication_date.dart';
import '../repositories/health_repository.dart';

class GetMedicationDateUsecases {
  GetMedicationDateUsecases(this.repository);
  final HealthRepository repository;

  AppTypeResponse<MedicationDate> call({
    required String id,
    required DateTime date,
  }) {
    return repository.getMedicationDate(id: id, date: date);
  }
}
