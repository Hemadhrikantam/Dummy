// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'walks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalksEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalksEvent()';
}


}

/// @nodoc
class $WalksEventCopyWith<$Res>  {
$WalksEventCopyWith(WalksEvent _, $Res Function(WalksEvent) __);
}


/// @nodoc


class _Init implements WalksEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalksEvent.init()';
}


}




/// @nodoc


class _Walks implements WalksEvent {
  const _Walks(this.date);
  

 final  DateTime? date;

/// Create a copy of WalksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalksCopyWith<_Walks> get copyWith => __$WalksCopyWithImpl<_Walks>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Walks&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'WalksEvent.walks(date: $date)';
}


}

/// @nodoc
abstract mixin class _$WalksCopyWith<$Res> implements $WalksEventCopyWith<$Res> {
  factory _$WalksCopyWith(_Walks value, $Res Function(_Walks) _then) = __$WalksCopyWithImpl;
@useResult
$Res call({
 DateTime? date
});




}
/// @nodoc
class __$WalksCopyWithImpl<$Res>
    implements _$WalksCopyWith<$Res> {
  __$WalksCopyWithImpl(this._self, this._then);

  final _Walks _self;
  final $Res Function(_Walks) _then;

/// Create a copy of WalksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = freezed,}) {
  return _then(_Walks(
freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$WalksState {

 Status get walksStatus; List<PetWalk> get walks;
/// Create a copy of WalksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalksStateCopyWith<WalksState> get copyWith => _$WalksStateCopyWithImpl<WalksState>(this as WalksState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalksState&&(identical(other.walksStatus, walksStatus) || other.walksStatus == walksStatus)&&const DeepCollectionEquality().equals(other.walks, walks));
}


@override
int get hashCode => Object.hash(runtimeType,walksStatus,const DeepCollectionEquality().hash(walks));

@override
String toString() {
  return 'WalksState(walksStatus: $walksStatus, walks: $walks)';
}


}

/// @nodoc
abstract mixin class $WalksStateCopyWith<$Res>  {
  factory $WalksStateCopyWith(WalksState value, $Res Function(WalksState) _then) = _$WalksStateCopyWithImpl;
@useResult
$Res call({
 Status walksStatus, List<PetWalk> walks
});




}
/// @nodoc
class _$WalksStateCopyWithImpl<$Res>
    implements $WalksStateCopyWith<$Res> {
  _$WalksStateCopyWithImpl(this._self, this._then);

  final WalksState _self;
  final $Res Function(WalksState) _then;

/// Create a copy of WalksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? walksStatus = null,Object? walks = null,}) {
  return _then(_self.copyWith(
walksStatus: null == walksStatus ? _self.walksStatus : walksStatus // ignore: cast_nullable_to_non_nullable
as Status,walks: null == walks ? _self.walks : walks // ignore: cast_nullable_to_non_nullable
as List<PetWalk>,
  ));
}

}


/// @nodoc


class _WalksState implements WalksState {
  const _WalksState({this.walksStatus = Status.init, final  List<PetWalk> walks = const []}): _walks = walks;
  

@override@JsonKey() final  Status walksStatus;
 final  List<PetWalk> _walks;
@override@JsonKey() List<PetWalk> get walks {
  if (_walks is EqualUnmodifiableListView) return _walks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_walks);
}


/// Create a copy of WalksState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalksStateCopyWith<_WalksState> get copyWith => __$WalksStateCopyWithImpl<_WalksState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalksState&&(identical(other.walksStatus, walksStatus) || other.walksStatus == walksStatus)&&const DeepCollectionEquality().equals(other._walks, _walks));
}


@override
int get hashCode => Object.hash(runtimeType,walksStatus,const DeepCollectionEquality().hash(_walks));

@override
String toString() {
  return 'WalksState(walksStatus: $walksStatus, walks: $walks)';
}


}

/// @nodoc
abstract mixin class _$WalksStateCopyWith<$Res> implements $WalksStateCopyWith<$Res> {
  factory _$WalksStateCopyWith(_WalksState value, $Res Function(_WalksState) _then) = __$WalksStateCopyWithImpl;
@override @useResult
$Res call({
 Status walksStatus, List<PetWalk> walks
});




}
/// @nodoc
class __$WalksStateCopyWithImpl<$Res>
    implements _$WalksStateCopyWith<$Res> {
  __$WalksStateCopyWithImpl(this._self, this._then);

  final _WalksState _self;
  final $Res Function(_WalksState) _then;

/// Create a copy of WalksState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? walksStatus = null,Object? walks = null,}) {
  return _then(_WalksState(
walksStatus: null == walksStatus ? _self.walksStatus : walksStatus // ignore: cast_nullable_to_non_nullable
as Status,walks: null == walks ? _self._walks : walks // ignore: cast_nullable_to_non_nullable
as List<PetWalk>,
  ));
}


}

// dart format on
