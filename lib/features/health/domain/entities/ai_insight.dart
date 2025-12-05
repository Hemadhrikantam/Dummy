class AiInsightSummary {
  const AiInsightSummary({
    required this.totalActivitiesThisMonth,
    required this.totalActivitiesLastMonth,
    required this.activitiesTrend,
    required this.trendPercentage,
    required this.healthScore,
    required this.activityScore,
    required this.careScore,
  });

  final int totalActivitiesThisMonth;
  final int totalActivitiesLastMonth;
  final String activitiesTrend;
  final num trendPercentage;
  final int healthScore;
  final int activityScore;
  final int careScore;
}

class AiRecommendation {
  const AiRecommendation({
    required this.id,
    required this.type,
    required this.priority,
    required this.message,
    required this.category,
    required this.hasInsufficientData,
    required this.actionLabel,
    required this.metadata,
  });

  final String id;
  final String type;
  final String priority;
  final String message;
  final String category;
  final bool hasInsufficientData;
  final String actionLabel;
  final Map<String, dynamic> metadata;
}

class AiInsight {
  const AiInsight({
    required this.petId,
    required this.petName,
    required this.generatedAt,
    required this.summary,
    required this.recommendations,
  });

  final String petId;
  final String petName;
  final DateTime generatedAt;
  final AiInsightSummary summary;
  final List<AiRecommendation> recommendations;
}

