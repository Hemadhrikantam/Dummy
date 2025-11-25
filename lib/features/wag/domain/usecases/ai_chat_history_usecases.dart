import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/wag/domain/entities/ai_chat_history.dart';
import 'package:dummy/features/wag/domain/repositories/wag_repository.dart';

class AiChatHistoryUsecases {
  AiChatHistoryUsecases(this.repository);
  final WagRepository repository;

  AppTypeResponse<AiChatHistory> call({required int limit, required int page}) {
    return repository.aiChatHistory(limit: limit, page: page);
  }
}

