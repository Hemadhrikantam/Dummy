import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dailycare/domain/entities/timezone.dart';
import '../repositories/daily_care_repository.dart';

class TimezonesUsecases {
  TimezonesUsecases(this.dailyCareRepository);
  final DailyCareRepository dailyCareRepository;
  
  AppTypeResponse<List<Timezone>> call() {
    return dailyCareRepository.timezones();
  }
}
