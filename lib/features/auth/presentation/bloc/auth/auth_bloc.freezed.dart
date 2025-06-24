// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// @nodoc


class _Init implements AuthEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.init()';
}


}




/// @nodoc


class _Initialisation implements AuthEvent {
  const _Initialisation();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialisation);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.initialisation()';
}


}




/// @nodoc


class _Email implements AuthEvent {
  const _Email(this.email);
  

 final  String email;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailCopyWith<_Email> get copyWith => __$EmailCopyWithImpl<_Email>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Email&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthEvent.email(email: $email)';
}


}

/// @nodoc
abstract mixin class _$EmailCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$EmailCopyWith(_Email value, $Res Function(_Email) _then) = __$EmailCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class __$EmailCopyWithImpl<$Res>
    implements _$EmailCopyWith<$Res> {
  __$EmailCopyWithImpl(this._self, this._then);

  final _Email _self;
  final $Res Function(_Email) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_Email(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Phone implements AuthEvent {
  const _Phone(this.phone);
  

 final  String phone;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhoneCopyWith<_Phone> get copyWith => __$PhoneCopyWithImpl<_Phone>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Phone&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'AuthEvent.phone(phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$PhoneCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$PhoneCopyWith(_Phone value, $Res Function(_Phone) _then) = __$PhoneCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class __$PhoneCopyWithImpl<$Res>
    implements _$PhoneCopyWith<$Res> {
  __$PhoneCopyWithImpl(this._self, this._then);

  final _Phone _self;
  final $Res Function(_Phone) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(_Phone(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Otp implements AuthEvent {
  const _Otp(this.otp);
  

 final  String otp;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpCopyWith<_Otp> get copyWith => __$OtpCopyWithImpl<_Otp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Otp&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,otp);

@override
String toString() {
  return 'AuthEvent.otp(otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$OtpCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$OtpCopyWith(_Otp value, $Res Function(_Otp) _then) = __$OtpCopyWithImpl;
@useResult
$Res call({
 String otp
});




}
/// @nodoc
class __$OtpCopyWithImpl<$Res>
    implements _$OtpCopyWith<$Res> {
  __$OtpCopyWithImpl(this._self, this._then);

  final _Otp _self;
  final $Res Function(_Otp) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otp = null,}) {
  return _then(_Otp(
null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Password implements AuthEvent {
  const _Password(this.password);
  

 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordCopyWith<_Password> get copyWith => __$PasswordCopyWithImpl<_Password>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Password&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'AuthEvent.password(password: $password)';
}


}

/// @nodoc
abstract mixin class _$PasswordCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$PasswordCopyWith(_Password value, $Res Function(_Password) _then) = __$PasswordCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class __$PasswordCopyWithImpl<$Res>
    implements _$PasswordCopyWith<$Res> {
  __$PasswordCopyWithImpl(this._self, this._then);

  final _Password _self;
  final $Res Function(_Password) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(_Password(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ConfirmPassword implements AuthEvent {
  const _ConfirmPassword(this.confirmPassword);
  

 final  String confirmPassword;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmPasswordCopyWith<_ConfirmPassword> get copyWith => __$ConfirmPasswordCopyWithImpl<_ConfirmPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmPassword&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}


@override
int get hashCode => Object.hash(runtimeType,confirmPassword);

@override
String toString() {
  return 'AuthEvent.confirmPassword(confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class _$ConfirmPasswordCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$ConfirmPasswordCopyWith(_ConfirmPassword value, $Res Function(_ConfirmPassword) _then) = __$ConfirmPasswordCopyWithImpl;
@useResult
$Res call({
 String confirmPassword
});




}
/// @nodoc
class __$ConfirmPasswordCopyWithImpl<$Res>
    implements _$ConfirmPasswordCopyWith<$Res> {
  __$ConfirmPasswordCopyWithImpl(this._self, this._then);

  final _ConfirmPassword _self;
  final $Res Function(_ConfirmPassword) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? confirmPassword = null,}) {
  return _then(_ConfirmPassword(
null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Name implements AuthEvent {
  const _Name(this.name);
  

 final  String name;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameCopyWith<_Name> get copyWith => __$NameCopyWithImpl<_Name>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Name&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AuthEvent.name(name: $name)';
}


}

/// @nodoc
abstract mixin class _$NameCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$NameCopyWith(_Name value, $Res Function(_Name) _then) = __$NameCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$NameCopyWithImpl<$Res>
    implements _$NameCopyWith<$Res> {
  __$NameCopyWithImpl(this._self, this._then);

  final _Name _self;
  final $Res Function(_Name) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_Name(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Login implements AuthEvent {
  const _Login();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Login);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.login()';
}


}




/// @nodoc


class _SendOtp implements AuthEvent {
  const _SendOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.sendOtp()';
}


}




/// @nodoc


class _Signup implements AuthEvent {
  const _Signup();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Signup);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signup()';
}


}




/// @nodoc


class _CheckUser implements AuthEvent {
  const _CheckUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.checkUser()';
}


}




/// @nodoc


class _Logout implements AuthEvent {
  const _Logout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Logout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




/// @nodoc


class _Yourself implements AuthEvent {
  const _Yourself(this.value);
  

 final  Yourself value;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YourselfCopyWith<_Yourself> get copyWith => __$YourselfCopyWithImpl<_Yourself>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Yourself&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'AuthEvent.yourself(value: $value)';
}


}

/// @nodoc
abstract mixin class _$YourselfCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$YourselfCopyWith(_Yourself value, $Res Function(_Yourself) _then) = __$YourselfCopyWithImpl;
@useResult
$Res call({
 Yourself value
});




}
/// @nodoc
class __$YourselfCopyWithImpl<$Res>
    implements _$YourselfCopyWith<$Res> {
  __$YourselfCopyWithImpl(this._self, this._then);

  final _Yourself _self;
  final $Res Function(_Yourself) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Yourself(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Yourself,
  ));
}


}

/// @nodoc
mixin _$AuthState {

 NotEmpty get email; Password get password; NotEmpty get name; MobileNo get phone; OTP get otp; Password get confirmPassword; CurrentUser? get user; Status get loginStatus; Status get sendOtpStatus; bool get loginValidation; Status get signupStatus; bool get signupValidation; Yourself get yourself;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.user, user) || other.user == user)&&(identical(other.loginStatus, loginStatus) || other.loginStatus == loginStatus)&&(identical(other.sendOtpStatus, sendOtpStatus) || other.sendOtpStatus == sendOtpStatus)&&(identical(other.loginValidation, loginValidation) || other.loginValidation == loginValidation)&&(identical(other.signupStatus, signupStatus) || other.signupStatus == signupStatus)&&(identical(other.signupValidation, signupValidation) || other.signupValidation == signupValidation)&&(identical(other.yourself, yourself) || other.yourself == yourself));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,name,phone,otp,confirmPassword,user,loginStatus,sendOtpStatus,loginValidation,signupStatus,signupValidation,yourself);

@override
String toString() {
  return 'AuthState(email: $email, password: $password, name: $name, phone: $phone, otp: $otp, confirmPassword: $confirmPassword, user: $user, loginStatus: $loginStatus, sendOtpStatus: $sendOtpStatus, loginValidation: $loginValidation, signupStatus: $signupStatus, signupValidation: $signupValidation, yourself: $yourself)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 NotEmpty email, Password password, NotEmpty name, MobileNo phone, OTP otp, Password confirmPassword, CurrentUser? user, Status loginStatus, Status sendOtpStatus, bool loginValidation, Status signupStatus, bool signupValidation, Yourself yourself
});




}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? name = null,Object? phone = null,Object? otp = null,Object? confirmPassword = null,Object? user = freezed,Object? loginStatus = null,Object? sendOtpStatus = null,Object? loginValidation = null,Object? signupStatus = null,Object? signupValidation = null,Object? yourself = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as NotEmpty,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as NotEmpty,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as MobileNo,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as OTP,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as Password,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as CurrentUser?,loginStatus: null == loginStatus ? _self.loginStatus : loginStatus // ignore: cast_nullable_to_non_nullable
as Status,sendOtpStatus: null == sendOtpStatus ? _self.sendOtpStatus : sendOtpStatus // ignore: cast_nullable_to_non_nullable
as Status,loginValidation: null == loginValidation ? _self.loginValidation : loginValidation // ignore: cast_nullable_to_non_nullable
as bool,signupStatus: null == signupStatus ? _self.signupStatus : signupStatus // ignore: cast_nullable_to_non_nullable
as Status,signupValidation: null == signupValidation ? _self.signupValidation : signupValidation // ignore: cast_nullable_to_non_nullable
as bool,yourself: null == yourself ? _self.yourself : yourself // ignore: cast_nullable_to_non_nullable
as Yourself,
  ));
}

}


/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({this.email = const NotEmpty.pure(), this.password = const Password.pure(), this.name = const NotEmpty.pure(), this.phone = const MobileNo.pure(), this.otp = const OTP.pure(), this.confirmPassword = const Password.pure(), this.user = null, this.loginStatus = Status.init, this.sendOtpStatus = Status.init, this.loginValidation = false, this.signupStatus = Status.init, this.signupValidation = false, this.yourself = Yourself.petParent});
  

@override@JsonKey() final  NotEmpty email;
@override@JsonKey() final  Password password;
@override@JsonKey() final  NotEmpty name;
@override@JsonKey() final  MobileNo phone;
@override@JsonKey() final  OTP otp;
@override@JsonKey() final  Password confirmPassword;
@override@JsonKey() final  CurrentUser? user;
@override@JsonKey() final  Status loginStatus;
@override@JsonKey() final  Status sendOtpStatus;
@override@JsonKey() final  bool loginValidation;
@override@JsonKey() final  Status signupStatus;
@override@JsonKey() final  bool signupValidation;
@override@JsonKey() final  Yourself yourself;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.user, user) || other.user == user)&&(identical(other.loginStatus, loginStatus) || other.loginStatus == loginStatus)&&(identical(other.sendOtpStatus, sendOtpStatus) || other.sendOtpStatus == sendOtpStatus)&&(identical(other.loginValidation, loginValidation) || other.loginValidation == loginValidation)&&(identical(other.signupStatus, signupStatus) || other.signupStatus == signupStatus)&&(identical(other.signupValidation, signupValidation) || other.signupValidation == signupValidation)&&(identical(other.yourself, yourself) || other.yourself == yourself));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,name,phone,otp,confirmPassword,user,loginStatus,sendOtpStatus,loginValidation,signupStatus,signupValidation,yourself);

@override
String toString() {
  return 'AuthState(email: $email, password: $password, name: $name, phone: $phone, otp: $otp, confirmPassword: $confirmPassword, user: $user, loginStatus: $loginStatus, sendOtpStatus: $sendOtpStatus, loginValidation: $loginValidation, signupStatus: $signupStatus, signupValidation: $signupValidation, yourself: $yourself)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 NotEmpty email, Password password, NotEmpty name, MobileNo phone, OTP otp, Password confirmPassword, CurrentUser? user, Status loginStatus, Status sendOtpStatus, bool loginValidation, Status signupStatus, bool signupValidation, Yourself yourself
});




}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? name = null,Object? phone = null,Object? otp = null,Object? confirmPassword = null,Object? user = freezed,Object? loginStatus = null,Object? sendOtpStatus = null,Object? loginValidation = null,Object? signupStatus = null,Object? signupValidation = null,Object? yourself = null,}) {
  return _then(_AuthState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as NotEmpty,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as NotEmpty,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as MobileNo,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as OTP,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as Password,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as CurrentUser?,loginStatus: null == loginStatus ? _self.loginStatus : loginStatus // ignore: cast_nullable_to_non_nullable
as Status,sendOtpStatus: null == sendOtpStatus ? _self.sendOtpStatus : sendOtpStatus // ignore: cast_nullable_to_non_nullable
as Status,loginValidation: null == loginValidation ? _self.loginValidation : loginValidation // ignore: cast_nullable_to_non_nullable
as bool,signupStatus: null == signupStatus ? _self.signupStatus : signupStatus // ignore: cast_nullable_to_non_nullable
as Status,signupValidation: null == signupValidation ? _self.signupValidation : signupValidation // ignore: cast_nullable_to_non_nullable
as bool,yourself: null == yourself ? _self.yourself : yourself // ignore: cast_nullable_to_non_nullable
as Yourself,
  ));
}


}

// dart format on
