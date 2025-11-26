import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/wag/domain/entities/ai_usage.dart';
import 'package:dummy/features/wag/domain/repositories/wag_repository.dart';

class AiUsageUsecases {
  AiUsageUsecases(this.repository);
  final WagRepository repository;

  AppTypeResponse<AiUsage> call() {
    return repository.aiUsage();
  }
}