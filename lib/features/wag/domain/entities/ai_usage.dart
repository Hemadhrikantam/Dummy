class AiUsage {
  const AiUsage({
    required this.period,
    required this.promptsUsed,
    required this.promptsRemaining,
    required this.imagesUsed,
    required this.imagesRemaining,
    required this.periodResetsAt,
    required this.totalTokensUsed,
  });

  final String period;
  final int promptsUsed;
  final int promptsRemaining;
  final int imagesUsed;
  final int imagesRemaining;
  final DateTime periodResetsAt;
  final int totalTokensUsed;
}