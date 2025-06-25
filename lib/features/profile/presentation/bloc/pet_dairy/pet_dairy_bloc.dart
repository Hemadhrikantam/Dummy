import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/features/profile/domain/usecases/documents_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/event_fields_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/documents.dart';
import '../../../domain/entities/event_fields.dart';

part 'pet_dairy_event.dart';
part 'pet_dairy_state.dart';
part 'pet_dairy_bloc.freezed.dart';

class PetDairyBloc extends Bloc<PetDairyEvent, PetDairyState> {
  PetDairyBloc({
    required DocumentsUsecases documentsUsecases,
    required EventFieldsUsecases eventFieldsUsecases,
  })  : _documentsUsecases = documentsUsecases,
        _eventFieldsUsecases = eventFieldsUsecases,
        super(const PetDairyState()) {
    on<_Initialization>(_initialization);
    on<_EventId>(__eventId);
  }

  final DocumentsUsecases _documentsUsecases;
  final EventFieldsUsecases _eventFieldsUsecases;

  Future<void> _initialization(
    _Initialization event,
    Emitter<PetDairyState> emit,
  ) async {
    emit(state.copyWith(initStatus: Status.loading));
    final documents = await _documents();
    final events =  await _eventFields();
    emit(
      state.copyWith(
        documents: documents,
        eventFields: events,
        initStatus: Status.success,
      ),
    );
  }

  Future<List<Documents>> _documents() async {
    final result = await _documentsUsecases();
    return result.fold((l) => [], (r) => r);
  }

  Future<List<DropItem>> _eventFields() async {
    final result = await _eventFieldsUsecases();
    return result.fold((l) => [], (r) => r);
  }

  void __eventId(_EventId event, Emitter<PetDairyState> emit) {
    final eventId = DropdownValue.dirty(event.id);
    emit(state.copyWith(eventId: eventId));
  }
}
