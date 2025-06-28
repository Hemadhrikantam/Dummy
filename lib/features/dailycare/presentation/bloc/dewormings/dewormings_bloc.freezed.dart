// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dewormings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DewormingsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DewormingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DewormingsEvent()';
}


}

/// @nodoc
class $DewormingsEventCopyWith<$Res>  {
$DewormingsEventCopyWith(DewormingsEvent _, $Res Function(DewormingsEvent) __);
}


/// @nodoc


class _Init implements DewormingsEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DewormingsEvent.init()';
}


}




/// @nodoc


class _Dewormings implements DewormingsEvent {
  const _Dewormings(this.date);
  

 final  DateTime? date;

/// Create a copy of DewormingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DewormingsCopyWith<_Dewormings> get copyWith => __$DewormingsCopyWithImpl<_Dewormings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dewormings&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'DewormingsEvent.dewormings(date: $date)';
}


}

/// @nodoc
abstract mixin class _$DewormingsCopyWith<$Res> implements $DewormingsEventCopyWith<$Res> {
  factory _$DewormingsCopyWith(_Dewormings value, $Res Function(_Dewormings) _then) = __$DewormingsCopyWithImpl;
@useResult
$Res call({
 DateTime? date
});




}
/// @nodoc
class __$DewormingsCopyWithImpl<$Res>
    implements _$DewormingsCopyWith<$Res> {
  __$DewormingsCopyWithImpl(this._self, this._then);

  final _Dewormings _self;
  final $Res Function(_Dewormings) _then;

/// Create a copy of DewormingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = freezed,}) {
  return _then(_Dewormings(
freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$DewormingsState {

 Status get dewormingsStatus; List<PetDeworming> get dewormings;
/// Create a copy of DewormingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DewormingsStateCopyWith<DewormingsState> get copyWith => _$DewormingsStateCopyWithImpl<DewormingsState>(this as DewormingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DewormingsState&&(identical(other.dewormingsStatus, dewormingsStatus) || other.dewormingsStatus == dewormingsStatus)&&const DeepCollectionEquality().equals(other.dewormings, dewormings));
}


@override
int get hashCode => Object.hash(runtimeType,dewormingsStatus,const DeepCollectionEquality().hash(dewormings));

@override
String toString() {
  return 'DewormingsState(dewormingsStatus: $dewormingsStatus, dewormings: $dewormings)';
}


}

/// @nodoc
abstract mixin class $DewormingsStateCopyWith<$Res>  {
  factory $DewormingsStateCopyWith(DewormingsState value, $Res Function(DewormingsState) _then) = _$DewormingsStateCopyWithImpl;
@useResult
$Res call({
 Status dewormingsStatus, List<PetDeworming> dewormings
});




}
/// @nodoc
class _$DewormingsStateCopyWithImpl<$Res>
    implements $DewormingsStateCopyWith<$Res> {
  _$DewormingsStateCopyWithImpl(this._self, this._then);

  final DewormingsState _self;
  final $Res Function(DewormingsState) _then;

/// Create a copy of DewormingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dewormingsStatus = null,Object? dewormings = null,}) {
  return _then(_self.copyWith(
dewormingsStatus: null == dewormingsStatus ? _self.dewormingsStatus : dewormingsStatus // ignore: cast_nullable_to_non_nullable
as Status,dewormings: null == dewormings ? _self.dewormings : dewormings // ignore: cast_nullable_to_non_nullable
as List<PetDeworming>,
  ));
}

}


/// @nodoc


class _DewormingsState implements DewormingsState {
  const _DewormingsState({this.dewormingsStatus = Status.init, final  List<PetDeworming> dewormings = const []}): _dewormings = dewormings;
  

@override@JsonKey() final  Status dewormingsStatus;
 final  List<PetDeworming> _dewormings;
@override@JsonKey() List<PetDeworming> get dewormings {
  if (_dewormings is EqualUnmodifiableListView) return _dewormings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dewormings);
}


/// Create a copy of DewormingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DewormingsStateCopyWith<_DewormingsState> get copyWith => __$DewormingsStateCopyWithImpl<_DewormingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DewormingsState&&(identical(other.dewormingsStatus, dewormingsStatus) || other.dewormingsStatus == dewormingsStatus)&&const DeepCollectionEquality().equals(other._dewormings, _dewormings));
}


@override
int get hashCode => Object.hash(runtimeType,dewormingsStatus,const DeepCollectionEquality().hash(_dewormings));

@override
String toString() {
  return 'DewormingsState(dewormingsStatus: $dewormingsStatus, dewormings: $dewormings)';
}


}

/// @nodoc
abstract mixin class _$DewormingsStateCopyWith<$Res> implements $DewormingsStateCopyWith<$Res> {
  factory _$DewormingsStateCopyWith(_DewormingsState value, $Res Function(_DewormingsState) _then) = __$DewormingsStateCopyWithImpl;
@override @useResult
$Res call({
 Status dewormingsStatus, List<PetDeworming> dewormings
});




}
/// @nodoc
class __$DewormingsStateCopyWithImpl<$Res>
    implements _$DewormingsStateCopyWith<$Res> {
  __$DewormingsStateCopyWithImpl(this._self, this._then);

  final _DewormingsState _self;
  final $Res Function(_DewormingsState) _then;

/// Create a copy of DewormingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dewormingsStatus = null,Object? dewormings = null,}) {
  return _then(_DewormingsState(
dewormingsStatus: null == dewormingsStatus ? _self.dewormingsStatus : dewormingsStatus // ignore: cast_nullable_to_non_nullable
as Status,dewormings: null == dewormings ? _self._dewormings : dewormings // ignore: cast_nullable_to_non_nullable
as List<PetDeworming>,
  ));
}


}

// dart format on
