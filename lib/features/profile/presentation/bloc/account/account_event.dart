part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.init() = _Init;
  const factory AccountEvent.memberName(String value) = _MemberName;
  const factory AccountEvent.memberPhone(String value) = _MemberPhone;
  const factory AccountEvent.memberRole(String value) = _MemberRole;
  const factory AccountEvent.username(String value) = _Username;
  const factory AccountEvent.email(String value) = _Email;
  const factory AccountEvent.phone(String value) = _Phone;
  const factory AccountEvent.addMemberSubmit() = _AddMemberSubmit;
  const factory AccountEvent.editAccountSubmit() = _EditAccountSubmit;
}
