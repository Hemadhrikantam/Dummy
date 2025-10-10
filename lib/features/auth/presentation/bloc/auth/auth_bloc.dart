import 'dart:async';
import 'dart:convert';

import 'package:dummy/api/storage_key.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/models/formz/mobile.dart';
import 'package:dummy/core/models/formz/otp.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/features/auth/domain/usecases/enums_usecases.dart';
import 'package:dummy/features/auth/domain/usecases/register_account_usecases.dart';
import 'package:dummy/features/auth/domain/usecases/register_user_usecases.dart';
import 'package:dummy/features/auth/presentation/pages/ngo_registration_page.dart';
import 'package:dummy/features/auth/presentation/pages/otp_verification.dart';
import 'package:dummy/features/ngo/presentation/pages/ngo_home_page.dart';
import 'package:dummy/features/signup/data/models/enum_model.dart';
import 'package:dummy/features/signup/presentation/pages/meet_your_pet_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/enum/status.dart';
import '../../../../../core/enum/yourself.dart';
import '../../../../../core/models/formz/not_empty.dart';
import '../../../../../core/models/formz/password.dart';
import '../../../../../core/utils/toast_message.dart';
import '../../../../../di/injection.dart';
import '../../../../dashboard/presentation/pages/dashboard_page.dart';
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
    required EnumsUsecases enumsUsecases,
  }) : __registerUserUsecases = registerUserUsecases,
       __logoutUsecases = logoutUsecases,
       __enumsUsecases = enumsUsecases,
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
    on<_UpdateSendOtpStatus>(__updateSendOtpStatus);
  }

  final RegisterUserUsecases __registerUserUsecases;
  final EnumsUsecases __enumsUsecases;
  final LogoutUsecases __logoutUsecases;

  void __init(_Init event, Emitter<AuthState> emit) {
    emit(const AuthState());
  }

  void __initialisation(_Initialisation event, Emitter<AuthState> emit) {
    emit(state.copyWith(loginValidation: false, loginStatus: Status.init));
  }

  Future<void> __login(_Login event, Emitter<AuthState> emit) async {
    // emit(state.copyWith(loginStatus: Status.loading));
    // emit(state.copyWith(loginStatus: Status.loading));
    // emit(state.copyWith(loginStatus: Status.success));
    // emit(state.copyWith(loginStatus: Status.init));
    // return;
    emit(state.copyWith(loginStatus: Status.loading));
    LogUtility.info("${state.phone.value}");
    try {
      UserCredential userCredential = await Injection.firebaseOtp.verifyOtp(
        verificationId: state.verificationId.value,
        smsCode: state.otp.value ?? '',
      );
      if (userCredential.user?.uid != null) {
        emit(state.copyWith(loginStatus: Status.success));
        emit(state.copyWith(loginStatus: Status.init));
      } else {
        AppAlert.showToast(message: AppText.invalidOtp);
        emit(state.copyWith(loginStatus: Status.error));
        emit(state.copyWith(loginStatus: Status.init));
      }
    } catch (e) {
      AppAlert.showToast(message: AppText.somethingWentWrong);
      emit(state.copyWith(loginStatus: Status.error));
      emit(state.copyWith(loginStatus: Status.init));
    }
  }

  Future<void> __signup(_Signup event, Emitter<AuthState> emit) async {
    // emit(state.copyWith(signupStatus: Status.loading));
    // final result = await __registerAccountUsecases(
    //   registerAccount: RegisterAccountPayload(
    //     petName: state.name.value,
    //     petType: state.email.value,
    //     dob: state.password.value,
    //     petWeight: 0,
    //     petImage: 1,
    //     breed: 0,
    //     personalityTag: [],
    //     gender: '',
    //     latitude: 0,
    //     longitude: 0,
    //   ),
    // );
    // result.fold(
    //   (error) {
    //     AppAlert.showToast(message: error.message);
    //     emit(state.copyWith(signupStatus: Status.failure));
    //   },
    //   (success) {
    //     currentContext.pushNamedAndRemoveUntil(DashboardPage.routeName);
    //     emit(
    //       state.copyWith(
    //         signupStatus: Status.success,
    //         email: NotEmpty.pure(),
    //         name: NotEmpty.pure(),
    //         password: Password.pure(),
    //         confirmPassword: Password.pure(),
    //         // user: CurrentUser(
    //         //   id: '',
    //         //   email: state.name.value,
    //         //   name: state.name.value,
    //         // ),
    //       ),
    //     );
    //   },
    // );
  }

  Future<void> __checkUser(_CheckUser event, Emitter<AuthState> emit) async {
    // final result = await __currentUserUsecases();
    final result1 = await __enumsUsecases();
    result1.fold((error) {}, (success) async {
      emit(state.copyWith(enums: success));
    });
    final raw = await Injection.appStorage.read(StorageKey.userCred);
    if (raw == null) {
      currentContext.pushNamedAndRemoveUntil(StartYourPetsJourney.routeName);
    } else {
      final auth = jsonDecode(raw.toString());
      emit(state.copyWith(phone: MobileNo.dirty(value: auth['phone'])));
      emit(
        state.copyWith(
          yourself: auth['account_type'].toString().toYourselfEnum(),
        ),
      );
      add(_Register(auth['phone'], auth['account_type'].toString()));
    }
    // result.fold((error) {
    //
    // }, (success) async {});
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
    // emit(state.copyWith(sendOtpStatus: Status.loading));
    // emit(state.copyWith(sendOtpStatus: Status.success));
    // emit(state.copyWith(sendOtpStatus: Status.init));
    // currentContext.push(OtpVerification.route());
    // return;
    emit(state.copyWith(sendOtpStatus: Status.loading));

    await Injection.firebaseOtp.sendOtp(
      phoneNumber: '+91${state.phone.value}',
      onError: (e) {
        currentContext.read<AuthBloc>().add(
          AuthEvent.updateSendOtpStatus(false, null),
        );
      },
      codeSent: (String verificationId) {
        currentContext.read<AuthBloc>().add(
          AuthEvent.updateSendOtpStatus(true, verificationId),
        );
      },
    );
    // final result = await __sendOtpUsecases(phone: state.phone.value.toString());
    // result.fold(
    //   (error) {
    //     AppAlert.showToast(message: error.message);

    //     emit(state.copyWith(sendOtpStatus: Status.failure));
    //   },
    //   (success) {
    //     if (success.isRegistered) {
    //       AppAlert.showToast(message: success.message);
    //       currentContext.pushNamed(OtpVerification.routeName);
    //     } else {
    //       currentContext.pushNamed(PetTypePage.routeName);
    //     }
    //     emit(state.copyWith(sendOtpStatus: Status.success));
    //   },
    // );
  }

  void __otp(_Otp event, Emitter<AuthState> emit) {
    final otp = OTP.dirty(value: event.otp);
    emit(state.copyWith(otp: otp));
  }

  void __updateSendOtpStatus(
    _UpdateSendOtpStatus event,
    Emitter<AuthState> emit,
  ) {
    if (event.success) {
      AppAlert.showToast(message: AppText.otpSuccess);
      emit(
        state.copyWith(
          sendOtpStatus: Status.success,
          verificationId: NotEmpty.dirty(value: event.verificationId!),
        ),
      );
      currentContext.push(OtpVerification.route());
      emit(state.copyWith(sendOtpStatus: Status.init));
    } else {
      AppAlert.showToast(message: AppText.somethingWentWrong);
      emit(state.copyWith(sendOtpStatus: Status.failure));
      emit(state.copyWith(sendOtpStatus: Status.init));
    }
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
        if (success.isPetCreated) {
          if (state.yourself.isPetParent) {
            currentContext.pushNamedAndRemoveUntil(DashboardPage.routeName);
          } else if (state.yourself.isNgo) {
            currentContext.pushAndRemoveUntil(NgoHomePage.route());
          }
        } else {
          if (state.yourself.isPetParent) {
            currentContext.pushNamed(MeetYourPetScreen.routeName);
          } else if (state.yourself.isNgo) {
            currentContext.pushNamed(NgoRegistrationPage.routeName);
          }
        }
        emit(state.copyWith(sendOtpStatus: Status.success));
      },
    );
  }
}
