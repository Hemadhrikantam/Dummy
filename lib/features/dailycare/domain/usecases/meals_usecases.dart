import 'package:dummy/core/utils/type_def.dart';

import '../entities/meal.dart';
import '../repositories/daily_care_repository.dart';

class MealsUsecases {
  MealsUsecases(this.dailyCareRepository);
  final DailyCareRepository dailyCareRepository;
  
  AppTypeResponse<List<PetMeal>> call(DateTime? date) {
    return dailyCareRepository.meals(date);
  }
}
