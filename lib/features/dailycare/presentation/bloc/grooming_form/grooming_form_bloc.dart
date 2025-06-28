import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/grooming_payload.dart';
import 'package:dummy/features/dailycare/domain/usecases/add_grooming_usecases.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grooming_form_event.dart';
part 'grooming_form_state.dart';
part 'grooming_form_bloc.freezed.dart';

class GroomingFormBloc extends Bloc<GroomingFormEvent, GroomingFormState> {
  GroomingFormBloc({required AddGroomingUsecases addGroomingUsecases})
      : _addGroomingUsecase = addGroomingUsecases,
        super(const GroomingFormState()) {
    on<_Init>(_onInit);
    on<_Date>(_onDate);
    on<_GroomingType>(_onGroomingType);
    on<_Notes>(_onNotes);
    on<_Media>(_onMedia);
    on<_Submit>(_onSubmit);
  }

  final AddGroomingUsecases _addGroomingUsecase;

  void _onInit(_Init event, Emitter<GroomingFormState> emit) {
    emit(state.copyWith(petId: event.petId));
  }

  void _onDate(_Date event, Emitter<GroomingFormState> emit) {
    emit(state.copyWith(date: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onGroomingType(_GroomingType event, Emitter<GroomingFormState> emit) {
    emit(state.copyWith(groomingType: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onNotes(_Notes event, Emitter<GroomingFormState> emit) {
    emit(state.copyWith(notes: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onMedia(_Media event, Emitter<GroomingFormState> emit) {
    emit(state.copyWith(media: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  Future<void> _onSubmit(_Submit event, Emitter<GroomingFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));

    final result = await _addGroomingUsecase(
      payload: GroomingPayload(
        date: DateTime.parse(state.date.value),
        groomingtype: state.groomingType.value,
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
