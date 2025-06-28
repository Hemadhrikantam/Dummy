import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/meal_payload.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/dailycare/domain/usecases/add_meal_usecases.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_form_event.dart';
part 'meal_form_state.dart';
part 'meal_form_bloc.freezed.dart';

class MealFormBloc extends Bloc<MealFormEvent, MealFormState> {
  MealFormBloc({required AddMealUsecases addMealUsecases})
    : _addMealUsecases = addMealUsecases,
      super(MealFormState()) {
    on<_Init>(__init);
    on<_Submit>(__submit);
    on<_Date>(__date);
    on<_MealType>(__mealType);
    on<_Notes>(__notes);
    on<_Media>(__media);
    on<_MealTime>(__mealTime);
  }
  final AddMealUsecases _addMealUsecases;
  Future<void> __init(_Init event, Emitter<MealFormState> emit) async {
    emit(state.copyWith(
      mealTimes: [
        DropItemModel(id: 1, value: 'Breakfast'),
        DropItemModel(id: 2, value: 'Lunch'),
        DropItemModel(id: 3, value: 'Dinner'),
        DropItemModel(id: 4, value: 'Evening Snack'),
      ],
      submitStatus: Status.init,
      petId: event.petId,
    ));
  }

  Future<void> __submit(_Submit event, Emitter<MealFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));
    final result = await _addMealUsecases(
      payload: MealPayload(
      date: DateTime.parse(state.date.value),
      mealType: state.mealType.value,
      notes: state.notes.value,
      media:await MultipartFile.fromFile(
        state.media.value,
        filename: state.media.value.split('/').last,
      ), 
      timeOfMeal: state.mealTime.value!.value.contains("Lunch")?
        "lunch":
        state.mealTime.value!.value.contains("Breakfast")?
        "breakfast":
        state.mealTime.value!.value.contains("Dinner")?
        "dinner":
        state.mealTime.value!.value.contains("Evening Snack")?
        "eveningSnack":
        '', 
      pet: state.petId,
      )
    );
    result.fold(
      (failure) => emit(state.copyWith(submitStatus: Status.error)),
      (success) => emit(state.copyWith(submitStatus: Status.success)),
    );
  }

  void __date(_Date event, Emitter<MealFormState> emit) {
    final value = NotEmpty.dirty(value: event.value);

    emit(
      state.copyWith(
        date: value,
        validation: Formz.validate([
          value,
          state.mealType,
          state.notes,
          state.media,
          state.mealTime,
        ]),
      ),
    );
  }

  void __mealType(_MealType event, Emitter<MealFormState> emit) {
    final value = NotEmpty.dirty(value: event.value);

    emit(
      state.copyWith(
        mealType: value,
        validation: Formz.validate([
          value,
          state.date,
          state.notes,
          state.media,
          state.mealTime,
        ]),
      ),
    );
  }

  void __notes(_Notes event, Emitter<MealFormState> emit) {
    final value = NotEmpty.dirty(value: event.value);

    emit(
      state.copyWith(
        notes: value,
        validation: Formz.validate([
          value,
          state.mealType,
          state.date,
          state.media,
          state.mealTime,
        ]),
      ),
    );
  }

  void __media(_Media event, Emitter<MealFormState> emit) {
    final value = NotEmpty.dirty(value: event.value);

    emit(
      state.copyWith(
        media: value,
        validation: Formz.validate([
          value,
          state.mealType,
          state.notes,
          state.date,
          state.mealTime,
        ]),
      ),
    );
  }

  void __mealTime(_MealTime event, Emitter<MealFormState> emit) {
    final value = DropdownValue.dirty(event.value);

    emit(
      state.copyWith(
        mealTime: value,
        validation: Formz.validate([
          value,
          state.mealType,
          state.notes,
          state.media,
          state.date,
        ]),
      ),
    );
  }
}
