import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/walk_payload.dart';
import 'package:dummy/features/dailycare/domain/usecases/add_walk_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'walk_form_event.dart';
part 'walk_form_state.dart';
part 'walk_form_bloc.freezed.dart';

class WalkFormBloc extends Bloc<WalkFormEvent, WalkFormState> {
  WalkFormBloc({
    required AddWalkUsecases addWalkUsecases,
  }) : _addWalkUsecases = addWalkUsecases,
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
    emit(state.copyWith(
      durations: [
        DropItemModel(id: 1, value: '5 minutes'),
        DropItemModel(id: 2, value: '10 minutes'),
        DropItemModel(id: 3, value: '15 minutes'),
        DropItemModel(id: 4, value: '20 minutes'),
        DropItemModel(id: 4, value: '25 minutes'),
        DropItemModel(id: 4, value: '30 minutes'),  
        DropItemModel(id: 4, value: '45 minutes'),  
        DropItemModel(id: 4, value: '60 minutes'),  
      ],
      submitStatus: Status.init,
    ));
  }
  Future<void> __submit(_Submit event, Emitter<WalkFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));
    final result = await _addWalkUsecases(
      payload: WalkPayload(
      date: DateTime.parse(state.date.value),
      notes: state.notes.value,
      media:await MultipartFile.fromFile(
        state.media.value,
        filename: state.media.value.split('/').last,
      ), 
      pet: 1, 
      duration: state.duration.value!.value, 
      location: state.location.value,
      )
    );
    result.fold(
      (failure) => emit(state.copyWith(submitStatus: Status.error)),
      (success) => emit(state.copyWith(submitStatus: Status.success)),
    );
  }
  void __date(_Date event, Emitter<WalkFormState> emit) {
    emit(state.copyWith(date: NotEmpty.dirty(value:  event.value)));
  }
  void __location(_Location event, Emitter<WalkFormState> emit) {
    emit(state.copyWith(location: NotEmpty.dirty(value: event.value)));
  }
  void __notes(_Notes event, Emitter<WalkFormState> emit) {
    emit(state.copyWith(notes: NotEmpty.dirty(value: event.value)));
  }
  void __media(_Media event, Emitter<WalkFormState> emit) {
    emit(state.copyWith(media: NotEmpty.dirty(value: event.value)));
  }
  void __duration(_Duration event, Emitter<WalkFormState> emit) {
    emit(state.copyWith(duration: DropdownValue.dirty(event.value)));
  }
}
