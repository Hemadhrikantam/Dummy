import 'package:dummy/core/utils/type_def.dart';

import '../entities/walk.dart';
import '../repositories/daily_care_repository.dart';

class WalksUsecases {
  WalksUsecases(this.dailyCareRepository);
  final DailyCareRepository dailyCareRepository;

  AppTypeResponse<List<PetWalk>> call(DateTime? date) {
    return dailyCareRepository.walks(date);
  }
}
