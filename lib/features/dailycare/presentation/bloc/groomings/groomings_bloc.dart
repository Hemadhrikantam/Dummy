import 'package:dummy/core/enum/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/grooming.dart';
import '../../../domain/usecases/groomings_usecases.dart';

part 'groomings_event.dart';
part 'groomings_state.dart';
part 'groomings_bloc.freezed.dart';

class GroomingsBloc extends Bloc<GroomingsEvent, GroomingsState> {
  GroomingsBloc({required GroomingsUsecases groomingsUsecases})
    : _groomingsUsecases = groomingsUsecases,
      super(GroomingsState()) {
    on<_Groomings>(__groomings);
  }
  final GroomingsUsecases _groomingsUsecases;

  Future<void> __groomings(
    _Groomings event,
    Emitter<GroomingsState> emit,
  ) async {
    emit(state.copyWith(groomingsStatus: Status.loading));
    final result = await _groomingsUsecases(event.date);

    result.fold(
      (failure) => emit(state.copyWith(groomingsStatus: Status.error)),
      (success) => emit(
        state.copyWith(groomingsStatus: Status.success, groomings: success),
      ),
    );
  }
}
