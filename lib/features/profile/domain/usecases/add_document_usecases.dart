import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart' show AppSuccessResponse;
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';

class AddDocumentUsecases {
  AddDocumentUsecases(this.repository);
  final ProfileRepository repository;
  AppSuccessResponse call({required Payload payload}) {
    return repository.addDocument(payload: payload);
  }
}
