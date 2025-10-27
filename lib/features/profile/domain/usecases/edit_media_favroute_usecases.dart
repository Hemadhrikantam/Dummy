import 'package:dummy/core/utils/type_def.dart' show AppSuccessResponse;
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';

class EditMediaFavrouteUsecases {
  EditMediaFavrouteUsecases(this.repository);
  final ProfileRepository repository;
  AppSuccessResponse call({required String id, required bool isFavroute}) {
    return repository.updateFavroute(mediaId: id, isFavroute: isFavroute);
  }
}
