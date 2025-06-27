import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/dashboard/domain/usecases/dashboard_details_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc({required DashboardDetailsUsecases dashboardDetailsUsecases})
    : __dashboardPetUsecases = dashboardDetailsUsecases,
      super(DashboardState()) {
    on<_DashboardPetDetails>(__pets);
  }
  final DashboardDetailsUsecases __dashboardPetUsecases;
  Future<void> __pets(
    _DashboardPetDetails event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(initStatus: Status.loading));
    final result = await __dashboardPetUsecases();
    result.fold(
      (error) {
        emit(state.copyWith(initStatus: Status.failure));
      },
      (success) {
        emit(
          state.copyWith(
            initStatus: Status.success,
            dashboardPetDetails: success,
          ),
        );
      },
    );
  }
}
