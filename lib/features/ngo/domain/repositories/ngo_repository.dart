import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/ngo/domain/entities/listing.dart';
import 'package:dummy/features/ngo/domain/entities/ngo_profile.dart';

abstract class NgoRepository {
  AppTypeResponse<NgoProfile> getProfile();
  AppSuccessResponse updateProfile({required Payload payload});
  AppSuccessResponse addPetListing({
    required String desc,
    required String petId,
    required String status,
    String? contactEmail,
    String? contactPhone,
    String? contactAddress,
  });
  AppSuccessResponse updatePetListing({
    required String id,
    required String desc,
    required String petId,
    required String status,
  });
  AppSuccessResponse markPetListingStatus({
    required String id,
    required bool isActive,
    required String status,
  });
  AppTypeResponse<CountListing> petListing({bool all = false});
  AppSuccessResponse deletePet({required String id});
}
