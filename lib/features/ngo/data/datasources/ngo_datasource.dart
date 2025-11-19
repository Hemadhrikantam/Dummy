import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/ngo/data/models/listing_model.dart';
import 'package:dummy/features/ngo/data/models/ngo_profile_model.dart';

abstract class NgoDatasource {
  AppTypeResponse<NgoProfileModel> getProfile();
  AppSuccessResponse updateProfile({required Payload payload});
  AppSuccessResponse addPetListing({
    required String desc,
    required String petId,
    required String status,
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
  AppTypeResponse<CountListingModel> petListing({bool all = false});
}
