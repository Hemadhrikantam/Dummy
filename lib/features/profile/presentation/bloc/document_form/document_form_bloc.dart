import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/pet_dairy/document_payload.dart';
import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/add_document_usecases.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_form_event.dart';
part 'document_form_state.dart';
part 'document_form_bloc.freezed.dart';

class DocumentFormBloc extends Bloc<DocumentFormEvent, DocumentFormState> {
  DocumentFormBloc({
    required AddDocumentUsecases addDocumentUsecases,
    required UploadFileUsecases uploadFileUsecases,
  }) : _addUsecases = addDocumentUsecases,
       _uploadFileUsecases = uploadFileUsecases,
       super(DocumentFormState()) {
    on<_Init>(__init);
    on<_Submit>(__submit);
    on<_Url>(__url);
  }
  final AddDocumentUsecases _addUsecases;
  final UploadFileUsecases _uploadFileUsecases;

  Future<void> __init(_Init event, Emitter<DocumentFormState> emit) async {
    emit(state.copyWith(initStatus: Status.loading, petId: event.petId));
    emit(state.copyWith(initStatus: Status.success));
  }

  Future<void> __submit(_Submit event, Emitter<DocumentFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));
    String url = state.url.value;
    if (url.isNotEmpty && !url.contains('http')) {
      final result = await _uploadFileUsecases(
        type: UploadType.pet_diary_media,
        path: url,
        public: false,
      );
      result.fold((l) {}, (r) {
        url = r.finalUrl;
      });
    }
    final result = await _addUsecases(
      payload: DocumentPayload(
        petId: state.petId,
        fileUrl: url,
        fileName: url.split('/').last,
        fileSize: '100',
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
