import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/features/dailycare/data/models/frequency_model.dart';
import 'package:dummy/features/dailycare/data/models/meal_model.dart';
import 'package:dummy/features/dailycare/data/models/overview_model.dart';
import 'package:dummy/features/dailycare/data/models/remind_before_model.dart';
import 'package:dummy/features/dailycare/data/models/timezone_model.dart';
import '../../../../core/utils/type_def.dart';
import '../models/deworming_model.dart';
import '../models/expense_model.dart';
import '../models/grooming_model.dart';
import '../models/walk_model.dart';

abstract class DailyCareDatasource {
  const DailyCareDatasource();
  AppSuccessResponse addMeal({required Payload payload});
  AppSuccessResponse addWalk({required Payload payload});
  AppSuccessResponse addGrooming({required Payload payload});
  AppSuccessResponse addDeworming({required Payload payload});
  AppSuccessResponse addExpense({required Payload payload});
  AppTypeResponse<List<FrequencyModel>> frequencies();
  AppTypeResponse<List<TimezoneModel>> timezones();
  AppTypeResponse<List<RemindBeforeModel>> remindBefores();
  AppTypeResponse<List<PetMealModel>> meals(DateTime? date);
  AppTypeResponse<List<PetWalkModel>> walks(DateTime? date);
  AppTypeResponse<List<PetGroomingModel>> groomings(DateTime? date);
  AppTypeResponse<List<PetExpenseModel>> expenses(DateTime? date);
  AppTypeResponse<List<PetDewormingModel>> dewormings(DateTime? date);
  AppTypeResponse<OverviewModel> overview(String petId);
}
