import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/features/profile/domain/usecases/documents_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/documents.dart';
import '../../../domain/entities/event_fields.dart';

part 'pet_dairy_event.dart';
part 'pet_dairy_state.dart';
part 'pet_dairy_bloc.freezed.dart';

class PetDairyBloc extends Bloc<PetDairyEvent, PetDairyState> {
  PetDairyBloc({required DocumentsUsecases documentsUsecases})
    : __documentsUsecases = documentsUsecases,
      super(PetDairyState()) {
    on<_Initialization>(__initialization);
  }
  final DocumentsUsecases __documentsUsecases;
  FutureOr<void> __initialization(
    _Initialization event,
    Emitter<PetDairyState> emit,
  ) async {
    emit(state.copyWith(initStatus: Status.loading));
    final documents = await __documents();
    emit(state.copyWith(initStatus: Status.success, documents: documents));
  }

  //  Future<List<EventFields>> __events() async {
  //   // final result = await __catBreedUsecases();
  //   // return result.fold((error) => [], (success) => success);
  // }

  Future<List<Documents>> __documents() async {
    final result = await __documentsUsecases();
    return result.fold((error) => [], (success) => success);
  }

  // Future<List<DropItem>> __personalityTags() async {
  //   final result = await __personalityTagUsecases();
  //   return result.fold((error) => [], (success) => success);
  // }
}
