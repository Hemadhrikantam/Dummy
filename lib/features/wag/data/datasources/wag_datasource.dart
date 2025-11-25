import '../../../../core/utils/type_def.dart';
import '../../domain/entities/ai_chat_history.dart';
import '../../domain/entities/ai_usage.dart';

abstract class WagDatasource {
  const WagDatasource();
  AppTypeResponse<Stream<String>> aiStream();
  AppSuccessResponse sendChat({required String message, List<String> images});
  AppTypeResponse<AiChatHistory> aiChatHistory({
    required int limit,
    required int page,
  });
  AppTypeResponse<AiUsage> aiUsage();
}
