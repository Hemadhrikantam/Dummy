import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dailycare/domain/entities/deworming.dart';

import '../repositories/daily_care_repository.dart';

class DewormingsUsecases {
  DewormingsUsecases(this.dailyCareRepository);
  final DailyCareRepository dailyCareRepository;

  AppTypeResponse<List<PetDeworming>> call(DateTime? date) {
    return dailyCareRepository.dewormings(date);
  }
}
