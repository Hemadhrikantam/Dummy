import 'package:dummy/core/enum/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/meal.dart';
import '../../../domain/usecases/meals_usecases.dart';

part 'meals_event.dart';
part 'meals_state.dart';
part 'meals_bloc.freezed.dart';

class MealsBloc extends Bloc<MealsEvent, MealsState> {
  MealsBloc({required MealsUsecases mealsUsecases})
    : _mealsUsecases = mealsUsecases,
      super(MealsState()) {
    on<_Meals>(__meals);
  }
  final MealsUsecases _mealsUsecases;

  Future<void> __meals(_Meals event, Emitter<MealsState> emit) async {
    emit(state.copyWith(mealsStatus: Status.loading));
    final result = await _mealsUsecases(event.date);

    result.fold(
      (failure) => emit(state.copyWith(mealsStatus: Status.error)),
      (success) =>
          emit(state.copyWith(mealsStatus: Status.success, meals: success)),
    );
  }
}
