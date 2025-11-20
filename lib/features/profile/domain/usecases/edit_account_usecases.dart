import 'package:dummy/core/utils/type_def.dart' show AppSuccessResponse;
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';
import 'package:dummy/core/payload/edit_account_payload.dart';

class EditAccountUsecases {
  EditAccountUsecases(this.repository);
  final ProfileRepository repository;
  AppSuccessResponse call({required EditAccountPayload payload}) {
    return repository.editAccount(payload: payload);
  }
}
