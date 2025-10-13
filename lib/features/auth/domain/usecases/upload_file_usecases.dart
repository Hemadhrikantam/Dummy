import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/features/auth/data/models/presign_model.dart';
import '../../../../core/utils/type_def.dart';
import '../repositories/auth_repository.dart';

class UploadFileUsecases {
  UploadFileUsecases(this.authRepository);
  final AuthRepository authRepository;
  AppTypeResponse<PresignModel> call({
    required String path,
    bool public = true,
    required UploadType type,
  }) {
    return authRepository.uploadFile(path: path, type: type, public: public);
  }
}
