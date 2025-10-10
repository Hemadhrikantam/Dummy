import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dailycare/data/datasources/daily_care_datasource.dart';
import 'package:dummy/features/dailycare/domain/entities/frequency.dart';
import 'package:dummy/features/dailycare/domain/entities/overview.dart';
import 'package:dummy/features/dailycare/domain/entities/remind_before.dart';
import 'package:dummy/features/dailycare/domain/entities/timezone.dart';
import 'package:dummy/features/dailycare/domain/repositories/daily_care_repository.dart';

import '../../domain/entities/deworming.dart';
import '../../domain/entities/expense.dart';
import '../../domain/entities/grooming.dart';
import '../../domain/entities/meal.dart';
import '../../domain/entities/walk.dart';

class DailyCareRepositoryImpl extends DailyCareRepository {
  DailyCareRepositoryImpl(this._careDatasource);
  final DailyCareDatasource _careDatasource;

  @override
  AppSuccessResponse addMeal({required Payload payload}) {
    return _careDatasource.addMeal(payload: payload);
  }

  @override
  AppSuccessResponse addWalk({required Payload payload}) {
    return _careDatasource.addWalk(payload: payload);
  }

  @override
  AppSuccessResponse addGrooming({required Payload payload}) {
    return _careDatasource.addGrooming(payload: payload);
  }

  @override
  AppSuccessResponse addDeworming({required Payload payload}) {
    return _careDatasource.addDeworming(payload: payload);
  }

  @override
  AppSuccessResponse addExpense({required Payload payload}) {
    return _careDatasource.addExpense(payload: payload);
  }

  @override
  AppTypeResponse<List<PetMeal>> meals(DateTime? date) {
    return _careDatasource.meals(date);
  }

  @override
  AppTypeResponse<List<PetWalk>> walks(DateTime? date) {
    return _careDatasource.walks(date);
  }

  @override
  AppTypeResponse<List<PetGrooming>> groomings(DateTime? date) {
    return _careDatasource.groomings(date);
  }

  @override
  AppTypeResponse<List<PetExpense>> expenses(DateTime? date) {
    return _careDatasource.expenses(date);
  }

  @override
  AppTypeResponse<List<PetDeworming>> dewormings(DateTime? date) {
    return _careDatasource.dewormings(date);
  }

  @override
  AppTypeResponse<List<Frequency>> frequencies() {
    return _careDatasource.frequencies();
  }

  @override
  AppTypeResponse<List<RemindBefore>> remindBefores() {
    return _careDatasource.remindBefores();
  }

  @override
  AppTypeResponse<List<Timezone>> timezones() {
    return _careDatasource.timezones();
  }

  @override
  AppTypeResponse<Overview> overview(String petId) {
    return _careDatasource.overview(petId);
  }
}
