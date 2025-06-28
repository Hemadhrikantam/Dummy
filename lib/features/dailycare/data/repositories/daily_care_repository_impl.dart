import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dailycare/data/datasources/daily_care_datasource.dart';
import 'package:dummy/features/dailycare/domain/repositories/daily_care_repository.dart';

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
  AppTypeResponse<List<PetMeal>> meals(DateTime? date) {
    return _careDatasource.meals(date);
  }

  @override
  AppTypeResponse<List<PetWalk>> walks(DateTime? date) {
    return _careDatasource.walks(date);
  }
}
