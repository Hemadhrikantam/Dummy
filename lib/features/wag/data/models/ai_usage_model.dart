import 'package:dummy/features/wag/domain/entities/ai_usage.dart';

class AiUsageModel extends AiUsage {
  const AiUsageModel({
    required super.period,
    required super.promptsUsed,
    required super.promptsRemaining,
    required super.imagesUsed,
    required super.imagesRemaining,
    required super.periodResetsAt,
    required super.totalTokensUsed,
  });

  factory AiUsageModel.fromJson(Map<String, dynamic> root) {
    final data = (root['data'] ?? root) as Map<String, dynamic>;
    final resetsStr = (data['period_resets_at'] ?? '').toString();
    final resetsAt = resetsStr.isNotEmpty
        ? DateTime.tryParse(resetsStr) ?? DateTime.now()
        : DateTime.now();

    return AiUsageModel(
      period: (data['period'] ?? '').toString(),
      promptsUsed: (data['prompts_used'] as num?)?.toInt() ?? 0,
      promptsRemaining: (data['prompts_remaining'] as num?)?.toInt() ?? 0,
      imagesUsed: (data['images_used'] as num?)?.toInt() ?? 0,
      imagesRemaining: (data['images_remaining'] as num?)?.toInt() ?? 0,
      periodResetsAt: resetsAt,
      totalTokensUsed: (data['total_tokens_used'] as num?)?.toInt() ?? 0,
    );
  }
}