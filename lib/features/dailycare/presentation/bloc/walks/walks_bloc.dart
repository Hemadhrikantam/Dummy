import 'package:dummy/core/enum/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/walk.dart';
import '../../../domain/usecases/walks_usecases.dart';

part 'walks_event.dart';
part 'walks_state.dart';
part 'walks_bloc.freezed.dart';

class WalksBloc extends Bloc<WalksEvent, WalksState> {
  WalksBloc({required WalksUsecases walksUsecases})
    : _walksUsecases = walksUsecases,
      super(WalksState()) {
    on<_Walks>(__meals);
  }
  final WalksUsecases _walksUsecases;

  Future<void> __meals(_Walks event, Emitter<WalksState> emit) async {
    emit(state.copyWith(walksStatus: Status.loading));
    final result = await _walksUsecases(event.date);

    result.fold(
      (failure) => emit(state.copyWith(walksStatus: Status.error)),
      (success) =>
          emit(state.copyWith(walksStatus: Status.success, walks: success)),
    );
  }
}
