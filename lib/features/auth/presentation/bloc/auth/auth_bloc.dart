import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/payload/register_account_payload.dart';
import 'package:dummy/features/auth/domain/usecases/register_account_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enum/status.dart';
import '../../../../../core/enum/yourself.dart';
import '../../../../../core/models/formz/not_empty.dart';
import '../../../../../core/models/formz/password.dart';
import '../../../../../core/models/login_model.dart';
import '../../../../../core/utils/toast_message.dart';
import '../../../../../di/injection.dart';
import '../../../../dashboard/presentation/pages/dashboard_page.dart';
import '../../../../signup/presentation/pages/start_your_pets_journey.dart';
import '../../../domain/entities/current_user.dart';
import '../../../domain/usecases/current_user_usecases.dart';
import '../../../domain/usecases/login_usecases.dart';
import '../../../domain/usecases/logout_usecases.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required LoginUserUsecases loginUserUsecases,
    required CurrentUserUsecases currentUserUsecases,
    required LogoutUsecases logoutUsecases,
    required RegisterAccountUsecases registerAccountUsecases,
  }) : __loginUserUsecases = loginUserUsecases,
       __currentUserUsecases = currentUserUsecases,
       __logoutUsecases = logoutUsecases,
       __registerAccountUsecases = registerAccountUsecases,
       super(const AuthState()) {
    on<_Init>(__init);
    on<_Initialisation>(__initialisation);
    on<_Email>(__email);
    on<_Password>(__password);
    on<_ConfirmPassword>(__confirmPassword);
    on<_Name>(__name);
    on<_Login>(__login);
    on<_CheckUser>(__checkUser);
    on<_Logout>(__logout);
    on<_Signup>(__signup);
    on<_Yourself>(__yourself);
  }
  final LoginUserUsecases __loginUserUsecases;
  final CurrentUserUsecases __currentUserUsecases;
  final LogoutUsecases __logoutUsecases;
  final RegisterAccountUsecases __registerAccountUsecases;

  void __init(_Init event, Emitter<AuthState> emit) {
    emit(const AuthState());
  }

  void __initialisation(_Initialisation event, Emitter<AuthState> emit) {
    emit(state.copyWith(loginValidation: false, loginStatus: Status.init));
  }

  void __email(_Email event, Emitter<AuthState> emit) {
    final email = NotEmpty.dirty(value: event.email);
    emit(
      state.copyWith(
        email: email,
        loginValidation: Formz.validate([email, state.password]),
        signupValidation: Formz.validate([
          email,
          state.password,
          state.confirmPassword,
          state.name,
        ]),
      ),
    );
  }

  void __password(_Password event, Emitter<AuthState> emit) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        loginValidation: Formz.validate([state.email, password]),
        signupValidation: Formz.validate([
          state.email,
          password,
          state.confirmPassword,
          state.name,
        ]),
      ),
    );
  }

  void __confirmPassword(_ConfirmPassword event, Emitter<AuthState> emit) {
    final confirmPassword = Password.dirty(event.confirmPassword);
    emit(
      state.copyWith(
        confirmPassword: confirmPassword,
        signupValidation: Formz.validate([
          state.email,
          state.password,
          confirmPassword,
          state.name,
        ]),
      ),
    );
  }

  void __name(_Name event, Emitter<AuthState> emit) {
    final name = NotEmpty.dirty(value: event.name);
    emit(
      state.copyWith(
        name: name,
        signupValidation: Formz.validate([
          state.email,
          state.password,
          state.confirmPassword,
          name,
        ]),
      ),
    );
  }

  Future<void> __login(_Login event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loginStatus: Status.loading));
    final result = await __loginUserUsecases(
      login: LoginModel(
        email: state.email.value,
        password: state.password.value,
      ),
    );
    result.fold(
      (error) {
        AppAlert.showToast(message: error.message);
        emit(state.copyWith(loginStatus: Status.failure));
      },
      (success) {
        if (success?.id != null) {
          currentContext.pushNamedAndRemoveUntil(DashboardPage.routeName);
        }
        emit(
          state.copyWith(
            loginStatus: Status.success,
            user: success,
            email: NotEmpty.pure(),
            password: Password.pure(),
          ),
        );
      },
    );
  }

  Future<void> __signup(_Signup event, Emitter<AuthState> emit) async {
    emit(state.copyWith(signupStatus: Status.loading));
    final result = await __registerAccountUsecases(
      registerAccount: RegisterAccountPayload(
        name: state.name.value,
        email: state.email.value,
        password: state.password.value,
      ),
    );
    result.fold(
      (error) {
        AppAlert.showToast(message: error.message);
        emit(state.copyWith(signupStatus: Status.failure));
      },
      (success) {
        currentContext.pushNamedAndRemoveUntil(DashboardPage.routeName);
        emit(
          state.copyWith(
            signupStatus: Status.success,
            email: NotEmpty.pure(),
            name: NotEmpty.pure(),
            password: Password.pure(),
            confirmPassword: Password.pure(),
            user: CurrentUser(
              id: '',
              email: state.name.value,
              name: state.name.value,
            ),
          ),
        );
      },
    );
  }

  Future<void> __checkUser(_CheckUser event, Emitter<AuthState> emit) async {
    final result = await __currentUserUsecases();
    result.fold(
      (error) {
        currentContext.pushNamedAndRemoveUntil(StartYourPetsJourney.routeName);
      },
      (success) {
        currentContext.pushNamedAndRemoveUntil(DashboardPage.routeName);
        emit(state.copyWith(user: success));
      },
    );
  }

  Future<void> __logout(_Logout event, Emitter<AuthState> emit) async {
    final result = await __logoutUsecases();
    if (result == true) {
      currentContext.pushNamedAndRemoveUntil(StartYourPetsJourney.routeName);
    }
  }

  void __yourself(_Yourself event, Emitter<AuthState> emit) {
    emit(state.copyWith(yourself: event.value));
  }
}
