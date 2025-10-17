import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/features/ngo/domain/entities/listing.dart';
import 'package:dummy/features/ngo/domain/usecases/pet_listing_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dummy/features/ngo/domain/entities/ngo_profile.dart';
import 'package:dummy/features/ngo/domain/usecases/get_ngo_profile_usecase.dart';
import 'package:dummy/core/utils/log_utility.dart';

part 'ngo_home_event.dart';
part 'ngo_home_state.dart';
part 'ngo_home_bloc.freezed.dart';

class NgoHomeBloc extends Bloc<NgoHomeEvent, NgoHomeState> {
  NgoHomeBloc({
    required GetNgoProfileUsecase getNgoProfileUsecase,
    required PetListingUsecase petListingUsecase,
  }) : _getNgoProfileUsecase = getNgoProfileUsecase,
       _petListingUsecase = petListingUsecase,
       super(const NgoHomeState()) {
    on<_Init>(_onInit);
  }

  final GetNgoProfileUsecase _getNgoProfileUsecase;
  final PetListingUsecase _petListingUsecase;

  Future<void> _onInit(_Init event, Emitter<NgoHomeState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final result = await _getNgoProfileUsecase();
    final listingResult = (await _petListingUsecase()).fold(
      (l) => null,
      (r) => r,
    );
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
          ),
        );
        emit(state.copyWith(initStatus: Status.init));
      },
    );
  }
}
