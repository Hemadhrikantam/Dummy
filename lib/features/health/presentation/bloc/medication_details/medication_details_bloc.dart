import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/features/health/data/models/medication_date_model.dart';
import 'package:dummy/features/health/domain/entities/medication.dart';
import 'package:dummy/features/health/domain/entities/medication_date.dart';
import 'package:dummy/features/health/domain/usecases/get_medication_date_usecases.dart';
import 'package:dummy/features/health/domain/usecases/get_medication_usecases.dart';
import 'package:dummy/features/health/domain/usecases/update_medication_date_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medication_details_event.dart';
part 'medication_details_state.dart';
part 'medication_details_bloc.freezed.dart';

class MedicationDetailsBloc
    extends Bloc<MedicationDetailsEvent, MedicationDetailsState> {
  MedicationDetailsBloc({
    required GetMedicationUsecases getMedicationUsecases,
    required GetMedicationDateUsecases dateUsecases,
    required UpdateMedicationDateUsecases editDateUsecases,
  }) : _getMedicationUsecases = getMedicationUsecases,
       _dateUsecases = dateUsecases,
       _editDateUsecases = editDateUsecases,
       super(MedicationDetailsState()) {
    on<_Init>(__init);
    on<_GetDate>(__getDate);
    on<_UpdateDate>(__updateDate);
  }
  final GetMedicationUsecases _getMedicationUsecases;
  final GetMedicationDateUsecases _dateUsecases;
  final UpdateMedicationDateUsecases _editDateUsecases;

  Future<void> __init(_Init event, Emitter<MedicationDetailsState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final result = await _getMedicationUsecases(id: event.id);
    result.fold((l) {}, (r) {
      List<DateTime> dates = [];
      for (int i = 0; i <= r.endDate.difference(r.startDate).inDays; i++) {
        dates.add(r.startDate.add(Duration(days: i)));
      }
      emit(
        state.copyWith(
          id: event.id,
          medication: r,
          dates:
              dates
                  .map(
                    (e) => MedicationDate(
                      id: 0,
                      date: e,
                      morning: false,
                      afternoon: false,
                      night: false,
                    ),
                  )
                  .toList(),
          initStatus: Status.success,
        ),
      );
    });
  }

  Future<void> __getDate(
    _GetDate event,
    Emitter<MedicationDetailsState> emit,
  ) async {
    final dates = [...state.dates];
    final date = dates.firstWhere((e) => e.date == event.date);
    final index = dates.indexOf(date);
    final result = await _dateUsecases(date: event.date, id: state.id);
    result.fold((l) {}, (r) {
      dates[index] = r;
      emit(state.copyWith(dates: dates));
    });
  }

  Future<void> __updateDate(
    _UpdateDate event,
    Emitter<MedicationDetailsState> emit,
  ) async {
    final dates = [...state.dates];
    final date = dates.firstWhere((e) => e.date == event.value.date);
    final index = dates.indexOf(date);
    dates[index] = event.value;
    emit(state.copyWith(dates: dates));
    _editDateUsecases(
      id: state.id,
      payload: MedicationDateModel(
        id: event.value.id,
        date: event.value.date,
        morning: event.value.morning,
        afternoon: event.value.afternoon,
        night: event.value.night,
      ),
    );
  }
}
