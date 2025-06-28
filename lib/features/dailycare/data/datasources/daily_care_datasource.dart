import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/features/dailycare/data/models/meal_model.dart';
import '../../../../core/utils/type_def.dart';
import '../models/walk_model.dart';

abstract class DailyCareDatasource {
  const DailyCareDatasource();
  AppSuccessResponse addMeal({required Payload payload});
  AppSuccessResponse addWalk({required Payload payload});
  AppSuccessResponse addGrooming({required Payload payload});
  AppSuccessResponse addDeworming({required Payload payload});
  AppSuccessResponse addExpense({required Payload payload});
  AppTypeResponse<List<PetMealModel>> meals(DateTime? date);
  AppTypeResponse<List<PetWalkModel>> walks(DateTime? date);
}
