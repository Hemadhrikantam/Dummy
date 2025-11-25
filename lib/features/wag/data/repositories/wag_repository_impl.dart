import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/wag/data/datasources/wag_datasource.dart';
import 'package:dummy/features/wag/domain/entities/ai_chat_history.dart';
import 'package:dummy/features/wag/domain/entities/ai_usage.dart';
import 'package:dummy/features/wag/domain/repositories/wag_repository.dart';

class WagRepositoryImpl extends WagRepository {
  WagRepositoryImpl(this._wagDatasource);
  final WagDatasource _wagDatasource;

  @override
  AppTypeResponse<Stream<String>> aiStream() {
    return _wagDatasource.aiStream();
  }

  @override
  AppSuccessResponse sendChat({
    required String message,
    List<String> images = const [],
  }) {
    return _wagDatasource.sendChat(message: message, images: images);
  }

  @override
  AppTypeResponse<AiChatHistory> aiChatHistory({
    required int limit,
    required int page,
  }) {
    return _wagDatasource.aiChatHistory(limit: limit, page: page);
  }

  @override
  AppTypeResponse<AiUsage> aiUsage() {
    return _wagDatasource.aiUsage();
  }
}
