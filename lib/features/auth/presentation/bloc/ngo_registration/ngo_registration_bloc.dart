import 'dart:async';
import 'dart:convert';

import 'package:dummy/api/storage_key.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/models/formz/email.dart';
import 'package:dummy/core/models/formz/mobile.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/models/formz/pin_code.dart';
import 'package:dummy/core/payload/auth/ngo_onboarding_payload.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/auth/domain/usecases/ngo_registration_usecases.dart';
import 'package:dummy/features/auth/domain/usecases/upload_file_usecases.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/service/local_storage_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ngo_registration_event.dart';
part 'ngo_registration_state.dart';
part 'ngo_registration_bloc.freezed.dart';

class NgoRegistrationBloc
    extends Bloc<NgoRegistrationEvent, NgoRegistrationState> {
  NgoRegistrationBloc({
    required NgoRegistrationUsecases ngoRegistrationUsecases,
    required UploadFileUsecases uploadFileUsecases,
  }) : _ngoRegistrationUsecases = ngoRegistrationUsecases,
       _uploadFileUsecases = uploadFileUsecases,
       super(NgoRegistrationState()) {
    on<_NgoName>(_ngoName);
    on<_ContactPersonName>(_contactPersonName);
    on<_Email>(_email);
    on<_Phone>(_phone);
    on<_Address>(_address);
    on<_PinCode>(_pinCode);
    on<_RegistrationProofFile>(_registrationProofFile);
    on<_Submit>(_submit);
  }

  final NgoRegistrationUsecases _ngoRegistrationUsecases;
  final UploadFileUsecases _uploadFileUsecases;

  void _ngoName(_NgoName event, Emitter<NgoRegistrationState> emit) {
    emit(state.copyWith(ngoName: NotEmpty.dirty(value: event.value)));
  }

  void _contactPersonName(
    _ContactPersonName event,
    Emitter<NgoRegistrationState> emit,
  ) {
    emit(state.copyWith(contactPersonName: NotEmpty.dirty(value: event.value)));
  }

  void _email(_Email event, Emitter<NgoRegistrationState> emit) {
    emit(state.copyWith(email: Email.dirty(value: event.value)));
  }

  void _phone(_Phone event, Emitter<NgoRegistrationState> emit) {
    emit(state.copyWith(phone: MobileNo.dirty(value: event.value)));
  }

  void _address(_Address event, Emitter<NgoRegistrationState> emit) {
    emit(state.copyWith(address: NotEmpty.dirty(value: event.value)));
  }

  void _pinCode(_PinCode event, Emitter<NgoRegistrationState> emit) {
    emit(state.copyWith(pincode: PinCode.dirty(value: event.value)));
  }

  void _registrationProofFile(
    _RegistrationProofFile event,
    Emitter<NgoRegistrationState> emit,
  ) {
    emit(
      state.copyWith(registrationProofFile: NotEmpty.dirty(value: event.path)),
    );
  }

  Future<void> _submit(
    _Submit event,
    Emitter<NgoRegistrationState> emit,
  ) async {
    emit(state.copyWith(submitStatus: Status.loading));
    String regProofUrl = '';
    try {
      if (state.registrationProofFile.isValid) {
        final result = await _uploadFileUsecases(
          path: state.registrationProofFile.value,
          type: UploadType.ngo_registrations,
        );
        result.fold(
          (error) {
            LogUtility.error(error.message);
          },
          (success) {
            regProofUrl = success.finalUrl;
          },
        );
      }

      final payload = NgoOnboardingPayload(
        mobileNumber: currentContext.read<AuthBloc>().state.phone.value ?? '',
        ngoName: state.ngoName.value,
        contactPersonName: state.contactPersonName.value,
        email: state.email.value ?? '',
        phone: state.phone.value ?? '',
        pincode: state.pincode.value ?? '',
        address: state.address.value,
        registrationProofFile: regProofUrl,
        latitude: '',
        longitude: '',
      );

      final result = await _ngoRegistrationUsecases(payload: payload);
      result.fold((error) => emit(state.copyWith(submitStatus: Status.error)), (
        success,
      ) {
        emit(state.copyWith(submitStatus: Status.success));
        var usercred = SecureStorageItem(
          key: StorageKey.userCred,
          value: json.encode({
            'phone': currentContext.read<AuthBloc>().state.phone.value ?? '',
            'account_type': currentContext.read<AuthBloc>().state.yourself.name,
          }),
        );
        currentContext.read<AuthBloc>().add(AuthEvent.updateFcm());
        Injection.appStorage.write(usercred);
      });
      emit(state.copyWith(submitStatus: Status.init));
    } catch (e) {
      LogUtility.error('NGO submission error: $e');
      emit(state.copyWith(submitStatus: Status.error));
    }
  }
}
