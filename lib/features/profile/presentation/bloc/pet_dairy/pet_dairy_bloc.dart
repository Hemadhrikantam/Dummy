import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/features/profile/domain/entities/media.dart';
import 'package:dummy/features/profile/domain/usecases/delete_media_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/documents_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/edit_media_favroute_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/event_fields_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/favorite_medias_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/medias_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/documents.dart';

part 'pet_dairy_event.dart';
part 'pet_dairy_state.dart';
part 'pet_dairy_bloc.freezed.dart';

class PetDairyBloc extends Bloc<PetDairyEvent, PetDairyState> {
  PetDairyBloc({
    required DocumentsUsecases documentsUsecases,
    required MediasUsecases mediasUsecases,
    required FavoriteMediasUsecases favoriteMediasUsecases,
    required EventFieldsUsecases eventFieldsUsecases,
    required DeleteMediaUsecases deleteMediaUsecases,
    required EditMediaFavrouteUsecases editMediaFavrouteUsecases,
  }) : _documentsUsecases = documentsUsecases,
       _mediasUsecases = mediasUsecases,
       _favoriteMediasUsecases = favoriteMediasUsecases,
       _eventFieldsUsecases = eventFieldsUsecases,
       _deleteMediaUsecases = deleteMediaUsecases,
       _editMediaFavrouteUsecases = editMediaFavrouteUsecases,
       super(const PetDairyState()) {
    on<_Initialization>(_initialization);
    on<_EventId>(__eventId);
    on<_UpdateMediaFavroute>(_updateMediaFavroute);
    on<_DeleteMedia>(__deleteMedia);
  }

  final DocumentsUsecases _documentsUsecases;
  final MediasUsecases _mediasUsecases;
  final FavoriteMediasUsecases _favoriteMediasUsecases;
  final EventFieldsUsecases _eventFieldsUsecases;
  final DeleteMediaUsecases _deleteMediaUsecases;
  final EditMediaFavrouteUsecases _editMediaFavrouteUsecases;
  Future<void> _initialization(
    _Initialization event,
    Emitter<PetDairyState> emit,
  ) async {
    emit(state.copyWith(initStatus: Status.loading));
    final documents = await _documents();
    final medias = await _medias();
    final events = await _eventFields();
    final favoriteMedias = await _favMedias();
    emit(
      state.copyWith(
        documents: documents,
        medias: medias,
        eventFields: events,
        favoriteMedias: favoriteMedias,
        initStatus: Status.success,
      ),
    );
  }

  Future<List<Documents>> _documents() async {
    final result = await _documentsUsecases();
    return result.fold((l) => [], (r) => r);
  }

  Future<List<Media>> _medias() async {
    final result = await _mediasUsecases();
    return result.fold((l) => [], (r) => r);
  }

  Future<List<DropItem>> _eventFields() async {
    final result = await _eventFieldsUsecases();
    return result.fold((l) => [], (r) => r);
  }

  Future<List<Media>> _favMedias() async {
    final result = await _favoriteMediasUsecases();
    return result.fold((l) => [], (r) => r);
  }

  void __eventId(_EventId event, Emitter<PetDairyState> emit) {
    final eventId = DropdownValue.dirty(event.id);
    emit(state.copyWith(eventId: eventId));
  }

  void __deleteMedia(_DeleteMedia event, Emitter<PetDairyState> emit) {
    _deleteMediaUsecases(id: event.id);
    final media = state.medias.firstWhere((media) => media.id == event.id);
    final medias = state.medias;
    medias.remove(media);
    emit(state.copyWith(medias: medias));
  }

  Future<void> _updateMediaFavroute(
    _UpdateMediaFavroute event,
    Emitter<PetDairyState> emit,
  ) async {
    await _editMediaFavrouteUsecases(id: event.id, isFavroute: event.value);
    final favoriteMedias = await _favMedias();
    emit(state.copyWith(favoriteMedias: favoriteMedias));
  }
}
