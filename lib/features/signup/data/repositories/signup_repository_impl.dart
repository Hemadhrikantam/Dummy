import '../../../../core/models/drop_item.dart';
import '../../../../core/utils/type_def.dart';
import '../../domain/repositories/signup_repository.dart';
import '../datasources/signup_datasource.dart';

class SignupRepositoryImpl extends SignupRepository {
  SignupRepositoryImpl(this._signupDatasource);
  final SignupDatasource _signupDatasource;
  
  @override
  AppTypeResponse<List<DropItem>> catBreeds() {
    return _signupDatasource.catBreeds();
  }

  @override
  AppTypeResponse<List<DropItem>> dogBreeds() {
    return _signupDatasource.dogBreeds();
  }

  @override
  AppTypeResponse<List<DropItem>> personalityTags() {
    return _signupDatasource.personalityTags();
  }
}
