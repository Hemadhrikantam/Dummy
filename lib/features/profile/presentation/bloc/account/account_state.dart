part of 'account_bloc.dart';

@freezed
abstract class AccountState with _$AccountState {
  const factory AccountState({
    @Default(Status.init) Status initStatus,
    @Default(Status.init) Status addMemberStatus,
    @Default(Status.init) Status editAccountStatus,
    AccountDetail? accountDetails,
    @Default('') String memberName,
    @Default('') String memberPhone,
    @Default('') String memberRole,
    @Default('') String username,
    @Default('') String phone,
    @Default('') String email,
  }) = _AccountState;
}
