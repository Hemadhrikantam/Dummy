

import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';

import '../entities/meal.dart';
import '../entities/walk.dart';

abstract class DailyCareRepository {
  const DailyCareRepository();
  AppSuccessResponse addMeal({required Payload payload});
  AppSuccessResponse addWalk({required Payload payload});
  AppTypeResponse<List<PetMeal>> meals(DateTime? date);
  AppTypeResponse<List<PetWalk>> walks(DateTime? date);
}

