import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/features/addoption/domain/entities/adoption.dart';
import 'package:dummy/features/addoption/domain/usecases/adoption_usecases.dart';
import 'package:dummy/features/addoption/domain/usecases/all_pets_usecases.dart';
import 'package:dummy/features/ngo/domain/entities/listing.dart';
import 'package:dummy/features/ngo/domain/usecases/pet_listing_usecase.dart';
import 'package:dummy/features/ngo/domain/usecases/mark_adopted_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'adoption_event.dart';
part 'adoption_state.dart';
part 'adoption_bloc.freezed.dart';

class AdoptionBloc extends Bloc<AdoptionEvent, AdoptionState> {
  AdoptionBloc({
    required PetListingUsecase petListingUsecase,
    required MarkAdoptedUsecase markAdoptedUsecase,
  }) : _petListingUsecase = petListingUsecase,
       _markAdoptedUsecase = markAdoptedUsecase,
       super(AdoptionState()) {
    on<_Adoptions>(__adoptions);
    on<_MarkStatus>(__markStatus);
  }
  final PetListingUsecase _petListingUsecase;
  final MarkAdoptedUsecase _markAdoptedUsecase;

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
}
