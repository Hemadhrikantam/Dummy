
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';

abstract class HealthRepository {
    const HealthRepository();
  AppSuccessResponse addMedication({required Payload payload});
}
