import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dailycare/domain/repositories/daily_care_repository.dart';

class AddDewormingUsecases {
  AddDewormingUsecases(this.dailyCareRepository);
  final DailyCareRepository dailyCareRepository;
  AppSuccessResponse call({required Payload payload}) {
    return dailyCareRepository.addDeworming(payload: payload);
  }
}