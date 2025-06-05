import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/domain/entities/documents.dart';

abstract class ProfileRepository {
  ProfileRepository();
  AppTypeResponse<List<Documents>> documents();
}
