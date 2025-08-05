import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/features/health/domain/entities/vaccination.dart';
import 'package:dummy/features/health/domain/usecases/get_vaccination_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccination_details_event.dart';
part 'vaccination_details_state.dart';
part 'vaccination_details_bloc.freezed.dart';

class VaccinationDetailsBloc
    extends Bloc<VaccinationDetailsEvent, VaccinationDetailsState> {
  VaccinationDetailsBloc({
    required GetVaccinationUsecases getVaccinationUsecases,
  }) : _getVaccinationUsecases = getVaccinationUsecases,
       super(VaccinationDetailsState()) {
    on<_Init>(_init);
  }
  final GetVaccinationUsecases _getVaccinationUsecases;

  Future<void> _init(_Init event, Emitter<VaccinationDetailsState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final response = await _getVaccinationUsecases(id: event.id);
    response.fold(
      (failure) => emit(state.copyWith(initStatus: Status.error)),
      (vaccination) => emit(
        state.copyWith(initStatus: Status.success, vaccination: vaccination),
      ),
    );
  }
}
