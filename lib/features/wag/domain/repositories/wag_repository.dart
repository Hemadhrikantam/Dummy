import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/wag/domain/entities/ai_chat_history.dart';
import 'package:dummy/features/wag/domain/entities/ai_usage.dart';

abstract class WagRepository {
  const WagRepository();

  AppTypeResponse<Stream<String>> aiStream();
  AppSuccessResponse sendChat({required String message, List<String> images});
  AppTypeResponse<AiChatHistory> aiChatHistory({
    required int limit,
    required int page,
  });
  AppTypeResponse<AiUsage> aiUsage();
}
