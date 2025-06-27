

import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';

abstract class DailyCareRepository {
  const DailyCareRepository();
  AppSuccessResponse addMeal({required Payload payload});
  AppSuccessResponse addWalk({required Payload payload});
}

