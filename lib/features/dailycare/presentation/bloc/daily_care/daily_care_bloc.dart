import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_care_event.dart';
part 'daily_care_state.dart';
part 'daily_care_bloc.freezed.dart';

class DailyCareBloc extends Bloc<DailyCareEvent, DailyCareState> {
  DailyCareBloc() : super(DailyCareState()) {
    on<_Init>(__init);
    on<_ChangePageIndex>(__changePageIndex);
  }

  void __init(_Init event, Emitter<DailyCareState> emit) {
    emit(state.copyWith(pageIndex: 0));
  }

  void __changePageIndex(_ChangePageIndex event, Emitter<DailyCareState> emit) {
    emit(state.copyWith(pageIndex: event.index));
  }
}
