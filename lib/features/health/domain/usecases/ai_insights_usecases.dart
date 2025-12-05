import 'package:dummy/core/utils/type_def.dart';
import '../entities/ai_insight.dart';
import '../repositories/health_repository.dart';

class AiInsightsUsecases {
  AiInsightsUsecases(this.repository);
  final HealthRepository repository;

  AppTypeResponse<AiInsight> call({required String petId}) {
    return repository.aiInsights(petId: petId);
  }
}

