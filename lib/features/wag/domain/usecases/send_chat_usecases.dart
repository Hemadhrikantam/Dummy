import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/wag/domain/repositories/wag_repository.dart';

class SendChatUsecases {
  SendChatUsecases(this.repository);
  final WagRepository repository;
  AppSuccessResponse call({required String message, List<String> images = const []}) {
    return repository.sendChat(message: message, images: images);
  }
}