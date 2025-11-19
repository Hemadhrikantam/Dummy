import 'package:dummy/core/error/app_error.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/ngo/data/datasources/ngo_datasource.dart';
import 'package:dummy/features/ngo/domain/entities/listing.dart';
import 'package:dummy/features/ngo/domain/entities/ngo_profile.dart';
import 'package:dummy/features/ngo/domain/repositories/ngo_repository.dart';

class NgoRepositoryImpl extends NgoRepository {
  NgoRepositoryImpl({required this.datasource});
  final NgoDatasource datasource;

  @override
  AppTypeResponse<NgoProfile> getProfile() {
    return datasource.getProfile();
  }

  @override
  AppSuccessResponse updateProfile({required payload}) {
    return datasource.updateProfile(payload: payload);
  }

  @override
  AppSuccessResponse addPetListing({
    required String desc,
    required String petId,
    required String status,
  }) {
    return datasource.addPetListing(desc: desc, petId: petId, status: status);
  }

  @override
  AppSuccessResponse updatePetListing({
    required String id,
    required String desc,
    required String petId,
    required String status,
  }) {
    return datasource.updatePetListing(
      id: id,
      desc: desc,
      petId: petId,
      status: status,
    );
  }

  @override
  AppSuccessResponse markPetListingStatus({
    required String id,
    required bool isActive,
    required String status,
  }) {
    return datasource.markPetListingStatus(
      id: id,
      isActive: isActive,
      status: status,
    );
  }

  @override
  AppTypeResponse<CountListing> petListing({bool all = false}) {
    return datasource.petListing(all: all);
  }
}
