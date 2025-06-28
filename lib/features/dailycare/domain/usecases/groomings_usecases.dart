import 'package:dummy/core/utils/type_def.dart';

import '../entities/grooming.dart';
import '../repositories/daily_care_repository.dart';

class GroomingsUsecases {
  GroomingsUsecases(this.dailyCareRepository);
  final DailyCareRepository dailyCareRepository;

  AppTypeResponse<List<PetGrooming>> call(DateTime? date) {
    return dailyCareRepository.groomings(date);
  }
}
