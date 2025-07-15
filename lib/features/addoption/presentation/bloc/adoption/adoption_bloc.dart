import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/features/addoption/domain/entities/adoption.dart';
import 'package:dummy/features/addoption/domain/usecases/adoption_usecases.dart';
import 'package:dummy/features/addoption/domain/usecases/all_pets_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'adoption_event.dart';
part 'adoption_state.dart';
part 'adoption_bloc.freezed.dart';

class AdoptionBloc extends Bloc<AdoptionEvent, AdoptionState> {
  AdoptionBloc({
    required AdoptionUsecases adoptionUsecases,
    required AllPetsUsecases allPetsUsecases,
  }) : __adoptionUsecases = adoptionUsecases,
       __allPetsUsecases = allPetsUsecases,

       super(AdoptionState()) {
    on<_Adoptions>(__adoptions);
  }
  final AdoptionUsecases __adoptionUsecases;
  final AllPetsUsecases __allPetsUsecases;

  FutureOr<void> __adoptions(
    _Adoptions event,
    Emitter<AdoptionState> emit,
  ) async {
    emit(state.copyWith(adoptionStatus: Status.loading));
    final result = await __adoptionUsecases();
    final allPets = await __allPets();

    result.fold(
      (error) {
        emit(state.copyWith(adoptionStatus: Status.failure));
      },
      (success) {
        emit(
          state.copyWith(
            adoptionStatus: Status.success,
            adoptions: success,
            allPets: allPets,
          ),
        );
      },
    );
  }

  Future<List<Adoption>> __allPets() async {
    final result = await __allPetsUsecases();
    return result.fold((l) => [], (r) => r);
  }
}
