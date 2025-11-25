import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wag_ai_event.dart';
part 'wag_ai_state.dart';
part 'wag_ai_bloc.freezed.dart';

class WagAiBloc extends Bloc<WagAiEvent, WagAiState> {
  WagAiBloc() : super(WagAiState()) {
    on<_Initialization>(__initialization);
  }

  FutureOr<void> __initialization(
    _Initialization event,
    Emitter<WagAiState> emit,
  ) {}

  //   Future<List<DropStringItem>> __aiHistory() async {
  //   final enums = currentContext.read<AuthBloc>().state.enums;
  //   if (enums == null) {
  //     return [];
  //   } else {
  //     final dogBreeds = enums.breeds.where((b) => b.type == 'cat').toList();
  //     return dogBreeds
  //         .map((b) => DropStringItemModel(id: b.id, value: b.name))
  //         .toList();
  //   }
  // }
}
