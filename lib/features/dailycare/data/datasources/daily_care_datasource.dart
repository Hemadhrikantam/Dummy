import 'package:dummy/core/payload/payload.dart';
import '../../../../core/utils/type_def.dart';

abstract class DailyCareDatasource {
  const DailyCareDatasource();
  AppSuccessResponse addMeal({required Payload payload});
  AppSuccessResponse addWalk({required Payload payload});
}
