import 'package:dummy/core/utils/type_def.dart' show AppTypeResponse;
import 'package:dummy/features/profile/domain/entities/account_detail.dart';
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';

class AccountDetailUsecases {
  AccountDetailUsecases(this.repository);
  final ProfileRepository repository;
  AppTypeResponse<AccountDetail> call() {
    return repository.accountMe();
  }
}