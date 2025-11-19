import 'package:dummy/core/utils/type_def.dart';
import '../entities/clinic.dart';
import '../repositories/health_repository.dart';

class ListClinicUsecases {
  ListClinicUsecases(this.repository);
  final HealthRepository repository;

  AppTypeResponse<List<Clinic>> call({
    PlaceType type = PlaceType.clinic,
    required double latitude,
    required double longitude,
  }) {
    return repository.clinics(
      latitude: latitude,
      longitude: longitude,
      type: type.name,
    );
  }
}

enum PlaceType { clinic, store }
