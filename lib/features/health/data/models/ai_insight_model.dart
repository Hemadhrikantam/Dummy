import 'package:dummy/features/health/domain/entities/ai_insight.dart';

class AiInsightModel extends AiInsight {
  const AiInsightModel({
    required super.petId,
    required super.petName,
    required super.generatedAt,
    required super.summary,
    required super.recommendations,
  });

  factory AiInsightModel.fromJson(Map<String, dynamic> root) {
    final data = (root['data'] ?? root) as Map<String, dynamic>;

    final generatedStr = (data['generatedAt'] ?? data['generated_at'] ?? '')
        .toString();
    final generatedAt = generatedStr.isNotEmpty
        ? DateTime.tryParse(generatedStr) ?? DateTime.now()
        : DateTime.now();

    final summaryMap = (data['summary'] as Map<String, dynamic>? ?? {});
    final summary = AiInsightSummary(
      totalActivitiesThisMonth:
          (summaryMap['totalActivitiesThisMonth'] as num?)?.toInt() ?? 0,
      totalActivitiesLastMonth:
          (summaryMap['totalActivitiesLastMonth'] as num?)?.toInt() ?? 0,
      activitiesTrend: (summaryMap['activitiesTrend'] ?? '').toString(),
      trendPercentage: (summaryMap['trendPercentage'] as num?) ?? 0,
      healthScore: (summaryMap['healthScore'] as num?)?.toInt() ?? 0,
      activityScore: (summaryMap['activityScore'] as num?)?.toInt() ?? 0,
      careScore: (summaryMap['careScore'] as num?)?.toInt() ?? 0,
    );

    final recs = (data['recommendations'] as List<dynamic>? ?? [])
        .map((e) {
          final m = (e as Map<String, dynamic>? ?? {});
          return AiRecommendation(
            id: (m['id'] ?? '').toString(),
            type: (m['type'] ?? '').toString(),
            priority: (m['priority'] ?? '').toString(),
            message: (m['message'] ?? '').toString(),
            category: (m['category'] ?? '').toString(),
            hasInsufficientData: (m['hasInsufficientData'] as bool?) ?? false,
            actionLabel: (m['actionLabel'] ?? '').toString(),
            metadata: (m['metadata'] as Map<String, dynamic>? ?? {}),
          );
        })
        .toList();

    return AiInsightModel(
      petId: (data['petId'] ?? data['pet_id'] ?? '').toString(),
      petName: (data['petName'] ?? data['pet_name'] ?? '').toString(),
      generatedAt: generatedAt,
      summary: summary,
      recommendations: recs,
    );
  }
}

