import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dailycare/domain/entities/overview.dart';
import 'package:dummy/features/dailycare/domain/repositories/daily_care_repository.dart';

class OverviewUsecases {
  OverviewUsecases(this.dailyCareRepository);
  final DailyCareRepository dailyCareRepository;
  
  AppTypeResponse<Overview> call(petId) {
    return dailyCareRepository.overview(petId);
  }
}
