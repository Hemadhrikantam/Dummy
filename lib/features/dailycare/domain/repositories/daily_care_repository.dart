import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dailycare/domain/entities/frequency.dart';
import 'package:dummy/features/dailycare/domain/entities/overview.dart';
import 'package:dummy/features/dailycare/domain/entities/remind_before.dart';
import 'package:dummy/features/dailycare/domain/entities/timezone.dart';

import '../entities/deworming.dart';
import '../entities/expense.dart';
import '../entities/grooming.dart';
import '../entities/meal.dart';
import '../entities/walk.dart';

abstract class DailyCareRepository {
  const DailyCareRepository();
  AppSuccessResponse addMeal({required Payload payload});
  AppSuccessResponse addWalk({required Payload payload});
  AppSuccessResponse addGrooming({required Payload payload});
  AppSuccessResponse addDeworming({required Payload payload});
  AppSuccessResponse addExpense({required Payload payload});
  AppTypeResponse<List<Frequency>> frequencies();
  AppTypeResponse<List<Timezone>> timezones();
  AppTypeResponse<List<RemindBefore>> remindBefores();
  AppTypeResponse<List<PetMeal>> meals(DateTime? date);
  AppTypeResponse<List<PetWalk>> walks(DateTime? date);
  AppTypeResponse<List<PetGrooming>> groomings(DateTime? date);
  AppTypeResponse<List<PetExpense>> expenses(DateTime? date);
  AppTypeResponse<List<PetDeworming>> dewormings(DateTime? date);
  AppTypeResponse<Overview> overview(String petId);
}
