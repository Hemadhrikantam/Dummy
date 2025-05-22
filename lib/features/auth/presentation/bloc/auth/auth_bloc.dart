import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/enum/yourself.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    on<_Init>(__init);
    on<_Initialization>(__initialization);
    on<_Yourself>(__yourself);
  }
  void __init(_Init event, Emitter<AuthState> emit) {
    emit(state.copyWith(status: Status.init));
  }

  void __initialization(_Initialization event, Emitter<AuthState> emit) {}

  void __yourself(_Yourself event, Emitter<AuthState> emit) {
    emit(state.copyWith(yourself: event.value));
  }
}
