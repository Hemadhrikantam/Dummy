import 'package:bloc/bloc.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/di/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/formz/email.dart';
import 'package:dummy/core/models/formz/mobile.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/models/formz/pin_code.dart';
import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/core/payload/ngo/ngo_profile_payload.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';
import 'package:dummy/features/ngo/domain/usecases/get_ngo_profile_usecase.dart';
import 'package:dummy/features/ngo/domain/usecases/update_ngo_profile_usecase.dart';

import '../../../../../core/utils/toast_message.dart';

part 'ngo_profile_event.dart';
part 'ngo_profile_state.dart';
part 'ngo_profile_bloc.freezed.dart';

class NgoProfileBloc extends Bloc<NgoProfileEvent, NgoProfileState> {
  NgoProfileBloc({
    required GetNgoProfileUsecase getNgoProfileUsecase,
    required UpdateNgoProfileUsecase updateNgoProfileUsecase,
    required UploadFileUsecases uploadFileUsecases,
  }) : _getNgoProfileUsecase = getNgoProfileUsecase,
       _updateNgoProfileUsecase = updateNgoProfileUsecase,
       _uploadFileUsecases = uploadFileUsecases,
       super(const NgoProfileState()) {
    on<_Init>(_init);
    on<_NgoName>(_ngoName);
    on<_ContactPersonName>(_contactPersonName);
    on<_Email>(_email);
    on<_Phone>(_phone);
    on<_Pincode>(_pincode);
    on<_Address>(_address);
    on<_LogoFile>(_logoFile);
    on<_RegistrationProofFile>(_registrationProofFile);
    on<_Submit>(_submit);
  }

  final GetNgoProfileUsecase _getNgoProfileUsecase;
  final UpdateNgoProfileUsecase _updateNgoProfileUsecase;
  final UploadFileUsecases _uploadFileUsecases;

  Future<void> _init(_Init event, Emitter<NgoProfileState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final response = await _getNgoProfileUsecase();
    response.fold(
      (error) {
        LogUtility.error('Get NGO profile error: ${error.message}');
        emit(state.copyWith(initStatus: Status.error));
      },
      (profile) {
        emit(
          state.copyWith(
            initStatus: Status.success,
            ngoName: NotEmpty.dirty(value: profile.ngoName),
            contactPersonName: NotEmpty.dirty(value: profile.contactPersonName),
            email: Email.dirty(value: profile.email),
            phone: MobileNo.dirty(value: profile.phone),
            pincode: PinCode.dirty(value: profile.pincode),
            address: NotEmpty.dirty(value: profile.address),
            logoUrl: profile.logoUrl ?? '',
            registrationProofUrl: profile.registrationProofUrl ?? '',
          ),
        );
      },
    );
  }

  void _ngoName(_NgoName event, Emitter<NgoProfileState> emit) {
    emit(state.copyWith(ngoName: NotEmpty.dirty(value: event.value)));
  }

  void _contactPersonName(
    _ContactPersonName event,
    Emitter<NgoProfileState> emit,
  ) {
    emit(state.copyWith(contactPersonName: NotEmpty.dirty(value: event.value)));
  }

  void _email(_Email event, Emitter<NgoProfileState> emit) {
    emit(state.copyWith(email: Email.dirty(value: event.value)));
  }

  void _phone(_Phone event, Emitter<NgoProfileState> emit) {
    emit(state.copyWith(phone: MobileNo.dirty(value: event.value)));
  }

  void _pincode(_Pincode event, Emitter<NgoProfileState> emit) {
    emit(state.copyWith(pincode: PinCode.dirty(value: event.value)));
  }

  void _address(_Address event, Emitter<NgoProfileState> emit) {
    emit(state.copyWith(address: NotEmpty.dirty(value: event.value)));
  }

  void _logoFile(_LogoFile event, Emitter<NgoProfileState> emit) {
    emit(state.copyWith(logoFile: NotEmpty.dirty(value: event.path)));
  }

  void _registrationProofFile(
    _RegistrationProofFile event,
    Emitter<NgoProfileState> emit,
  ) {
    emit(
      state.copyWith(registrationProofFile: NotEmpty.dirty(value: event.path)),
    );
  }

  Future<void> _submit(_Submit event, Emitter<NgoProfileState> emit) async {
    try {
      emit(state.copyWith(submitStatus: Status.loading));

      var logoUrl = state.logoUrl;
      var registrationProofUrl = state.registrationProofUrl;

      if (state.logoFile.isValid && (state.logoFile.value).isNotEmpty) {
        final uploadLogoRes = await _uploadFileUsecases(
          path: state.logoFile.value,
          type: UploadType.ngo_logo,
          public: true,
        );
        uploadLogoRes.fold(
          (error) => LogUtility.error('Logo upload error: ${error.message}'),
          (presign) => logoUrl = presign.finalUrl,
        );
      }

      if (state.registrationProofFile.isValid &&
          (state.registrationProofFile.value).isNotEmpty) {
        final uploadRegRes = await _uploadFileUsecases(
          path: state.registrationProofFile.value,
          type: UploadType.ngo_registrations,
          public: true,
        );
        uploadRegRes.fold(
          (error) => LogUtility.error(
            'Registration proof upload error: ${error.message}',
          ),
          (presign) => registrationProofUrl = presign.finalUrl,
        );
      }

      final payload = NgoProfilePayload(
        ngoName: state.ngoName.value,
        contactPersonName: state.contactPersonName.value,
        email: state.email.value ?? '',
        phone: state.phone.value ?? '',
        pincode: state.pincode.value ?? '',
        address: state.address.value,
        logoUrl: logoUrl.isNotEmpty ? logoUrl : null,
        registrationProofUrl:
            registrationProofUrl.isNotEmpty ? registrationProofUrl : null,
      );

      final updateRes = await _updateNgoProfileUsecase(payload: payload);
      updateRes.fold(
        (error) {
          LogUtility.error('Update NGO profile error: ${error.message}');
          emit(state.copyWith(submitStatus: Status.error));
        },
        (success) {
          currentContext.pop();
          AppAlert.showToast(message: success.message);
          emit(state.copyWith(submitStatus: Status.init));
        },
      );
    } catch (e) {
      LogUtility.error('NGO profile submit exception: $e');
      emit(state.copyWith(submitStatus: Status.error));
    }
  }
}
