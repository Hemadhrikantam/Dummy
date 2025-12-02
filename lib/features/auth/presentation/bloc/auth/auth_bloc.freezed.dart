// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
    _$InitImpl value,
    $Res Function(_$InitImpl) then,
  ) = __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'AuthEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements AuthEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$UpdateFcmImplCopyWith<$Res> {
  factory _$$UpdateFcmImplCopyWith(
    _$UpdateFcmImpl value,
    $Res Function(_$UpdateFcmImpl) then,
  ) = __$$UpdateFcmImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateFcmImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateFcmImpl>
    implements _$$UpdateFcmImplCopyWith<$Res> {
  __$$UpdateFcmImplCopyWithImpl(
    _$UpdateFcmImpl _value,
    $Res Function(_$UpdateFcmImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateFcmImpl implements _UpdateFcm {
  const _$UpdateFcmImpl();

  @override
  String toString() {
    return 'AuthEvent.updateFcm()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateFcmImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return updateFcm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return updateFcm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (updateFcm != null) {
      return updateFcm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return updateFcm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return updateFcm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (updateFcm != null) {
      return updateFcm(this);
    }
    return orElse();
  }
}

abstract class _UpdateFcm implements AuthEvent {
  const factory _UpdateFcm() = _$UpdateFcmImpl;
}

/// @nodoc
abstract class _$$EmailImplCopyWith<$Res> {
  factory _$$EmailImplCopyWith(
    _$EmailImpl value,
    $Res Function(_$EmailImpl) then,
  ) = __$$EmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EmailImpl>
    implements _$$EmailImplCopyWith<$Res> {
  __$$EmailImplCopyWithImpl(
    _$EmailImpl _value,
    $Res Function(_$EmailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$EmailImpl(
        null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$EmailImpl implements _Email {
  const _$EmailImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.email(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailImplCopyWith<_$EmailImpl> get copyWith =>
      __$$EmailImplCopyWithImpl<_$EmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return email(this.email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return email?.call(this.email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(this.email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return email(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return email?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(this);
    }
    return orElse();
  }
}

abstract class _Email implements AuthEvent {
  const factory _Email(final String email) = _$EmailImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailImplCopyWith<_$EmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneImplCopyWith<$Res> {
  factory _$$PhoneImplCopyWith(
    _$PhoneImpl value,
    $Res Function(_$PhoneImpl) then,
  ) = __$$PhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$PhoneImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PhoneImpl>
    implements _$$PhoneImplCopyWith<$Res> {
  __$$PhoneImplCopyWithImpl(
    _$PhoneImpl _value,
    $Res Function(_$PhoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phone = null}) {
    return _then(
      _$PhoneImpl(
        null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$PhoneImpl implements _Phone {
  const _$PhoneImpl(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthEvent.phone(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneImplCopyWith<_$PhoneImpl> get copyWith =>
      __$$PhoneImplCopyWithImpl<_$PhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return phone(this.phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return phone?.call(this.phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (phone != null) {
      return phone(this.phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return phone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return phone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (phone != null) {
      return phone(this);
    }
    return orElse();
  }
}

abstract class _Phone implements AuthEvent {
  const factory _Phone(final String phone) = _$PhoneImpl;

  String get phone;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneImplCopyWith<_$PhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpImplCopyWith<$Res> {
  factory _$$OtpImplCopyWith(_$OtpImpl value, $Res Function(_$OtpImpl) then) =
      __$$OtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$OtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OtpImpl>
    implements _$$OtpImplCopyWith<$Res> {
  __$$OtpImplCopyWithImpl(_$OtpImpl _value, $Res Function(_$OtpImpl) _then)
    : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? otp = null}) {
    return _then(
      _$OtpImpl(
        null == otp
            ? _value.otp
            : otp // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$OtpImpl implements _Otp {
  const _$OtpImpl(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'AuthEvent.otp(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpImplCopyWith<_$OtpImpl> get copyWith =>
      __$$OtpImplCopyWithImpl<_$OtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return otp(this.otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return otp?.call(this.otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (otp != null) {
      return otp(this.otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return otp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return otp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (otp != null) {
      return otp(this);
    }
    return orElse();
  }
}

abstract class _Otp implements AuthEvent {
  const factory _Otp(final String otp) = _$OtpImpl;

  String get otp;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpImplCopyWith<_$OtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordImplCopyWith<$Res> {
  factory _$$PasswordImplCopyWith(
    _$PasswordImpl value,
    $Res Function(_$PasswordImpl) then,
  ) = __$$PasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PasswordImpl>
    implements _$$PasswordImplCopyWith<$Res> {
  __$$PasswordImplCopyWithImpl(
    _$PasswordImpl _value,
    $Res Function(_$PasswordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null}) {
    return _then(
      _$PasswordImpl(
        null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$PasswordImpl implements _Password {
  const _$PasswordImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.password(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordImplCopyWith<_$PasswordImpl> get copyWith =>
      __$$PasswordImplCopyWithImpl<_$PasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return password(this.password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return password?.call(this.password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(this.password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return password(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return password?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(this);
    }
    return orElse();
  }
}

abstract class _Password implements AuthEvent {
  const factory _Password(final String password) = _$PasswordImpl;

  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordImplCopyWith<_$PasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordImplCopyWith<$Res> {
  factory _$$ConfirmPasswordImplCopyWith(
    _$ConfirmPasswordImpl value,
    $Res Function(_$ConfirmPasswordImpl) then,
  ) = __$$ConfirmPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$ConfirmPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ConfirmPasswordImpl>
    implements _$$ConfirmPasswordImplCopyWith<$Res> {
  __$$ConfirmPasswordImplCopyWithImpl(
    _$ConfirmPasswordImpl _value,
    $Res Function(_$ConfirmPasswordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? confirmPassword = null}) {
    return _then(
      _$ConfirmPasswordImpl(
        null == confirmPassword
            ? _value.confirmPassword
            : confirmPassword // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ConfirmPasswordImpl implements _ConfirmPassword {
  const _$ConfirmPasswordImpl(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'AuthEvent.confirmPassword(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordImpl &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordImplCopyWith<_$ConfirmPasswordImpl> get copyWith =>
      __$$ConfirmPasswordImplCopyWithImpl<_$ConfirmPasswordImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return confirmPassword(this.confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return confirmPassword?.call(this.confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (confirmPassword != null) {
      return confirmPassword(this.confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return confirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return confirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (confirmPassword != null) {
      return confirmPassword(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPassword implements AuthEvent {
  const factory _ConfirmPassword(final String confirmPassword) =
      _$ConfirmPasswordImpl;

  String get confirmPassword;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmPasswordImplCopyWith<_$ConfirmPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameImplCopyWith<$Res> {
  factory _$$NameImplCopyWith(
    _$NameImpl value,
    $Res Function(_$NameImpl) then,
  ) = __$$NameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$NameImpl>
    implements _$$NameImplCopyWith<$Res> {
  __$$NameImplCopyWithImpl(_$NameImpl _value, $Res Function(_$NameImpl) _then)
    : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$NameImpl(
        null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$NameImpl implements _Name {
  const _$NameImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'AuthEvent.name(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      __$$NameImplCopyWithImpl<_$NameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return name(this.name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return name?.call(this.name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this.name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return name(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return name?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this);
    }
    return orElse();
  }
}

abstract class _Name implements AuthEvent {
  const factory _Name(final String name) = _$NameImpl;

  String get name;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
    _$LoginImpl value,
    $Res Function(_$LoginImpl) then,
  ) = __$$LoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
    _$LoginImpl _value,
    $Res Function(_$LoginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login() = _$LoginImpl;
}

/// @nodoc
abstract class _$$SendOtpImplCopyWith<$Res> {
  factory _$$SendOtpImplCopyWith(
    _$SendOtpImpl value,
    $Res Function(_$SendOtpImpl) then,
  ) = __$$SendOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendOtpImpl>
    implements _$$SendOtpImplCopyWith<$Res> {
  __$$SendOtpImplCopyWithImpl(
    _$SendOtpImpl _value,
    $Res Function(_$SendOtpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendOtpImpl implements _SendOtp {
  const _$SendOtpImpl();

  @override
  String toString() {
    return 'AuthEvent.sendOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return sendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return sendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class _SendOtp implements AuthEvent {
  const factory _SendOtp() = _$SendOtpImpl;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
    _$RegisterImpl value,
    $Res Function(_$RegisterImpl) then,
  ) = __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String userType});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
    _$RegisterImpl _value,
    $Res Function(_$RegisterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phone = null, Object? userType = null}) {
    return _then(
      _$RegisterImpl(
        null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                as String,
        null == userType
            ? _value.userType
            : userType // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl(this.phone, this.userType);

  @override
  final String phone;
  @override
  final String userType;

  @override
  String toString() {
    return 'AuthEvent.registerUser(phone: $phone, userType: $userType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, userType);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return registerUser(this.phone, userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return registerUser?.call(this.phone, userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this.phone, userType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(final String phone, final String userType) =
      _$RegisterImpl;

  String get phone;
  String get userType;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupImplCopyWith<$Res> {
  factory _$$SignupImplCopyWith(
    _$SignupImpl value,
    $Res Function(_$SignupImpl) then,
  ) = __$$SignupImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignupImpl>
    implements _$$SignupImplCopyWith<$Res> {
  __$$SignupImplCopyWithImpl(
    _$SignupImpl _value,
    $Res Function(_$SignupImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignupImpl implements _Signup {
  const _$SignupImpl();

  @override
  String toString() {
    return 'AuthEvent.signup()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return signup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return signup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class _Signup implements AuthEvent {
  const factory _Signup() = _$SignupImpl;
}

/// @nodoc
abstract class _$$CheckUserImplCopyWith<$Res> {
  factory _$$CheckUserImplCopyWith(
    _$CheckUserImpl value,
    $Res Function(_$CheckUserImpl) then,
  ) = __$$CheckUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckUserImpl>
    implements _$$CheckUserImplCopyWith<$Res> {
  __$$CheckUserImplCopyWithImpl(
    _$CheckUserImpl _value,
    $Res Function(_$CheckUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckUserImpl implements _CheckUser {
  const _$CheckUserImpl();

  @override
  String toString() {
    return 'AuthEvent.checkUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return checkUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return checkUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (checkUser != null) {
      return checkUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return checkUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return checkUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (checkUser != null) {
      return checkUser(this);
    }
    return orElse();
  }
}

abstract class _CheckUser implements AuthEvent {
  const factory _CheckUser() = _$CheckUserImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
    _$LogoutImpl value,
    $Res Function(_$LogoutImpl) then,
  ) = __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
    _$LogoutImpl _value,
    $Res Function(_$LogoutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$UpdateSendOtpStatusImplCopyWith<$Res> {
  factory _$$UpdateSendOtpStatusImplCopyWith(
    _$UpdateSendOtpStatusImpl value,
    $Res Function(_$UpdateSendOtpStatusImpl) then,
  ) = __$$UpdateSendOtpStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool success, String? verificationId});
}

/// @nodoc
class __$$UpdateSendOtpStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateSendOtpStatusImpl>
    implements _$$UpdateSendOtpStatusImplCopyWith<$Res> {
  __$$UpdateSendOtpStatusImplCopyWithImpl(
    _$UpdateSendOtpStatusImpl _value,
    $Res Function(_$UpdateSendOtpStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? verificationId = freezed}) {
    return _then(
      _$UpdateSendOtpStatusImpl(
        null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                as bool,
        freezed == verificationId
            ? _value.verificationId
            : verificationId // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateSendOtpStatusImpl implements _UpdateSendOtpStatus {
  const _$UpdateSendOtpStatusImpl(this.success, this.verificationId);

  @override
  final bool success;
  @override
  final String? verificationId;

  @override
  String toString() {
    return 'AuthEvent.updateSendOtpStatus(success: $success, verificationId: $verificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSendOtpStatusImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success, verificationId);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSendOtpStatusImplCopyWith<_$UpdateSendOtpStatusImpl> get copyWith =>
      __$$UpdateSendOtpStatusImplCopyWithImpl<_$UpdateSendOtpStatusImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return updateSendOtpStatus(success, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return updateSendOtpStatus?.call(success, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (updateSendOtpStatus != null) {
      return updateSendOtpStatus(success, verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return updateSendOtpStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return updateSendOtpStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (updateSendOtpStatus != null) {
      return updateSendOtpStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateSendOtpStatus implements AuthEvent {
  const factory _UpdateSendOtpStatus(
    final bool success,
    final String? verificationId,
  ) = _$UpdateSendOtpStatusImpl;

  bool get success;
  String? get verificationId;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSendOtpStatusImplCopyWith<_$UpdateSendOtpStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$YourselfImplCopyWith<$Res> {
  factory _$$YourselfImplCopyWith(
    _$YourselfImpl value,
    $Res Function(_$YourselfImpl) then,
  ) = __$$YourselfImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Yourself value});
}

/// @nodoc
class __$$YourselfImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$YourselfImpl>
    implements _$$YourselfImplCopyWith<$Res> {
  __$$YourselfImplCopyWithImpl(
    _$YourselfImpl _value,
    $Res Function(_$YourselfImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$YourselfImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as Yourself,
      ),
    );
  }
}

/// @nodoc

class _$YourselfImpl implements _Yourself {
  const _$YourselfImpl(this.value);

  @override
  final Yourself value;

  @override
  String toString() {
    return 'AuthEvent.yourself(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YourselfImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YourselfImplCopyWith<_$YourselfImpl> get copyWith =>
      __$$YourselfImplCopyWithImpl<_$YourselfImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateFcm,
    required TResult Function(String email) email,
    required TResult Function(String phone) phone,
    required TResult Function(String otp) otp,
    required TResult Function(String password) password,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(String name) name,
    required TResult Function() login,
    required TResult Function() sendOtp,
    required TResult Function(String phone, String userType) registerUser,
    required TResult Function() signup,
    required TResult Function() checkUser,
    required TResult Function() logout,
    required TResult Function(bool success, String? verificationId)
    updateSendOtpStatus,
    required TResult Function(Yourself value) yourself,
  }) {
    return yourself(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? updateFcm,
    TResult? Function(String email)? email,
    TResult? Function(String phone)? phone,
    TResult? Function(String otp)? otp,
    TResult? Function(String password)? password,
    TResult? Function(String confirmPassword)? confirmPassword,
    TResult? Function(String name)? name,
    TResult? Function()? login,
    TResult? Function()? sendOtp,
    TResult? Function(String phone, String userType)? registerUser,
    TResult? Function()? signup,
    TResult? Function()? checkUser,
    TResult? Function()? logout,
    TResult? Function(bool success, String? verificationId)?
    updateSendOtpStatus,
    TResult? Function(Yourself value)? yourself,
  }) {
    return yourself?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateFcm,
    TResult Function(String email)? email,
    TResult Function(String phone)? phone,
    TResult Function(String otp)? otp,
    TResult Function(String password)? password,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(String name)? name,
    TResult Function()? login,
    TResult Function()? sendOtp,
    TResult Function(String phone, String userType)? registerUser,
    TResult Function()? signup,
    TResult Function()? checkUser,
    TResult Function()? logout,
    TResult Function(bool success, String? verificationId)? updateSendOtpStatus,
    TResult Function(Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (yourself != null) {
      return yourself(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdateFcm value) updateFcm,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Otp value) otp,
    required TResult Function(_Password value) password,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_Name value) name,
    required TResult Function(_Login value) login,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_Register value) registerUser,
    required TResult Function(_Signup value) signup,
    required TResult Function(_CheckUser value) checkUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateSendOtpStatus value) updateSendOtpStatus,
    required TResult Function(_Yourself value) yourself,
  }) {
    return yourself(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdateFcm value)? updateFcm,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Otp value)? otp,
    TResult? Function(_Password value)? password,
    TResult? Function(_ConfirmPassword value)? confirmPassword,
    TResult? Function(_Name value)? name,
    TResult? Function(_Login value)? login,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_Register value)? registerUser,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_CheckUser value)? checkUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult? Function(_Yourself value)? yourself,
  }) {
    return yourself?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdateFcm value)? updateFcm,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Otp value)? otp,
    TResult Function(_Password value)? password,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_Name value)? name,
    TResult Function(_Login value)? login,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_Register value)? registerUser,
    TResult Function(_Signup value)? signup,
    TResult Function(_CheckUser value)? checkUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateSendOtpStatus value)? updateSendOtpStatus,
    TResult Function(_Yourself value)? yourself,
    required TResult orElse(),
  }) {
    if (yourself != null) {
      return yourself(this);
    }
    return orElse();
  }
}

abstract class _Yourself implements AuthEvent {
  const factory _Yourself(final Yourself value) = _$YourselfImpl;

  Yourself get value;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YourselfImplCopyWith<_$YourselfImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  NotEmpty get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  NotEmpty get name => throw _privateConstructorUsedError;
  NotEmpty get verificationId => throw _privateConstructorUsedError;
  MobileNo get phone => throw _privateConstructorUsedError;
  OTP get otp => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;
  CurrentUser? get user => throw _privateConstructorUsedError;
  Status get loginStatus => throw _privateConstructorUsedError;
  Status get sendOtpStatus => throw _privateConstructorUsedError;
  Status get verifyOtpStatus => throw _privateConstructorUsedError;
  bool get loginValidation => throw _privateConstructorUsedError;
  Status get signupStatus => throw _privateConstructorUsedError;
  bool get signupValidation => throw _privateConstructorUsedError;
  Yourself get yourself => throw _privateConstructorUsedError;
  EnumModel? get enums => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({
    NotEmpty email,
    Password password,
    NotEmpty name,
    NotEmpty verificationId,
    MobileNo phone,
    OTP otp,
    Password confirmPassword,
    CurrentUser? user,
    Status loginStatus,
    Status sendOtpStatus,
    Status verifyOtpStatus,
    bool loginValidation,
    Status signupStatus,
    bool signupValidation,
    Yourself yourself,
    EnumModel? enums,
  });
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? verificationId = null,
    Object? phone = null,
    Object? otp = null,
    Object? confirmPassword = null,
    Object? user = freezed,
    Object? loginStatus = null,
    Object? sendOtpStatus = null,
    Object? verifyOtpStatus = null,
    Object? loginValidation = null,
    Object? signupStatus = null,
    Object? signupValidation = null,
    Object? yourself = null,
    Object? enums = freezed,
  }) {
    return _then(
      _value.copyWith(
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            password:
                null == password
                    ? _value.password
                    : password // ignore: cast_nullable_to_non_nullable
                        as Password,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            verificationId:
                null == verificationId
                    ? _value.verificationId
                    : verificationId // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            phone:
                null == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as MobileNo,
            otp:
                null == otp
                    ? _value.otp
                    : otp // ignore: cast_nullable_to_non_nullable
                        as OTP,
            confirmPassword:
                null == confirmPassword
                    ? _value.confirmPassword
                    : confirmPassword // ignore: cast_nullable_to_non_nullable
                        as Password,
            user:
                freezed == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as CurrentUser?,
            loginStatus:
                null == loginStatus
                    ? _value.loginStatus
                    : loginStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            sendOtpStatus:
                null == sendOtpStatus
                    ? _value.sendOtpStatus
                    : sendOtpStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            verifyOtpStatus:
                null == verifyOtpStatus
                    ? _value.verifyOtpStatus
                    : verifyOtpStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            loginValidation:
                null == loginValidation
                    ? _value.loginValidation
                    : loginValidation // ignore: cast_nullable_to_non_nullable
                        as bool,
            signupStatus:
                null == signupStatus
                    ? _value.signupStatus
                    : signupStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            signupValidation:
                null == signupValidation
                    ? _value.signupValidation
                    : signupValidation // ignore: cast_nullable_to_non_nullable
                        as bool,
            yourself:
                null == yourself
                    ? _value.yourself
                    : yourself // ignore: cast_nullable_to_non_nullable
                        as Yourself,
            enums:
                freezed == enums
                    ? _value.enums
                    : enums // ignore: cast_nullable_to_non_nullable
                        as EnumModel?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
    _$AuthStateImpl value,
    $Res Function(_$AuthStateImpl) then,
  ) = __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    NotEmpty email,
    Password password,
    NotEmpty name,
    NotEmpty verificationId,
    MobileNo phone,
    OTP otp,
    Password confirmPassword,
    CurrentUser? user,
    Status loginStatus,
    Status sendOtpStatus,
    Status verifyOtpStatus,
    bool loginValidation,
    Status signupStatus,
    bool signupValidation,
    Yourself yourself,
    EnumModel? enums,
  });
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
    _$AuthStateImpl _value,
    $Res Function(_$AuthStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? verificationId = null,
    Object? phone = null,
    Object? otp = null,
    Object? confirmPassword = null,
    Object? user = freezed,
    Object? loginStatus = null,
    Object? sendOtpStatus = null,
    Object? verifyOtpStatus = null,
    Object? loginValidation = null,
    Object? signupStatus = null,
    Object? signupValidation = null,
    Object? yourself = null,
    Object? enums = freezed,
  }) {
    return _then(
      _$AuthStateImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as Password,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        verificationId:
            null == verificationId
                ? _value.verificationId
                : verificationId // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        phone:
            null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as MobileNo,
        otp:
            null == otp
                ? _value.otp
                : otp // ignore: cast_nullable_to_non_nullable
                    as OTP,
        confirmPassword:
            null == confirmPassword
                ? _value.confirmPassword
                : confirmPassword // ignore: cast_nullable_to_non_nullable
                    as Password,
        user:
            freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as CurrentUser?,
        loginStatus:
            null == loginStatus
                ? _value.loginStatus
                : loginStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        sendOtpStatus:
            null == sendOtpStatus
                ? _value.sendOtpStatus
                : sendOtpStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        verifyOtpStatus:
            null == verifyOtpStatus
                ? _value.verifyOtpStatus
                : verifyOtpStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        loginValidation:
            null == loginValidation
                ? _value.loginValidation
                : loginValidation // ignore: cast_nullable_to_non_nullable
                    as bool,
        signupStatus:
            null == signupStatus
                ? _value.signupStatus
                : signupStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        signupValidation:
            null == signupValidation
                ? _value.signupValidation
                : signupValidation // ignore: cast_nullable_to_non_nullable
                    as bool,
        yourself:
            null == yourself
                ? _value.yourself
                : yourself // ignore: cast_nullable_to_non_nullable
                    as Yourself,
        enums:
            freezed == enums
                ? _value.enums
                : enums // ignore: cast_nullable_to_non_nullable
                    as EnumModel?,
      ),
    );
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl({
    this.email = const NotEmpty.pure(),
    this.password = const Password.pure(),
    this.name = const NotEmpty.pure(),
    this.verificationId = const NotEmpty.pure(),
    this.phone = const MobileNo.pure(),
    this.otp = const OTP.pure(),
    this.confirmPassword = const Password.pure(),
    this.user = null,
    this.loginStatus = Status.init,
    this.sendOtpStatus = Status.init,
    this.verifyOtpStatus = Status.init,
    this.loginValidation = false,
    this.signupStatus = Status.init,
    this.signupValidation = false,
    this.yourself = Yourself.pet_parent,
    this.enums = null,
  });

  @override
  @JsonKey()
  final NotEmpty email;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final NotEmpty name;
  @override
  @JsonKey()
  final NotEmpty verificationId;
  @override
  @JsonKey()
  final MobileNo phone;
  @override
  @JsonKey()
  final OTP otp;
  @override
  @JsonKey()
  final Password confirmPassword;
  @override
  @JsonKey()
  final CurrentUser? user;
  @override
  @JsonKey()
  final Status loginStatus;
  @override
  @JsonKey()
  final Status sendOtpStatus;
  @override
  @JsonKey()
  final Status verifyOtpStatus;
  @override
  @JsonKey()
  final bool loginValidation;
  @override
  @JsonKey()
  final Status signupStatus;
  @override
  @JsonKey()
  final bool signupValidation;
  @override
  @JsonKey()
  final Yourself yourself;
  @override
  @JsonKey()
  final EnumModel? enums;

  @override
  String toString() {
    return 'AuthState(email: $email, password: $password, name: $name, verificationId: $verificationId, phone: $phone, otp: $otp, confirmPassword: $confirmPassword, user: $user, loginStatus: $loginStatus, sendOtpStatus: $sendOtpStatus, verifyOtpStatus: $verifyOtpStatus, loginValidation: $loginValidation, signupStatus: $signupStatus, signupValidation: $signupValidation, yourself: $yourself, enums: $enums)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.sendOtpStatus, sendOtpStatus) ||
                other.sendOtpStatus == sendOtpStatus) &&
            (identical(other.verifyOtpStatus, verifyOtpStatus) ||
                other.verifyOtpStatus == verifyOtpStatus) &&
            (identical(other.loginValidation, loginValidation) ||
                other.loginValidation == loginValidation) &&
            (identical(other.signupStatus, signupStatus) ||
                other.signupStatus == signupStatus) &&
            (identical(other.signupValidation, signupValidation) ||
                other.signupValidation == signupValidation) &&
            (identical(other.yourself, yourself) ||
                other.yourself == yourself) &&
            (identical(other.enums, enums) || other.enums == enums));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    email,
    password,
    name,
    verificationId,
    phone,
    otp,
    confirmPassword,
    user,
    loginStatus,
    sendOtpStatus,
    verifyOtpStatus,
    loginValidation,
    signupStatus,
    signupValidation,
    yourself,
    enums,
  );

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState({
    final NotEmpty email,
    final Password password,
    final NotEmpty name,
    final NotEmpty verificationId,
    final MobileNo phone,
    final OTP otp,
    final Password confirmPassword,
    final CurrentUser? user,
    final Status loginStatus,
    final Status sendOtpStatus,
    final Status verifyOtpStatus,
    final bool loginValidation,
    final Status signupStatus,
    final bool signupValidation,
    final Yourself yourself,
    final EnumModel? enums,
  }) = _$AuthStateImpl;

  @override
  NotEmpty get email;
  @override
  Password get password;
  @override
  NotEmpty get name;
  @override
  NotEmpty get verificationId;
  @override
  MobileNo get phone;
  @override
  OTP get otp;
  @override
  Password get confirmPassword;
  @override
  CurrentUser? get user;
  @override
  Status get loginStatus;
  @override
  Status get sendOtpStatus;
  @override
  Status get verifyOtpStatus;
  @override
  bool get loginValidation;
  @override
  Status get signupStatus;
  @override
  bool get signupValidation;
  @override
  Yourself get yourself;
  @override
  EnumModel? get enums;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
