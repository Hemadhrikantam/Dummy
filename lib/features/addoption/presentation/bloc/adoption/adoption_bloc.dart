import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/ngo/domain/entities/listing.dart';
import 'package:dummy/features/ngo/domain/usecases/pet_listing_usecase.dart';
import 'package:dummy/features/ngo/domain/usecases/mark_adopted_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/bottom_models.dart';
import '../../../../ngo/domain/usecases/delete_pet_usecase.dart';

part 'adoption_event.dart';
part 'adoption_state.dart';
part 'adoption_bloc.freezed.dart';

class AdoptionBloc extends Bloc<AdoptionEvent, AdoptionState> {
  AdoptionBloc({
    required PetListingUsecase petListingUsecase,
    required MarkAdoptedUsecase markAdoptedUsecase,
    required DeletePetUsecase deletePetUsecase,
  }) : _petListingUsecase = petListingUsecase,
       _markAdoptedUsecase = markAdoptedUsecase,
       _deletePetUsecase = deletePetUsecase,
       super(AdoptionState()) {
    on<_Adoptions>(__adoptions);
    on<_MarkStatus>(__markStatus);
    on<_DeletePet>(__deletePet);
  }
  final PetListingUsecase _petListingUsecase;
  final MarkAdoptedUsecase _markAdoptedUsecase;
  final DeletePetUsecase _deletePetUsecase;

  FutureOr<void> __adoptions(
    _Adoptions event,
    Emitter<AdoptionState> emit,
  ) async {
    emit(state.copyWith(adoptionStatus: Status.loading));
    final result = await _petListingUsecase();
    final allPets = await __allPets();

    result.fold(
      (error) {
        emit(state.copyWith(adoptionStatus: Status.failure));
      },
      (success) {
        emit(
          state.copyWith(
            adoptionStatus: Status.success,
            adoptions: success.list,
            allPets: allPets,
          ),
        );
      },
    );
  }

  Future<List<Listing>> __allPets() async {
    final result = await _petListingUsecase(all: true);
    return result.fold((l) => [], (r) => r.list);
  }

  FutureOr<void> __markStatus(
    _MarkStatus event,
    Emitter<AdoptionState> emit,
  ) async {
    emit(state.copyWith(adoptionStatus: Status.loading));
    final result = await _markAdoptedUsecase(
      id: event.id,
      isActive: true,
      status: event.status,
    );
    await result.fold(
      (error) async {
        emit(state.copyWith(adoptionStatus: Status.failure));
      },
      (success) async {
        final refreshed = await _petListingUsecase();
        refreshed.fold(
          (err) {
            emit(state.copyWith(adoptionStatus: Status.failure));
          },
          (ok) {
            emit(
              state.copyWith(
                adoptionStatus: Status.success,
                adoptions: ok.list,
              ),
            );
          },
        );
      },
    );
  }

  FutureOr<void> __deletePet(
    _DeletePet event,
    Emitter<AdoptionState> emit,
  ) async {
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
                adoptions: ok.list,
              ),
            );
            emit(state.copyWith(deleteAdoptionStatus: Status.init));
          },
        );
      },
    );
  }
}
