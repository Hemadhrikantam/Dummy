import 'package:dummy/core/utils/type_def.dart' show AppSuccessResponse;
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';

class AddAccountUserUsecases {
  AddAccountUserUsecases(this.repository);
  final ProfileRepository repository;
  AppSuccessResponse call({
    required String mobileNumber,
    required String name,
    required Role role,
  }) {
    return repository.addAccountUser(
      mobileNumber: mobileNumber,
      name: name,
      role: role.name,
    );
  }
}

enum Role { Viewer, Collaborator }
