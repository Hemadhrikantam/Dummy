import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/payload/dailycare/expense_payload.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/dailycare/domain/usecases/add_expense_usecases.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_form_event.dart';
part 'expense_form_state.dart';
part 'expense_form_bloc.freezed.dart';

class ExpenseFormBloc extends Bloc<ExpenseFormEvent, ExpenseFormState> {
  ExpenseFormBloc({
    required AddExpenseUsecases addExpenseUsecases,
    required UploadFileUsecases uploadFileUsecases,
  }) : _addExpenseUsecase = addExpenseUsecases,
       _uploadFileUsecases = uploadFileUsecases,
       super(const ExpenseFormState()) {
    on<_Init>(_onInit);
    on<_Date>(_onDate);
    on<_Category>(_onCategory);
    on<_Notes>(_onNotes);
    on<_Media>(_onMedia);
    on<_Submit>(_onSubmit);
    on<_Amount>(_onAmount);
  }

  final AddExpenseUsecases _addExpenseUsecase;
  final UploadFileUsecases _uploadFileUsecases;

  void _onInit(_Init event, Emitter<ExpenseFormState> emit) {
    final categories =
        currentContext.read<AuthBloc>().state.enums!.expenseCategories;
    emit(
      state.copyWith(
        petId: event.petId,
        categories:
            categories
                .map((e) => DropStringItemModel(id: e.id, value: e.name))
                .toList(),
      ),
    );
  }

  void _onDate(_Date event, Emitter<ExpenseFormState> emit) {
    emit(state.copyWith(date: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  void _onCategory(_Category event, Emitter<ExpenseFormState> emit) {
    emit(state.copyWith(category: DropdownStringValue.dirty(event.value)));
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

  void _onAmount(_Amount event, Emitter<ExpenseFormState> emit) {
    emit(state.copyWith(amount: NotEmpty.dirty(value: event.value)));
    emit(state.copyWith(validation: state.validationX));
  }

  Future<void> _onSubmit(_Submit event, Emitter<ExpenseFormState> emit) async {
    emit(state.copyWith(submitStatus: Status.loading));
    List<ExpenseMediaPayload> mediaList = const [];
    if (state.media.value.isNotEmpty) {
      var url = state.media.value;
      var fileSize = 1; // must be positive per backend validation
      final fileType = _inferFileType(url);
      if (!url.startsWith('http')) {
        // Fetch uploader from DI to avoid unexpected null field issues

        final uploadResult = await _uploadFileUsecases(
          path: url,
          type: UploadType.daily_care,
          public: false,
        );
        bool ok = true;
        uploadResult.fold(
          (failure) {
            ok = false;
            emit(state.copyWith(submitStatus: Status.error));
          },
          (success) {
            url = success.finalUrl;
          },
        );
        if (!ok) return;
        try {
          fileSize = await File(state.media.value).length();
          if (fileSize <= 0) fileSize = 1;
        } catch (_) {
          fileSize = 1;
        }
      }
      mediaList = [
        ExpenseMediaPayload(
          fileUrl: url,
          fileType: fileType,
          fileSize: fileSize.toString(),
        ),
      ];
    }
    final result = await _addExpenseUsecase(
      payload: ExpensePayload(
        date: DateTime.parse(state.date.value),
        category: state.category.value?.id,
        notes: state.notes.value,
        amount: num.parse(state.amount.value),
        media: mediaList,
        pet: state.petId,
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(submitStatus: Status.error)),
      (success) => emit(state.copyWith(submitStatus: Status.success)),
    );
  }

  String _inferFileType(String pathOrUrl) {
    final lower = pathOrUrl.toLowerCase();
    return lower.endsWith('.mp4') ||
            lower.endsWith('.mov') ||
            lower.contains('video')
        ? 'video'
        : 'image';
  }
}
