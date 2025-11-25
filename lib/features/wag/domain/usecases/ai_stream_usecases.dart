import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/wag/domain/repositories/wag_repository.dart';

class AiStreamUsecases {
  AiStreamUsecases(this.repository);
  final WagRepository repository;
  AppTypeResponse<Stream<String>> call() {
    return repository.aiStream();
  }
}
