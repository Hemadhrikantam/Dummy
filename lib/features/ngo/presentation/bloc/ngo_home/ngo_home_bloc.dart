import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/features/ngo/domain/entities/listing.dart';
import 'package:dummy/features/ngo/domain/usecases/pet_listing_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dummy/features/ngo/domain/entities/ngo_profile.dart';
import 'package:dummy/features/ngo/domain/usecases/get_ngo_profile_usecase.dart';
import 'package:dummy/core/utils/log_utility.dart';

import '../../../../../core/utils/bottom_models.dart';
import '../../../../../di/injection.dart';
import '../../../domain/usecases/delete_pet_usecase.dart';
import '../../../domain/usecases/mark_adopted_usecase.dart';

part 'ngo_home_event.dart';
part 'ngo_home_state.dart';
part 'ngo_home_bloc.freezed.dart';

class NgoHomeBloc extends Bloc<NgoHomeEvent, NgoHomeState> {
  NgoHomeBloc({
    required GetNgoProfileUsecase getNgoProfileUsecase,
    required PetListingUsecase petListingUsecase,
    required MarkAdoptedUsecase markAdoptedUsecase,
    required DeletePetUsecase deletePetUsecase,
  }) : _getNgoProfileUsecase = getNgoProfileUsecase,
       _petListingUsecase = petListingUsecase,
       _markAdoptedUsecase = markAdoptedUsecase,
       _deletePetUsecase = deletePetUsecase,
       super(const NgoHomeState()) {
    on<_Init>(_onInit);
    on<_MarkStatus>(__markStatus);
    on<_DeletePet>(__deletePet);
  }

  final GetNgoProfileUsecase _getNgoProfileUsecase;
  final PetListingUsecase _petListingUsecase;
  final MarkAdoptedUsecase _markAdoptedUsecase;
  final DeletePetUsecase _deletePetUsecase;

  Future<void> _onInit(_Init event, Emitter<NgoHomeState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final result = await _getNgoProfileUsecase();
    final allPetsResult = (await _petListingUsecase(
      all: true,
    )).fold((l) => null, (r) => r);
    final listingResult = (await _petListingUsecase(
      all: false,
    )).fold((l) => null, (r) => r);
    result.fold(
      (error) {
        LogUtility.error(error.message);
        emit(state.copyWith(profile: null, initStatus: Status.error));
        emit(state.copyWith(initStatus: Status.init));
      },
      (profile) {
        emit(
          state.copyWith(
            profile: profile,
            initStatus: Status.success,
            count: listingResult,
            listing: listingResult?.list ?? [],
            allPets: allPetsResult?.list ?? [],
          ),
        );
        emit(state.copyWith(initStatus: Status.init));
      },
    );
  }

  Future<void> __markStatus(
    _MarkStatus event,
    Emitter<NgoHomeState> emit,
  ) async {
    emit(state.copyWith(initStatus: Status.loading));
    final result = await _markAdoptedUsecase(
      id: event.id,
      isActive: true,
      status: event.status,
    );
    await result.fold(
      (error) async {
        emit(state.copyWith(initStatus: Status.failure));
      },
      (success) async {
        final refreshed = await _petListingUsecase();
        refreshed.fold(
          (err) {
            emit(state.copyWith(initStatus: Status.failure));
          },
          (ok) {
            emit(state.copyWith(initStatus: Status.success, listing: ok.list));
          },
        );
      },
    );
  }

  Future<void> __deletePet(_DeletePet event, Emitter<NgoHomeState> emit) async {
    emit(state.copyWith(deleteAdoptionStatus: Status.loading));
    final result = await _deletePetUsecase(id: event.id);
    await result.fold(
      (error) async {
        emit(state.copyWith(deleteAdoptionStatus: Status.failure));
      },
      (success) async {
        currentContext.pop();
        BottomModels.medicationDeleteSuccessBottomSheet(currentContext);
        final refreshed = await _petListingUsecase();
        refreshed.fold(
          (err) {
            emit(state.copyWith(deleteAdoptionStatus: Status.failure));
          },
          (ok) {
            emit(
              state.copyWith(
                deleteAdoptionStatus: Status.success,
                listing: ok.list,
              ),
            );
            emit(state.copyWith(deleteAdoptionStatus: Status.init));
          },
        );
      },
    );
  }
}
