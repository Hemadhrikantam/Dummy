import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/services/location_service.dart';
import 'package:dummy/features/health/domain/entities/clinic.dart';
import 'package:dummy/features/health/domain/usecases/list_clinic_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vet_near_me_event.dart';
part 'vet_near_me_state.dart';
part 'vet_near_me_bloc.freezed.dart';

class VetNearMeBloc extends Bloc<VetNearMeEvent, VetNearMeState> {
  VetNearMeBloc({required ListClinicUsecases listClinicUsecases})
    : _listClinicUsecases = listClinicUsecases,
      super(VetNearMeState()) {
    on<_Init>(__init);
    on<_LoadClinic>(__loadClinic);
  }
  final ListClinicUsecases _listClinicUsecases;
  void __init(_Init event, Emitter<VetNearMeState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final locationService = LocationService();
    final locationData = await locationService.getCurrentLocation();
    try {
      final clinics = await _listClinicUsecases(
        latitude: locationData?.latitude ?? 0,
        longitude: locationData?.longitude ?? 0,
      );
      clinics.fold(
        (l) => emit(state.copyWith(initStatus: Status.failure)),
        (r) => emit(state.copyWith(initStatus: Status.success, clinics: r)),
      );
    } catch (e) {
      emit(state.copyWith(initStatus: Status.failure));
    }
  }

  void __loadClinic(_LoadClinic event, Emitter<VetNearMeState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final locationService = LocationService();
    final locationData = await locationService.getCurrentLocation();
    try {
      final clinics = await _listClinicUsecases(
        latitude: locationData?.latitude ?? 0,
        longitude: locationData?.longitude ?? 0,
      );
      clinics.fold(
        (l) => emit(state.copyWith(initStatus: Status.failure)),
        (r) => emit(state.copyWith(initStatus: Status.success, clinics: r)),
      );
    } catch (e) {
      emit(state.copyWith(initStatus: Status.failure));
    }
  }
}
