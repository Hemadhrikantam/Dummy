
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';

abstract class HealthDatasource {
  const HealthDatasource();
  AppSuccessResponse addMedication({required Payload payload});
}