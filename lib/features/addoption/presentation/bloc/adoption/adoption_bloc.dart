import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/features/addoption/domain/entities/adoption.dart';
import 'package:dummy/features/addoption/domain/usecases/adoption_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'adoption_event.dart';
part 'adoption_state.dart';
part 'adoption_bloc.freezed.dart';

class AdoptionBloc extends Bloc<AdoptionEvent, AdoptionState> {
  AdoptionBloc({required AdoptionUsecases adoptionUsecases})
    : __adoptionUsecases = adoptionUsecases,
      super(AdoptionState()) {
    on<_Adoptions>(__adoptions);
  }
  final AdoptionUsecases __adoptionUsecases;

  FutureOr<void> __adoptions(
    _Adoptions event,
    Emitter<AdoptionState> emit,
  ) async {
    emit(state.copyWith(adoptionStatus: Status.loading));
    final result = await __adoptionUsecases();
    result.fold(
      (error) {
        emit(state.copyWith(adoptionStatus: Status.failure));
      },
      (success) {
        emit(state.copyWith(adoptionStatus: Status.success, adoptions: success));
        
      },
    );
  }
}
