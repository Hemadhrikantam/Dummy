import 'package:dummy/core/utils/toast_message.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/features/profile/domain/entities/account_detail.dart';
import 'package:dummy/features/profile/domain/usecases/account_detail_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/add_account_user_usecases.dart';
import 'package:dummy/features/profile/domain/usecases/edit_account_usecases.dart';
import 'package:dummy/core/payload/edit_account_payload.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc({
    required AccountDetailUsecases accountDetailUsecases,
    required AddAccountUserUsecases addAccountUserUsecases,
    required EditAccountUsecases editAccountUsecases,
  }) : _accountDetailUsecases = accountDetailUsecases,
       _addAccountUserUsecases = addAccountUserUsecases,
       _editAccountUsecases = editAccountUsecases,
       super(const AccountState()) {
    on<_Init>(_onInit);
    on<_MemberName>((e, emit) => emit(state.copyWith(memberName: e.value)));
    on<_MemberPhone>((e, emit) => emit(state.copyWith(memberPhone: e.value)));
    on<_MemberRole>((e, emit) => emit(state.copyWith(memberRole: e.value)));
    on<_Username>((e, emit) => emit(state.copyWith(username: e.value)));
    on<_Email>((e, emit) => emit(state.copyWith(email: e.value)));
    on<_Phone>((e, emit) => emit(state.copyWith(phone: e.value)));
    on<_AddMemberSubmit>(_onAddMemberSubmit);
    on<_EditAccountSubmit>(_onEditAccountSubmit);
  }

  final AccountDetailUsecases _accountDetailUsecases;
  final AddAccountUserUsecases _addAccountUserUsecases;
  final EditAccountUsecases _editAccountUsecases;

  Future<void> _onInit(_Init event, Emitter<AccountState> emit) async {
    emit(state.copyWith(initStatus: Status.loading));
    final result = await _accountDetailUsecases();
    result.fold((error) => emit(state.copyWith(initStatus: Status.failure)), (
      detail,
    ) {
      emit(
        state.copyWith(
          accountDetails: detail,
          phone: detail.user.mobileNumber,
          email: detail.user.email ?? '',
          username: detail.user.username,
          initStatus: Status.success,
        ),
      );
    });
    emit(state.copyWith(initStatus: Status.init));
  }

  Future<void> _onAddMemberSubmit(
    _AddMemberSubmit event,
    Emitter<AccountState> emit,
  ) async {
    emit(state.copyWith(addMemberStatus: Status.loading));
    final result = await _addAccountUserUsecases(
      mobileNumber: state.memberPhone,
      name: state.memberName,
      role:
          state.memberRole == Role.Viewer.name
              ? Role.Viewer
              : Role.Collaborator,
    );

    result.fold(
      (error) => emit(state.copyWith(addMemberStatus: Status.error)),
      (success) async {
        // Refresh account details to reflect new member
        final refresh = await _accountDetailUsecases();
        refresh.fold(
          (err) => emit(state.copyWith(addMemberStatus: Status.success)),
          (detail) => emit(
            state.copyWith(
              accountDetails: detail,
              addMemberStatus: Status.success,
              memberName: '',
              memberPhone: '',
              memberRole: '',
            ),
          ),
        );
      },
    );
  }

  Future<void> _onEditAccountSubmit(
    _EditAccountSubmit event,
    Emitter<AccountState> emit,
  ) async {
    emit(state.copyWith(editAccountStatus: Status.loading));
    final acct = state.accountDetails?.account;
    final payload = EditAccountPayload(
      accountName: acct?.accountName ?? '',
      username: state.username,
      preferredCurrency: acct?.preferredCurrency ?? '',
      email: state.email,
    );

    final result = await _editAccountUsecases(payload: payload);
    result.fold(
      (error) => emit(state.copyWith(editAccountStatus: Status.error)),
      (success) async {
        final refresh = await _accountDetailUsecases();
        refresh.fold(
          (err) => emit(state.copyWith(editAccountStatus: Status.success)),
          (detail) {
            AppAlert.showToast(message: 'Account Details Updated Successfully');
            emit(
              state.copyWith(
                accountDetails: detail,
                phone: detail.user.mobileNumber,
                email: detail.user.email ?? '',
                username: detail.user.username,
                editAccountStatus: Status.success,
              ),
            );
          },
        );
      },
    );
    emit(state.copyWith(editAccountStatus: Status.init));
  }
}
