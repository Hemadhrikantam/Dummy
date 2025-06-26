// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent()';
}


}

/// @nodoc
class $DashboardEventCopyWith<$Res>  {
$DashboardEventCopyWith(DashboardEvent _, $Res Function(DashboardEvent) __);
}


/// @nodoc


class _DashboardPetDetails implements DashboardEvent {
  const _DashboardPetDetails();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardPetDetails);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent.dashboardPets()';
}


}




/// @nodoc
mixin _$DashboardState {

 Status get initStatus; List<DashboardPetDetails> get dashboardPetDetails;
/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStateCopyWith<DashboardState> get copyWith => _$DashboardStateCopyWithImpl<DashboardState>(this as DashboardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&const DeepCollectionEquality().equals(other.dashboardPetDetails, dashboardPetDetails));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,const DeepCollectionEquality().hash(dashboardPetDetails));

@override
String toString() {
  return 'DashboardState(initStatus: $initStatus, dashboardPetDetails: $dashboardPetDetails)';
}


}

/// @nodoc
abstract mixin class $DashboardStateCopyWith<$Res>  {
  factory $DashboardStateCopyWith(DashboardState value, $Res Function(DashboardState) _then) = _$DashboardStateCopyWithImpl;
@useResult
$Res call({
 Status initStatus, List<DashboardPetDetails> dashboardPetDetails
});




}
/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._self, this._then);

  final DashboardState _self;
  final $Res Function(DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initStatus = null,Object? dashboardPetDetails = null,}) {
  return _then(_self.copyWith(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,dashboardPetDetails: null == dashboardPetDetails ? _self.dashboardPetDetails : dashboardPetDetails // ignore: cast_nullable_to_non_nullable
as List<DashboardPetDetails>,
  ));
}

}


/// @nodoc


class _DashboardState implements DashboardState {
  const _DashboardState({this.initStatus = Status.init, final  List<DashboardPetDetails> dashboardPetDetails = const []}): _dashboardPetDetails = dashboardPetDetails;
  

@override@JsonKey() final  Status initStatus;
 final  List<DashboardPetDetails> _dashboardPetDetails;
@override@JsonKey() List<DashboardPetDetails> get dashboardPetDetails {
  if (_dashboardPetDetails is EqualUnmodifiableListView) return _dashboardPetDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dashboardPetDetails);
}


/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStateCopyWith<_DashboardState> get copyWith => __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&const DeepCollectionEquality().equals(other._dashboardPetDetails, _dashboardPetDetails));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,const DeepCollectionEquality().hash(_dashboardPetDetails));

@override
String toString() {
  return 'DashboardState(initStatus: $initStatus, dashboardPetDetails: $dashboardPetDetails)';
}


}

/// @nodoc
abstract mixin class _$DashboardStateCopyWith<$Res> implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(_DashboardState value, $Res Function(_DashboardState) _then) = __$DashboardStateCopyWithImpl;
@override @useResult
$Res call({
 Status initStatus, List<DashboardPetDetails> dashboardPetDetails
});




}
/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(this._self, this._then);

  final _DashboardState _self;
  final $Res Function(_DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initStatus = null,Object? dashboardPetDetails = null,}) {
  return _then(_DashboardState(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,dashboardPetDetails: null == dashboardPetDetails ? _self._dashboardPetDetails : dashboardPetDetails // ignore: cast_nullable_to_non_nullable
as List<DashboardPetDetails>,
  ));
}


}

// dart format on
