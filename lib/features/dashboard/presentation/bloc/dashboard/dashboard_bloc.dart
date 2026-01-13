import 'dart:async';

import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/dashboard/domain/usecases/dashboard_details_usecases.dart';
import 'package:dummy/features/health/presentation/bloc/health/health_bloc.dart';
import 'package:dummy/features/profile/presentation/bloc/account/account_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../health/presentation/bloc/vaccinations/vaccinations_bloc.dart';

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
    on<_SelectedPetId>(__selectedPetId);
    on<_SelectedPet>(__selectedPet);
    on<_ChangePage>(__changePage);
  }
  final DashboardDetailsUsecases __dashboardPetUsecases;
  Future<void> __pets(
    _DashboardPetDetails event,
    Emitter<DashboardState> emit,
  ) async {
    currentContext.read<AuthBloc>().add(AuthEvent.updateFcm());
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
            petImage: success.isNotEmpty ? success.first.imageUrl ?? '' : '',
            petName: success.isNotEmpty ? success.first.name : '',
            selectedPet: success.isNotEmpty ? success.first : null,
          ),
        );
        currentContext.read<HealthBloc>().add(HealthEvent.getAiInsights());
      },
    );
    currentContext.read<AccountBloc>().add(AccountEvent.init());
    currentContext.read<VaccinationsBloc>().add(
      VaccinationsEvent.vaccinations(''),
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

  void __changePage(_ChangePage event, Emitter<DashboardState> emit) {
    emit(state.copyWith(pageIndex: event.index));
  }

  void __selectedPetId(_SelectedPetId event, Emitter<DashboardState> emit) {
    emit(state.copyWith(selectedPetId: event.selectedPetId));
    emit(
      state.copyWith(
        selectedPet: state.dashboardPetDetails.firstWhere(
          (pet) => pet.id == event.selectedPetId,
        ),
      ),
    );
  }

  void __selectedPet(_SelectedPet event, Emitter<DashboardState> emit) {
    emit(
      state.copyWith(
        selectedPet: event.selectedPet,
        selectedPetId: event.selectedPet.id,
      ),
    );
    currentContext.read<HealthBloc>().add(HealthEvent.getAiInsights());
  }
}
