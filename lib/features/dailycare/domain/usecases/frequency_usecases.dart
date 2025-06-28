import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dailycare/domain/entities/frequency.dart';
import '../repositories/daily_care_repository.dart';

class FrequencyUsecases {
  FrequencyUsecases(this.dailyCareRepository);
  final DailyCareRepository dailyCareRepository;
  
  AppTypeResponse<List<Frequency>> call() {
    return dailyCareRepository.frequencies();
  }
}
