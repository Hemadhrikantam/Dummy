import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dailycare/domain/entities/remind_before.dart';
import '../repositories/daily_care_repository.dart';

class RemindBeforeUsecases {
  RemindBeforeUsecases(this.dailyCareRepository);
  final DailyCareRepository dailyCareRepository;
  
  AppTypeResponse<List<RemindBefore>> call() {
    return dailyCareRepository.remindBefores();
  }
}
