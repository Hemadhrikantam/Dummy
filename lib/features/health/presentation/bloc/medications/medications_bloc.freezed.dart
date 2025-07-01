// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MedicationsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicationsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MedicationsEvent()';
}


}

/// @nodoc
class $MedicationsEventCopyWith<$Res>  {
$MedicationsEventCopyWith(MedicationsEvent _, $Res Function(MedicationsEvent) __);
}


/// @nodoc


class _Init implements MedicationsEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MedicationsEvent.init()';
}


}




/// @nodoc


class _Medications implements MedicationsEvent {
  const _Medications(this.key);
  

 final  String? key;

/// Create a copy of MedicationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicationsCopyWith<_Medications> get copyWith => __$MedicationsCopyWithImpl<_Medications>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Medications&&(identical(other.key, key) || other.key == key));
}


@override
int get hashCode => Object.hash(runtimeType,key);

@override
String toString() {
  return 'MedicationsEvent.medications(key: $key)';
}


}

/// @nodoc
abstract mixin class _$MedicationsCopyWith<$Res> implements $MedicationsEventCopyWith<$Res> {
  factory _$MedicationsCopyWith(_Medications value, $Res Function(_Medications) _then) = __$MedicationsCopyWithImpl;
@useResult
$Res call({
 String? key
});




}
/// @nodoc
class __$MedicationsCopyWithImpl<$Res>
    implements _$MedicationsCopyWith<$Res> {
  __$MedicationsCopyWithImpl(this._self, this._then);

  final _Medications _self;
  final $Res Function(_Medications) _then;

/// Create a copy of MedicationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? key = freezed,}) {
  return _then(_Medications(
freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _Filter implements MedicationsEvent {
  const _Filter(this.startDate, this.endDate);
  

 final  String startDate;
 final  String endDate;

/// Create a copy of MedicationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterCopyWith<_Filter> get copyWith => __$FilterCopyWithImpl<_Filter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Filter&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,startDate,endDate);

@override
String toString() {
  return 'MedicationsEvent.filter(startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$FilterCopyWith<$Res> implements $MedicationsEventCopyWith<$Res> {
  factory _$FilterCopyWith(_Filter value, $Res Function(_Filter) _then) = __$FilterCopyWithImpl;
@useResult
$Res call({
 String startDate, String endDate
});




}
/// @nodoc
class __$FilterCopyWithImpl<$Res>
    implements _$FilterCopyWith<$Res> {
  __$FilterCopyWithImpl(this._self, this._then);

  final _Filter _self;
  final $Res Function(_Filter) _then;

/// Create a copy of MedicationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? startDate = null,Object? endDate = null,}) {
  return _then(_Filter(
null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MedicationsState {

 Status get medicationsStatus; List<PetMedication> get medications; NotEmpty get startDate; NotEmpty get endDate;
/// Create a copy of MedicationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicationsStateCopyWith<MedicationsState> get copyWith => _$MedicationsStateCopyWithImpl<MedicationsState>(this as MedicationsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicationsState&&(identical(other.medicationsStatus, medicationsStatus) || other.medicationsStatus == medicationsStatus)&&const DeepCollectionEquality().equals(other.medications, medications)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,medicationsStatus,const DeepCollectionEquality().hash(medications),startDate,endDate);

@override
String toString() {
  return 'MedicationsState(medicationsStatus: $medicationsStatus, medications: $medications, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $MedicationsStateCopyWith<$Res>  {
  factory $MedicationsStateCopyWith(MedicationsState value, $Res Function(MedicationsState) _then) = _$MedicationsStateCopyWithImpl;
@useResult
$Res call({
 Status medicationsStatus, List<PetMedication> medications, NotEmpty startDate, NotEmpty endDate
});




}
/// @nodoc
class _$MedicationsStateCopyWithImpl<$Res>
    implements $MedicationsStateCopyWith<$Res> {
  _$MedicationsStateCopyWithImpl(this._self, this._then);

  final MedicationsState _self;
  final $Res Function(MedicationsState) _then;

/// Create a copy of MedicationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? medicationsStatus = null,Object? medications = null,Object? startDate = null,Object? endDate = null,}) {
  return _then(_self.copyWith(
medicationsStatus: null == medicationsStatus ? _self.medicationsStatus : medicationsStatus // ignore: cast_nullable_to_non_nullable
as Status,medications: null == medications ? _self.medications : medications // ignore: cast_nullable_to_non_nullable
as List<PetMedication>,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as NotEmpty,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as NotEmpty,
  ));
}

}


/// @nodoc


class _MedicationsState implements MedicationsState {
  const _MedicationsState({this.medicationsStatus = Status.init, final  List<PetMedication> medications = const [], this.startDate = const NotEmpty.pure(), this.endDate = const NotEmpty.pure()}): _medications = medications;
  

@override@JsonKey() final  Status medicationsStatus;
 final  List<PetMedication> _medications;
@override@JsonKey() List<PetMedication> get medications {
  if (_medications is EqualUnmodifiableListView) return _medications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_medications);
}

@override@JsonKey() final  NotEmpty startDate;
@override@JsonKey() final  NotEmpty endDate;

/// Create a copy of MedicationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicationsStateCopyWith<_MedicationsState> get copyWith => __$MedicationsStateCopyWithImpl<_MedicationsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicationsState&&(identical(other.medicationsStatus, medicationsStatus) || other.medicationsStatus == medicationsStatus)&&const DeepCollectionEquality().equals(other._medications, _medications)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,medicationsStatus,const DeepCollectionEquality().hash(_medications),startDate,endDate);

@override
String toString() {
  return 'MedicationsState(medicationsStatus: $medicationsStatus, medications: $medications, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$MedicationsStateCopyWith<$Res> implements $MedicationsStateCopyWith<$Res> {
  factory _$MedicationsStateCopyWith(_MedicationsState value, $Res Function(_MedicationsState) _then) = __$MedicationsStateCopyWithImpl;
@override @useResult
$Res call({
 Status medicationsStatus, List<PetMedication> medications, NotEmpty startDate, NotEmpty endDate
});




}
/// @nodoc
class __$MedicationsStateCopyWithImpl<$Res>
    implements _$MedicationsStateCopyWith<$Res> {
  __$MedicationsStateCopyWithImpl(this._self, this._then);

  final _MedicationsState _self;
  final $Res Function(_MedicationsState) _then;

/// Create a copy of MedicationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? medicationsStatus = null,Object? medications = null,Object? startDate = null,Object? endDate = null,}) {
  return _then(_MedicationsState(
medicationsStatus: null == medicationsStatus ? _self.medicationsStatus : medicationsStatus // ignore: cast_nullable_to_non_nullable
as Status,medications: null == medications ? _self._medications : medications // ignore: cast_nullable_to_non_nullable
as List<PetMedication>,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as NotEmpty,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as NotEmpty,
  ));
}


}

// dart format on
