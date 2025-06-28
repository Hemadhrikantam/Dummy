// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groomings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroomingsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroomingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroomingsEvent()';
}


}

/// @nodoc
class $GroomingsEventCopyWith<$Res>  {
$GroomingsEventCopyWith(GroomingsEvent _, $Res Function(GroomingsEvent) __);
}


/// @nodoc


class _Init implements GroomingsEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GroomingsEvent.init()';
}


}




/// @nodoc


class _Groomings implements GroomingsEvent {
  const _Groomings(this.date);
  

 final  DateTime? date;

/// Create a copy of GroomingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroomingsCopyWith<_Groomings> get copyWith => __$GroomingsCopyWithImpl<_Groomings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Groomings&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'GroomingsEvent.groomings(date: $date)';
}


}

/// @nodoc
abstract mixin class _$GroomingsCopyWith<$Res> implements $GroomingsEventCopyWith<$Res> {
  factory _$GroomingsCopyWith(_Groomings value, $Res Function(_Groomings) _then) = __$GroomingsCopyWithImpl;
@useResult
$Res call({
 DateTime? date
});




}
/// @nodoc
class __$GroomingsCopyWithImpl<$Res>
    implements _$GroomingsCopyWith<$Res> {
  __$GroomingsCopyWithImpl(this._self, this._then);

  final _Groomings _self;
  final $Res Function(_Groomings) _then;

/// Create a copy of GroomingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = freezed,}) {
  return _then(_Groomings(
freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$GroomingsState {

 Status get groomingsStatus; List<PetGrooming> get groomings;
/// Create a copy of GroomingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroomingsStateCopyWith<GroomingsState> get copyWith => _$GroomingsStateCopyWithImpl<GroomingsState>(this as GroomingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroomingsState&&(identical(other.groomingsStatus, groomingsStatus) || other.groomingsStatus == groomingsStatus)&&const DeepCollectionEquality().equals(other.groomings, groomings));
}


@override
int get hashCode => Object.hash(runtimeType,groomingsStatus,const DeepCollectionEquality().hash(groomings));

@override
String toString() {
  return 'GroomingsState(groomingsStatus: $groomingsStatus, groomings: $groomings)';
}


}

/// @nodoc
abstract mixin class $GroomingsStateCopyWith<$Res>  {
  factory $GroomingsStateCopyWith(GroomingsState value, $Res Function(GroomingsState) _then) = _$GroomingsStateCopyWithImpl;
@useResult
$Res call({
 Status groomingsStatus, List<PetGrooming> groomings
});




}
/// @nodoc
class _$GroomingsStateCopyWithImpl<$Res>
    implements $GroomingsStateCopyWith<$Res> {
  _$GroomingsStateCopyWithImpl(this._self, this._then);

  final GroomingsState _self;
  final $Res Function(GroomingsState) _then;

/// Create a copy of GroomingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groomingsStatus = null,Object? groomings = null,}) {
  return _then(_self.copyWith(
groomingsStatus: null == groomingsStatus ? _self.groomingsStatus : groomingsStatus // ignore: cast_nullable_to_non_nullable
as Status,groomings: null == groomings ? _self.groomings : groomings // ignore: cast_nullable_to_non_nullable
as List<PetGrooming>,
  ));
}

}


/// @nodoc


class _GroomingsState implements GroomingsState {
  const _GroomingsState({this.groomingsStatus = Status.init, final  List<PetGrooming> groomings = const []}): _groomings = groomings;
  

@override@JsonKey() final  Status groomingsStatus;
 final  List<PetGrooming> _groomings;
@override@JsonKey() List<PetGrooming> get groomings {
  if (_groomings is EqualUnmodifiableListView) return _groomings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_groomings);
}


/// Create a copy of GroomingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroomingsStateCopyWith<_GroomingsState> get copyWith => __$GroomingsStateCopyWithImpl<_GroomingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroomingsState&&(identical(other.groomingsStatus, groomingsStatus) || other.groomingsStatus == groomingsStatus)&&const DeepCollectionEquality().equals(other._groomings, _groomings));
}


@override
int get hashCode => Object.hash(runtimeType,groomingsStatus,const DeepCollectionEquality().hash(_groomings));

@override
String toString() {
  return 'GroomingsState(groomingsStatus: $groomingsStatus, groomings: $groomings)';
}


}

/// @nodoc
abstract mixin class _$GroomingsStateCopyWith<$Res> implements $GroomingsStateCopyWith<$Res> {
  factory _$GroomingsStateCopyWith(_GroomingsState value, $Res Function(_GroomingsState) _then) = __$GroomingsStateCopyWithImpl;
@override @useResult
$Res call({
 Status groomingsStatus, List<PetGrooming> groomings
});




}
/// @nodoc
class __$GroomingsStateCopyWithImpl<$Res>
    implements _$GroomingsStateCopyWith<$Res> {
  __$GroomingsStateCopyWithImpl(this._self, this._then);

  final _GroomingsState _self;
  final $Res Function(_GroomingsState) _then;

/// Create a copy of GroomingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groomingsStatus = null,Object? groomings = null,}) {
  return _then(_GroomingsState(
groomingsStatus: null == groomingsStatus ? _self.groomingsStatus : groomingsStatus // ignore: cast_nullable_to_non_nullable
as Status,groomings: null == groomings ? _self._groomings : groomings // ignore: cast_nullable_to_non_nullable
as List<PetGrooming>,
  ));
}


}

// dart format on
