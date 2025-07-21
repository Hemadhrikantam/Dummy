import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/features/dailycare/domain/entities/overview.dart';
import 'package:dummy/features/dailycare/domain/usecases/overview_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enum/status.dart';

part 'overview_event.dart';
part 'overview_state.dart';
part 'overview_bloc.freezed.dart';

class OverviewBloc extends Bloc<OverviewEvent, OverviewState> {
  OverviewBloc({required OverviewUsecases overviewUsecases})
    : _overviewUsecases = overviewUsecases,
      super((OverviewState())) {
      on<_Overview>(__overview);
  }
  final OverviewUsecases _overviewUsecases;

  FutureOr<void> __overview(event, Emitter<OverviewState> emit) async{
    emit(state.copyWith(initStatus: Status.loading));
    LogUtility.info('petid ${event.petId}');
    final result = await _overviewUsecases(event.petId);
    result.fold(
      (failure) => emit(state.copyWith(initStatus: Status.error)),
      (success) => emit(state.copyWith(initStatus: Status.success,overview: success)),
    );


  }
}
