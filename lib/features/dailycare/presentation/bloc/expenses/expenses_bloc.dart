import 'package:dummy/core/enum/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/expense.dart';
import '../../../domain/usecases/expenses_usecases.dart';

part 'expenses_event.dart';
part 'expenses_state.dart';
part 'expenses_bloc.freezed.dart';

class ExpensesBloc extends Bloc<ExpensesEvent, ExpensesState> {
  ExpensesBloc({required ExpensesUsecases expensesUsecases})
    : _expensesUsecases = expensesUsecases,
      super(ExpensesState()) {
    on<_Expenses>(__expenses);
  }
  final ExpensesUsecases _expensesUsecases;

  Future<void> __expenses(_Expenses event, Emitter<ExpensesState> emit) async {
    emit(state.copyWith(expensesStatus: Status.loading));
    final result = await _expensesUsecases(event.date);

    result.fold(
      (failure) => emit(state.copyWith(expensesStatus: Status.error)),
      (success) => emit(
        state.copyWith(expensesStatus: Status.success, expenses: success),
      ),
    );
  }
}
