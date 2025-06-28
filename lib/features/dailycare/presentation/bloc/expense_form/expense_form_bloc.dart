import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/expense_payload.dart';
import 'package:dummy/features/dailycare/domain/usecases/add_expense_usecases.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_form_event.dart';
part 'expense_form_state.dart';
part 'expense_form_bloc.freezed.dart';

class ExpenseFormBloc extends Bloc<ExpenseFormEvent, ExpenseFormState> {
  ExpenseFormBloc({required AddExpenseUsecases addExpenseUsecases})
      : _addExpenseUsecase = addExpenseUsecases,
        super(const ExpenseFormState()) {
    on<_Init>(_onInit);
    on<_Date>(_onDate);
    on<_Category>(_onCategory);
    on<_Notes>(_onNotes);
    on<_Media>(_onMedia);
    on<_Submit>(_onSubmit);
  }

  final AddExpenseUsecases _addExpenseUsecase;

  void _onInit(_Init event, Emitter<ExpenseFormState> emit) {
    emit(state.copyWith(petId: event.petId));
  }

  void _onDate(_Date event, Emitter<ExpenseFormState> emit) {
    emit(state.copyWith(date: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onCategory(_Category event, Emitter<ExpenseFormState> emit) {
    emit(state.copyWith(category: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onNotes(_Notes event, Emitter<ExpenseFormState> emit) {
    emit(state.copyWith(notes: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onMedia(_Media event, Emitter<ExpenseFormState> emit) {
    emit(state.copyWith(media: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  Future<void> _onSubmit(_Submit event, Emitter<ExpenseFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));

    final result = await _addExpenseUsecase(
      payload: ExpensePayload(
        date: DateTime.parse(state.date.value),
        category: state.category.value,
        notes: state.notes.value,
        media: await MultipartFile.fromFile(
          state.media.value,
          filename: state.media.value.split('/').last,
        ),
        pet: state.petId,
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(submitStatus: Status.error)),
      (success) => emit(state.copyWith(submitStatus: Status.success)),
    );
  }
}
