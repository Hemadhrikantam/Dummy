import 'dart:async';

import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/models/formz/mobile.dart';
import 'package:dummy/core/models/formz/otp.dart';
import 'package:dummy/core/payload/register_account_payload.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/features/auth/domain/usecases/register_account_usecases.dart';
import 'package:dummy/features/auth/domain/usecases/register_user_usecases.dart';
import 'package:dummy/features/auth/presentation/pages/ngo_registration_page.dart';
import 'package:dummy/features/auth/presentation/pages/otp_verification.dart';
import 'package:dummy/features/auth/presentation/pages/pet_type_page.dart';
import 'package:dummy/features/dashboard/presentation/pages/adoption_dashboard_page.dart';
import 'package:dummy/features/signup/presentation/pages/meet_your_pet_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/enum/status.dart';
import '../../../../../core/enum/yourself.dart';
import '../../../../../core/models/formz/not_empty.dart';
import '../../../../../core/models/formz/password.dart';
import '../../../../../core/models/login_model.dart';
import '../../../../../core/utils/toast_message.dart';
import '../../../../../di/injection.dart';
import '../../../../dashboard/presentation/pages/dashboard_page.dart';
import '../../../../home/presentation/pages/home_page.dart';
import '../../../../signup/presentation/pages/start_your_pets_journey.dart';
import '../../../domain/entities/current_user.dart';
import '../../../domain/usecases/current_user_usecases.dart';
import '../../../domain/usecases/login_usecases.dart';
import '../../../domain/usecases/logout_usecases.dart';
import '../../../domain/usecases/send_otp_usecases.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required LoginUserUsecases loginUserUsecases,
    required CurrentUserUsecases currentUserUsecases,
    required LogoutUsecases logoutUsecases,
    required RegisterAccountUsecases registerAccountUsecases,
    required SendOtpUsecases sendOtpUsecases,
    required RegisterUserUsecases registerUserUsecases,
  }) : __sendOtpUsecases = sendOtpUsecases,
       __registerUserUsecases = registerUserUsecases,
       __loginUserUsecases = loginUserUsecases,
       __currentUserUsecases = currentUserUsecases,
       __logoutUsecases = logoutUsecases,
       __registerAccountUsecases = registerAccountUsecases,
       super(const AuthState()) {
    on<_Init>(__init);
    on<_Initialisation>(__initialisation);
    on<_Login>(__login);
    on<_CheckUser>(__checkUser);
    on<_Logout>(__logout);
    on<_Signup>(__signup);
    on<_Yourself>(__yourself);
    on<_Phone>(__phone);
    on<_SendOtp>(__sendOtp);
    on<_Otp>(__otp);
    on<_Register>(__register);
  }
  final SendOtpUsecases __sendOtpUsecases;
  final RegisterUserUsecases __registerUserUsecases;
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

  Future<void> __login(_Login event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loginStatus: Status.loading));
    final result = await __loginUserUsecases(
      login: LoginModel(
        phone: state.phone.value ?? '',
        otp: state.otp.value ?? '',
      ),
    );
    result.fold(
      (error) {
        AppAlert.showToast(message: error.message);
        emit(state.copyWith(loginStatus: Status.failure));
      },
      (success) async {
        emit(state.copyWith(loginStatus: Status.init));
        final userType = success?.user.userType ?? '';
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('userType', userType);

        BottomModels.otpSuccessBottomSheet(currentContext);
        await Future.delayed(Duration(seconds: 2));

        if (userType == Yourself.petParent.name) {
          currentContext.pushNamed(MeetYourPetScreen.routeName);
        } else if (userType == Yourself.lookingAdoption.name) {
          currentContext.pushNamedAndRemoveUntil(
            AdoptionDashboardPage.routeName,
          );
        } else if (userType == Yourself.ngo.name) {
          currentContext.pushNamed(NgoRegistrationPage.routeName);
        } else {
          currentContext.pushNamed(DashboardPage.routeName);
          // currentContext.pushNamed(MeetYourPetScreen.routeName);
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
        petName: state.name.value,
        petType: state.email.value,
        dob: state.password.value,
        petWeight: 0,
        petImage: 1,
        breed: 0,
        personalityTag: [],
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
            // user: CurrentUser(
            //   id: '',
            //   email: state.name.value,
            //   name: state.name.value,
            // ),
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
      (success) async {
        emit(state.copyWith(user: success));
        final prefs = await SharedPreferences.getInstance();
        final storedUserType = prefs.getString('userType');
        if (storedUserType == Yourself.petParent.name) {
          currentContext.pushNamed(HomePage.routeName);
        } else if (storedUserType == Yourself.lookingAdoption.name) {
          currentContext.pushNamedAndRemoveUntil(
            AdoptionDashboardPage.routeName,
          );
        } else if (storedUserType == Yourself.ngo.name) {
          currentContext.pushNamed(NgoRegistrationPage.routeName);
        } else {
          currentContext.pushNamed(StartYourPetsJourney.routeName);
        }
      },
    );
  }

  Future<void> __logout(_Logout event, Emitter<AuthState> emit) async {
    final result = await __logoutUsecases();
    if (result == true) {
      currentContext.pushNamedAndRemoveUntil(StartYourPetsJourney.routeName);
    }
  }

  void __yourself(_Yourself event, Emitter<AuthState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userType', event.value.name);
    emit(state.copyWith(yourself: event.value));
  }

  void __phone(_Phone event, Emitter<AuthState> emit) {
    final phone = MobileNo.dirty(value: event.phone);
    emit(state.copyWith(phone: phone));
  }

  FutureOr<void> __sendOtp(_SendOtp event, Emitter<AuthState> emit) async {
    LogUtility.info("event calling");

    emit(state.copyWith(sendOtpStatus: Status.loading));
    LogUtility.info("${state.phone.value}");
    final result = await __sendOtpUsecases(phone: state.phone.value.toString());
    result.fold(
      (error) {
        AppAlert.showToast(message: error.message);

        emit(state.copyWith(sendOtpStatus: Status.failure));
      },
      (success) {
        if (success.isRegistered) {
          AppAlert.showToast(message: success.message);
          currentContext.pushNamed(OtpVerification.routeName);
        } else {
          currentContext.pushNamed(PetTypePage.routeName);
        }
        emit(state.copyWith(sendOtpStatus: Status.success));
      },
    );
  }

  void __otp(_Otp event, Emitter<AuthState> emit) {
    final otp = OTP.dirty(value: event.otp);
    emit(state.copyWith(otp: otp));
  }

  FutureOr<void> __register(_Register event, Emitter<AuthState> emit) async {
    LogUtility.info("event calling");

    emit(state.copyWith(sendOtpStatus: Status.loading));
    LogUtility.info("${state.phone.value}");
    final result = await __registerUserUsecases(
      phone: event.phone,
      userType: event.userType,
    );
    result.fold(
      (error) {
        AppAlert.showToast(message: error.message);

        emit(state.copyWith(sendOtpStatus: Status.failure));
      },
      (success) {
        currentContext.pushNamed(OtpVerification.routeName);
        emit(state.copyWith(sendOtpStatus: Status.success));
      },
    );
  }
}
