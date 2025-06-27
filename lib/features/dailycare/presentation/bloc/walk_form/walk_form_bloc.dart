import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/walk_payload.dart';
import 'package:dummy/features/dailycare/domain/usecases/add_walk_usecases.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'walk_form_event.dart';
part 'walk_form_state.dart';
part 'walk_form_bloc.freezed.dart';

class WalkFormBloc extends Bloc<WalkFormEvent, WalkFormState> {
  WalkFormBloc({required AddWalkUsecases addWalkUsecases})
    : _addWalkUsecases = addWalkUsecases,
      super(const WalkFormState()) {
    on<_Init>(__init);
    on<_Submit>(__submit);
    on<_Date>(__date);
    on<_Duration>(__duration);
    on<_Location>(__location);
    on<_Notes>(__notes);
    on<_Media>(__media);
  }
  final AddWalkUsecases _addWalkUsecases;
  Future<void> __init(_Init event, Emitter<WalkFormState> emit) async {
    emit(
      state.copyWith(
        durations: [
          DropItemModel(id: 1, value: '5 mins'),
          DropItemModel(id: 2, value: '10 mins'),
          DropItemModel(id: 3, value: '15 mins'),
          DropItemModel(id: 4, value: '20 mins'),
          DropItemModel(id: 4, value: '25 mins'),
          DropItemModel(id: 4, value: '30 mins'),
          DropItemModel(id: 4, value: '45 mins'),
          DropItemModel(id: 4, value: '60 mins'),
        ],
        submitStatus: Status.init,
      ),
    );
  }

  Future<void> __submit(_Submit event, Emitter<WalkFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));
    final result = await _addWalkUsecases(
      payload: WalkPayload(
        date: DateTime.parse(state.date.value),
        notes: state.notes.value,
        media: await MultipartFile.fromFile(
          state.media.value,
          filename: state.media.value.split('/').last,
        ),
        pet: 1,
        duration: state.duration.value!.value,
        location: state.location.value,
      ),
    );
    result.fold(
      (failure) => emit(state.copyWith(submitStatus: Status.error)),
      (success) => emit(state.copyWith(submitStatus: Status.success)),
    );
  }

  void __date(_Date event, Emitter<WalkFormState> emit) {
    final value = NotEmpty.dirty(value: event.value);
    
    emit(
      state.copyWith(
        date: value,
        validation: Formz.validate([
          value,
          state.location,
          state.notes,
          state.media,
          state.duration,
        ]),
      ),
    );
  }

  void __location(_Location event, Emitter<WalkFormState> emit) {
    final value = NotEmpty.dirty(value: event.value);

    emit(
      state.copyWith(
        location: value,
        validation: Formz.validate([
          value,
          state.date,
          state.notes,
          state.media,
          state.duration,
        ]),
      ),
    );
  }

  void __notes(_Notes event, Emitter<WalkFormState> emit) {
    final value = NotEmpty.dirty(value: event.value);

    emit(
      state.copyWith(
        notes: value,
        validation: Formz.validate([
          value,
          state.location,
          state.date,
          state.media,
          state.duration,
        ]),
      ),
    );
  }

  void __media(_Media event, Emitter<WalkFormState> emit) {
    final value = NotEmpty.dirty(value: event.value);

    emit(
      state.copyWith(
        media: value,
        validation: Formz.validate([
          value,
          state.location,
          state.notes,
          state.date,
          state.duration,
        ]),
      ),
    );
  }

  void __duration(_Duration event, Emitter<WalkFormState> emit) {
    final value = DropdownValue.dirty(event.value);

    emit(
      state.copyWith(
        duration: value,
        validation: Formz.validate([
          value,
          state.location,
          state.notes,
          state.date,
          state.date,
        ]),
      ),
    );
  }
}
