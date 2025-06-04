import 'package:dummy/core/utils/type_def.dart' show AppTypeResponse;
import 'package:dummy/features/profile/domain/entities/documents.dart';
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';

class DocumentsUsecases {
  DocumentsUsecases(this.repository);
  final ProfileRepository repository;
    AppTypeResponse<List<Documents>> call() {
    return repository.documents();
  }
}