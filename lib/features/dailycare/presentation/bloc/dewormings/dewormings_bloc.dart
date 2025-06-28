import 'package:dummy/core/enum/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/deworming.dart';
import '../../../domain/usecases/dewormings_usecases.dart';

part 'dewormings_event.dart';
part 'dewormings_state.dart';
part 'dewormings_bloc.freezed.dart';

class DewormingsBloc extends Bloc<DewormingsEvent, DewormingsState> {
  DewormingsBloc({required DewormingsUsecases dewormingsUsecases})
    : _dewormingsUsecases = dewormingsUsecases,
      super(DewormingsState()) {
    on<_Dewormings>(__dewormings);
  }
  final DewormingsUsecases _dewormingsUsecases;

  Future<void> __dewormings(
    _Dewormings event,
    Emitter<DewormingsState> emit,
  ) async {
    emit(state.copyWith(dewormingsStatus: Status.loading));
    final result = await _dewormingsUsecases(event.date);

    result.fold(
      (failure) => emit(state.copyWith(dewormingsStatus: Status.error)),
      (success) => emit(
        state.copyWith(dewormingsStatus: Status.success, dewormings: success),
      ),
    );
  }
}
