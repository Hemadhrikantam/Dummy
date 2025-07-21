// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OverviewEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverviewEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverviewEvent()';
}


}

/// @nodoc
class $OverviewEventCopyWith<$Res>  {
$OverviewEventCopyWith(OverviewEvent _, $Res Function(OverviewEvent) __);
}


/// @nodoc


class _Started implements OverviewEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OverviewEvent.started()';
}


}




/// @nodoc


class _Overview implements OverviewEvent {
  const _Overview(this.petId);
  

 final  int petId;

/// Create a copy of OverviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverviewCopyWith<_Overview> get copyWith => __$OverviewCopyWithImpl<_Overview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Overview&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hash(runtimeType,petId);

@override
String toString() {
  return 'OverviewEvent.overview(petId: $petId)';
}


}

/// @nodoc
abstract mixin class _$OverviewCopyWith<$Res> implements $OverviewEventCopyWith<$Res> {
  factory _$OverviewCopyWith(_Overview value, $Res Function(_Overview) _then) = __$OverviewCopyWithImpl;
@useResult
$Res call({
 int petId
});




}
/// @nodoc
class __$OverviewCopyWithImpl<$Res>
    implements _$OverviewCopyWith<$Res> {
  __$OverviewCopyWithImpl(this._self, this._then);

  final _Overview _self;
  final $Res Function(_Overview) _then;

/// Create a copy of OverviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petId = null,}) {
  return _then(_Overview(
null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$OverviewState {

 Status get initStatus; Overview? get overview;
/// Create a copy of OverviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverviewStateCopyWith<OverviewState> get copyWith => _$OverviewStateCopyWithImpl<OverviewState>(this as OverviewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverviewState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&(identical(other.overview, overview) || other.overview == overview));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,overview);

@override
String toString() {
  return 'OverviewState(initStatus: $initStatus, overview: $overview)';
}


}

/// @nodoc
abstract mixin class $OverviewStateCopyWith<$Res>  {
  factory $OverviewStateCopyWith(OverviewState value, $Res Function(OverviewState) _then) = _$OverviewStateCopyWithImpl;
@useResult
$Res call({
 Status initStatus, Overview? overview
});




}
/// @nodoc
class _$OverviewStateCopyWithImpl<$Res>
    implements $OverviewStateCopyWith<$Res> {
  _$OverviewStateCopyWithImpl(this._self, this._then);

  final OverviewState _self;
  final $Res Function(OverviewState) _then;

/// Create a copy of OverviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initStatus = null,Object? overview = freezed,}) {
  return _then(_self.copyWith(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as Overview?,
  ));
}

}


/// @nodoc


class _OverviewState implements OverviewState {
  const _OverviewState({this.initStatus = Status.init, this.overview = null});
  

@override@JsonKey() final  Status initStatus;
@override@JsonKey() final  Overview? overview;

/// Create a copy of OverviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverviewStateCopyWith<_OverviewState> get copyWith => __$OverviewStateCopyWithImpl<_OverviewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverviewState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&(identical(other.overview, overview) || other.overview == overview));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,overview);

@override
String toString() {
  return 'OverviewState(initStatus: $initStatus, overview: $overview)';
}


}

/// @nodoc
abstract mixin class _$OverviewStateCopyWith<$Res> implements $OverviewStateCopyWith<$Res> {
  factory _$OverviewStateCopyWith(_OverviewState value, $Res Function(_OverviewState) _then) = __$OverviewStateCopyWithImpl;
@override @useResult
$Res call({
 Status initStatus, Overview? overview
});




}
/// @nodoc
class __$OverviewStateCopyWithImpl<$Res>
    implements _$OverviewStateCopyWith<$Res> {
  __$OverviewStateCopyWithImpl(this._self, this._then);

  final _OverviewState _self;
  final $Res Function(_OverviewState) _then;

/// Create a copy of OverviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initStatus = null,Object? overview = freezed,}) {
  return _then(_OverviewState(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as Overview?,
  ));
}


}

// dart format on
