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


class _SelectedPet implements DashboardEvent {
  const _SelectedPet(this.selectedPet);
  

 final  DashboardPetDetails selectedPet;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectedPetCopyWith<_SelectedPet> get copyWith => __$SelectedPetCopyWithImpl<_SelectedPet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectedPet&&(identical(other.selectedPet, selectedPet) || other.selectedPet == selectedPet));
}


@override
int get hashCode => Object.hash(runtimeType,selectedPet);

@override
String toString() {
  return 'DashboardEvent.selectedPet(selectedPet: $selectedPet)';
}


}

/// @nodoc
abstract mixin class _$SelectedPetCopyWith<$Res> implements $DashboardEventCopyWith<$Res> {
  factory _$SelectedPetCopyWith(_SelectedPet value, $Res Function(_SelectedPet) _then) = __$SelectedPetCopyWithImpl;
@useResult
$Res call({
 DashboardPetDetails selectedPet
});




}
/// @nodoc
class __$SelectedPetCopyWithImpl<$Res>
    implements _$SelectedPetCopyWith<$Res> {
  __$SelectedPetCopyWithImpl(this._self, this._then);

  final _SelectedPet _self;
  final $Res Function(_SelectedPet) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedPet = null,}) {
  return _then(_SelectedPet(
null == selectedPet ? _self.selectedPet : selectedPet // ignore: cast_nullable_to_non_nullable
as DashboardPetDetails,
  ));
}


}

/// @nodoc


class _PetName implements DashboardEvent {
  const _PetName(this.petName);
  

 final  String petName;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetNameCopyWith<_PetName> get copyWith => __$PetNameCopyWithImpl<_PetName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetName&&(identical(other.petName, petName) || other.petName == petName));
}


@override
int get hashCode => Object.hash(runtimeType,petName);

@override
String toString() {
  return 'DashboardEvent.petName(petName: $petName)';
}


}

/// @nodoc
abstract mixin class _$PetNameCopyWith<$Res> implements $DashboardEventCopyWith<$Res> {
  factory _$PetNameCopyWith(_PetName value, $Res Function(_PetName) _then) = __$PetNameCopyWithImpl;
@useResult
$Res call({
 String petName
});




}
/// @nodoc
class __$PetNameCopyWithImpl<$Res>
    implements _$PetNameCopyWith<$Res> {
  __$PetNameCopyWithImpl(this._self, this._then);

  final _PetName _self;
  final $Res Function(_PetName) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petName = null,}) {
  return _then(_PetName(
null == petName ? _self.petName : petName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PetImage implements DashboardEvent {
  const _PetImage(this.petImage);
  

 final  String petImage;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetImageCopyWith<_PetImage> get copyWith => __$PetImageCopyWithImpl<_PetImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetImage&&(identical(other.petImage, petImage) || other.petImage == petImage));
}


@override
int get hashCode => Object.hash(runtimeType,petImage);

@override
String toString() {
  return 'DashboardEvent.petImage(petImage: $petImage)';
}


}

/// @nodoc
abstract mixin class _$PetImageCopyWith<$Res> implements $DashboardEventCopyWith<$Res> {
  factory _$PetImageCopyWith(_PetImage value, $Res Function(_PetImage) _then) = __$PetImageCopyWithImpl;
@useResult
$Res call({
 String petImage
});




}
/// @nodoc
class __$PetImageCopyWithImpl<$Res>
    implements _$PetImageCopyWith<$Res> {
  __$PetImageCopyWithImpl(this._self, this._then);

  final _PetImage _self;
  final $Res Function(_PetImage) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petImage = null,}) {
  return _then(_PetImage(
null == petImage ? _self.petImage : petImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DashboardState {

 Status get initStatus; String get petName; String get petImage; DashboardPetDetails? get selectedPet; List<DashboardPetDetails> get dashboardPetDetails;
/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStateCopyWith<DashboardState> get copyWith => _$DashboardStateCopyWithImpl<DashboardState>(this as DashboardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&(identical(other.petName, petName) || other.petName == petName)&&(identical(other.petImage, petImage) || other.petImage == petImage)&&(identical(other.selectedPet, selectedPet) || other.selectedPet == selectedPet)&&const DeepCollectionEquality().equals(other.dashboardPetDetails, dashboardPetDetails));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,petName,petImage,selectedPet,const DeepCollectionEquality().hash(dashboardPetDetails));

@override
String toString() {
  return 'DashboardState(initStatus: $initStatus, petName: $petName, petImage: $petImage, selectedPet: $selectedPet, dashboardPetDetails: $dashboardPetDetails)';
}


}

/// @nodoc
abstract mixin class $DashboardStateCopyWith<$Res>  {
  factory $DashboardStateCopyWith(DashboardState value, $Res Function(DashboardState) _then) = _$DashboardStateCopyWithImpl;
@useResult
$Res call({
 Status initStatus, String petName, String petImage, DashboardPetDetails? selectedPet, List<DashboardPetDetails> dashboardPetDetails
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
@pragma('vm:prefer-inline') @override $Res call({Object? initStatus = null,Object? petName = null,Object? petImage = null,Object? selectedPet = freezed,Object? dashboardPetDetails = null,}) {
  return _then(_self.copyWith(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,petName: null == petName ? _self.petName : petName // ignore: cast_nullable_to_non_nullable
as String,petImage: null == petImage ? _self.petImage : petImage // ignore: cast_nullable_to_non_nullable
as String,selectedPet: freezed == selectedPet ? _self.selectedPet : selectedPet // ignore: cast_nullable_to_non_nullable
as DashboardPetDetails?,dashboardPetDetails: null == dashboardPetDetails ? _self.dashboardPetDetails : dashboardPetDetails // ignore: cast_nullable_to_non_nullable
as List<DashboardPetDetails>,
  ));
}

}


/// @nodoc


class _DashboardState implements DashboardState {
  const _DashboardState({this.initStatus = Status.init, this.petName = '', this.petImage = '', this.selectedPet = null, final  List<DashboardPetDetails> dashboardPetDetails = const []}): _dashboardPetDetails = dashboardPetDetails;
  

@override@JsonKey() final  Status initStatus;
@override@JsonKey() final  String petName;
@override@JsonKey() final  String petImage;
@override@JsonKey() final  DashboardPetDetails? selectedPet;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&(identical(other.petName, petName) || other.petName == petName)&&(identical(other.petImage, petImage) || other.petImage == petImage)&&(identical(other.selectedPet, selectedPet) || other.selectedPet == selectedPet)&&const DeepCollectionEquality().equals(other._dashboardPetDetails, _dashboardPetDetails));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,petName,petImage,selectedPet,const DeepCollectionEquality().hash(_dashboardPetDetails));

@override
String toString() {
  return 'DashboardState(initStatus: $initStatus, petName: $petName, petImage: $petImage, selectedPet: $selectedPet, dashboardPetDetails: $dashboardPetDetails)';
}


}

/// @nodoc
abstract mixin class _$DashboardStateCopyWith<$Res> implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(_DashboardState value, $Res Function(_DashboardState) _then) = __$DashboardStateCopyWithImpl;
@override @useResult
$Res call({
 Status initStatus, String petName, String petImage, DashboardPetDetails? selectedPet, List<DashboardPetDetails> dashboardPetDetails
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
@override @pragma('vm:prefer-inline') $Res call({Object? initStatus = null,Object? petName = null,Object? petImage = null,Object? selectedPet = freezed,Object? dashboardPetDetails = null,}) {
  return _then(_DashboardState(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,petName: null == petName ? _self.petName : petName // ignore: cast_nullable_to_non_nullable
as String,petImage: null == petImage ? _self.petImage : petImage // ignore: cast_nullable_to_non_nullable
as String,selectedPet: freezed == selectedPet ? _self.selectedPet : selectedPet // ignore: cast_nullable_to_non_nullable
as DashboardPetDetails?,dashboardPetDetails: null == dashboardPetDetails ? _self._dashboardPetDetails : dashboardPetDetails // ignore: cast_nullable_to_non_nullable
as List<DashboardPetDetails>,
  ));
}


}

// dart format on
