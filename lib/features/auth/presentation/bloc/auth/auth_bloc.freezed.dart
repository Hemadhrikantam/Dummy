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


class _Initialization implements AuthEvent {
  const _Initialization();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialization);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.initialization()';
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

 Status get status; Yourself get yourself;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.yourself, yourself) || other.yourself == yourself));
}


@override
int get hashCode => Object.hash(runtimeType,status,yourself);

@override
String toString() {
  return 'AuthState(status: $status, yourself: $yourself)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 Status status, Yourself yourself
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
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? yourself = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,yourself: null == yourself ? _self.yourself : yourself // ignore: cast_nullable_to_non_nullable
as Yourself,
  ));
}

}


/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({this.status = Status.init, this.yourself = Yourself.petParent});
  

@override@JsonKey() final  Status status;
@override@JsonKey() final  Yourself yourself;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.yourself, yourself) || other.yourself == yourself));
}


@override
int get hashCode => Object.hash(runtimeType,status,yourself);

@override
String toString() {
  return 'AuthState(status: $status, yourself: $yourself)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 Status status, Yourself yourself
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
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? yourself = null,}) {
  return _then(_AuthState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,yourself: null == yourself ? _self.yourself : yourself // ignore: cast_nullable_to_non_nullable
as Yourself,
  ));
}


}

// dart format on
