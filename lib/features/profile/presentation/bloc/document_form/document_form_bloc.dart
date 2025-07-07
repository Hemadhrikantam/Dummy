import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/pet_dairy/document_payload.dart';
import 'package:dummy/features/profile/domain/usecases/add_document_usecases.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_form_event.dart';
part 'document_form_state.dart';
part 'document_form_bloc.freezed.dart';

class DocumentFormBloc extends Bloc<DocumentFormEvent, DocumentFormState> {
  DocumentFormBloc({required AddDocumentUsecases addDocumentUsecases})
    : _addUsecases = addDocumentUsecases,
      super(DocumentFormState()) {
    on<_Init>(__init);
    on<_Submit>(__submit);
    on<_Url>(__url);
  }
  final AddDocumentUsecases _addUsecases;

  Future<void> __init(_Init event, Emitter<DocumentFormState> emit) async {
    emit(state.copyWith(initStatus: Status.loading, petId: event.petId));
    emit(state.copyWith(initStatus: Status.success));
  }

  Future<void> __submit(_Submit event, Emitter<DocumentFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));
    final result = await _addUsecases(
      payload: DocumentPayload(
        pet: state.petId,
        media: await MultipartFile.fromFile(
          state.url.value,
          filename: state.url.value.split('/').last,
        ),
      ),
    );
    result.fold(
      (l) {
        emit(state.copyWith(submitStatus: Status.error));
      },
      (r) {
        emit(state.copyWith(submitStatus: Status.success));
      },
    );
  }

  Future<void> __url(_Url event, Emitter<DocumentFormState> emit) async {
    emit(state.copyWith(url: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }
}
