import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dummy/api/storage_key.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/models/formz/mobile.dart';
import 'package:dummy/core/models/formz/otp.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/features/auth/domain/usecases/enums_usecases.dart';
import 'package:dummy/features/auth/domain/usecases/register_account_usecases.dart';
import 'package:dummy/features/auth/domain/usecases/register_user_usecases.dart';
import 'package:dummy/features/auth/domain/usecases/register_device_usecases.dart';
import 'package:dummy/features/auth/domain/usecases/seeker_registration_usecases.dart';
import 'package:dummy/features/auth/presentation/bloc/ngo_registration/ngo_registration_bloc.dart';
import 'package:dummy/features/auth/presentation/pages/ngo_registration_page.dart';
import 'package:dummy/features/dashboard/presentation/pages/adoption_dashboard_page.dart';
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
import '../../../../../core/services/location_service.dart';
import '../../../../../core/payload/auth/seeker_onboarding_payload.dart';
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
    required RegisterDeviceUsecases registerDeviceUsecases,
    required SeekerRegistrationUsecases seekerRegistrationUsecases,
  }) : __registerUserUsecases = registerUserUsecases,
       __logoutUsecases = logoutUsecases,
       __enumsUsecases = enumsUsecases,
       __registerDeviceUsecases = registerDeviceUsecases,
       __seekerRegistrationUsecases = seekerRegistrationUsecases,
       super(const AuthState()) {
    on<_Init>(__init);
    on<_UpdateFcm>(__updateFcm);
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
  final RegisterDeviceUsecases __registerDeviceUsecases;
  final SeekerRegistrationUsecases __seekerRegistrationUsecases;

  void __init(_Init event, Emitter<AuthState> emit) {
    emit(const AuthState());
  }

  Future<void> __updateFcm(_UpdateFcm event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loginValidation: false, loginStatus: Status.init));
    try {
      // Attempt device registration after notification permission acceptance
      final pushToken = await Injection.notificationService.getToken();
      final platform = Platform.isIOS ? 'ios' : 'android';
      final deviceId =
          pushToken ?? DateTime.now().millisecondsSinceEpoch.toString();
      LogUtility.info("FCM: $pushToken");
      if (pushToken != null) {
        await __registerDeviceUsecases(
          deviceId: deviceId,
          pushToken: pushToken,
          platform: platform,
        );
      }
    } catch (e) {
      // Swallow errors to avoid disrupting init flow
    }
  }

  Future<void> __login(_Login event, Emitter<AuthState> emit) async {
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

  Future<void> __signup(_Signup event, Emitter<AuthState> emit) async {}

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
    currentContext.read<NgoRegistrationBloc>().add(
      NgoRegistrationEvent.phone(event.phone),
    );
  }

  FutureOr<void> __sendOtp(_SendOtp event, Emitter<AuthState> emit) async {
    LogUtility.info("event calling");
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
      AppAlert.showToast(message: AppText.otpSuccess);
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
      (success) async {
        if (success.isPetCreated) {
          if (state.yourself.isPetParent) {
            currentContext.pushNamedAndRemoveUntil(DashboardPage.routeName);
          } else if (state.yourself.isSeeker) {
            currentContext.pushAndRemoveUntil(AdoptionDashboardPage.route());
          } else if (state.yourself.isNgo) {
            currentContext.pushAndRemoveUntil(NgoHomePage.route());
          }
        } else {
          if (state.yourself.isPetParent) {
            currentContext.pushNamed(MeetYourPetScreen.routeName);
          } else if (state.yourself.isSeeker) {
            String latitude = '';
            String longitude = '';
            try {
              final locationData = await LocationService().getCurrentLocation();
              latitude = locationData?.latitude?.toString() ?? '';
              longitude = locationData?.longitude?.toString() ?? '';
            } catch (_) {
              // If location permission denied or service disabled, proceed without coords
            }
            final payload = SeekerOnboardingPayload(
              mobileNumber: event.phone,
              latitude: latitude,
              longitude: longitude,
            );
            final res = await __seekerRegistrationUsecases(payload: payload);
            res.fold(
              (error) {
                AppAlert.showToast(message: error.message);
              },
              (successMsg) {
                currentContext.pushAndRemoveUntil(
                  AdoptionDashboardPage.route(),
                );
              },
            );
          } else if (state.yourself.isNgo) {
            currentContext.pushNamed(NgoRegistrationPage.routeName);
          }
        }
      },
    );
    emit(state.copyWith(sendOtpStatus: Status.init));
  }
}
