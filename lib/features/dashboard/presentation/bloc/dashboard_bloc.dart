import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dummy/api/api.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/dashboard/domain/usecases/dashboard_details_usecases.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc({required DashboardDetailsUsecases dashboardDetailsUsecases})
    : __dashboardPetUsecases = dashboardDetailsUsecases,
      super(DashboardState()) {
    on<_DashboardPetDetails>(__pets);
    on<_PetName>(__petName);
    on<_PetImage>(__petImage);
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
            petImage: success.first.petImage.petImage,
            petName: success.first.petName,
            selectedPet:
                success.isNotEmpty
                    ? success.first
                    : null
          ),
        );
      },
    );
  }

  void __petName(_PetName event, Emitter<DashboardState> emit) {
        LogUtility.info('------> event ${event.petName}');

    emit(state.copyWith(petName: event.petName));
        LogUtility.info('------> state ${event.petName}');
  }

  void __petImage(_PetImage event, Emitter<DashboardState> emit) {
    LogUtility.info('------> event ${event.petImage}');
    emit(state.copyWith(petImage: event.petImage));
    LogUtility.info('------> state ${event.petImage}');
  }
}
