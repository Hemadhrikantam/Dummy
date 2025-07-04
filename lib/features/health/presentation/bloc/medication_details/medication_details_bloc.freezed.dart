// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MedicationDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicationDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MedicationDetailsEvent()';
}


}

/// @nodoc
class $MedicationDetailsEventCopyWith<$Res>  {
$MedicationDetailsEventCopyWith(MedicationDetailsEvent _, $Res Function(MedicationDetailsEvent) __);
}


/// @nodoc


class _Init implements MedicationDetailsEvent {
  const _Init(this.id);
  

 final  int id;

/// Create a copy of MedicationDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitCopyWith<_Init> get copyWith => __$InitCopyWithImpl<_Init>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MedicationDetailsEvent.init(id: $id)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $MedicationDetailsEventCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) _then) = __$InitCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$InitCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(this._self, this._then);

  final _Init _self;
  final $Res Function(_Init) _then;

/// Create a copy of MedicationDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Init(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _GetDate implements MedicationDetailsEvent {
  const _GetDate(this.date);
  

 final  DateTime date;

/// Create a copy of MedicationDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDateCopyWith<_GetDate> get copyWith => __$GetDateCopyWithImpl<_GetDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDate&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'MedicationDetailsEvent.getDate(date: $date)';
}


}

/// @nodoc
abstract mixin class _$GetDateCopyWith<$Res> implements $MedicationDetailsEventCopyWith<$Res> {
  factory _$GetDateCopyWith(_GetDate value, $Res Function(_GetDate) _then) = __$GetDateCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class __$GetDateCopyWithImpl<$Res>
    implements _$GetDateCopyWith<$Res> {
  __$GetDateCopyWithImpl(this._self, this._then);

  final _GetDate _self;
  final $Res Function(_GetDate) _then;

/// Create a copy of MedicationDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(_GetDate(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _UpdateDate implements MedicationDetailsEvent {
  const _UpdateDate(this.value);
  

 final  MedicationDate value;

/// Create a copy of MedicationDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDateCopyWith<_UpdateDate> get copyWith => __$UpdateDateCopyWithImpl<_UpdateDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDate&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationDetailsEvent.updateDate(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UpdateDateCopyWith<$Res> implements $MedicationDetailsEventCopyWith<$Res> {
  factory _$UpdateDateCopyWith(_UpdateDate value, $Res Function(_UpdateDate) _then) = __$UpdateDateCopyWithImpl;
@useResult
$Res call({
 MedicationDate value
});




}
/// @nodoc
class __$UpdateDateCopyWithImpl<$Res>
    implements _$UpdateDateCopyWith<$Res> {
  __$UpdateDateCopyWithImpl(this._self, this._then);

  final _UpdateDate _self;
  final $Res Function(_UpdateDate) _then;

/// Create a copy of MedicationDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_UpdateDate(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as MedicationDate,
  ));
}


}

/// @nodoc
mixin _$MedicationDetailsState {

 Status get initStatus; PetMedication? get medication; int get id; List<MedicationDate> get dates;
/// Create a copy of MedicationDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicationDetailsStateCopyWith<MedicationDetailsState> get copyWith => _$MedicationDetailsStateCopyWithImpl<MedicationDetailsState>(this as MedicationDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicationDetailsState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&(identical(other.medication, medication) || other.medication == medication)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.dates, dates));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,medication,id,const DeepCollectionEquality().hash(dates));

@override
String toString() {
  return 'MedicationDetailsState(initStatus: $initStatus, medication: $medication, id: $id, dates: $dates)';
}


}

/// @nodoc
abstract mixin class $MedicationDetailsStateCopyWith<$Res>  {
  factory $MedicationDetailsStateCopyWith(MedicationDetailsState value, $Res Function(MedicationDetailsState) _then) = _$MedicationDetailsStateCopyWithImpl;
@useResult
$Res call({
 Status initStatus, PetMedication? medication, int id, List<MedicationDate> dates
});




}
/// @nodoc
class _$MedicationDetailsStateCopyWithImpl<$Res>
    implements $MedicationDetailsStateCopyWith<$Res> {
  _$MedicationDetailsStateCopyWithImpl(this._self, this._then);

  final MedicationDetailsState _self;
  final $Res Function(MedicationDetailsState) _then;

/// Create a copy of MedicationDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initStatus = null,Object? medication = freezed,Object? id = null,Object? dates = null,}) {
  return _then(_self.copyWith(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,medication: freezed == medication ? _self.medication : medication // ignore: cast_nullable_to_non_nullable
as PetMedication?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,dates: null == dates ? _self.dates : dates // ignore: cast_nullable_to_non_nullable
as List<MedicationDate>,
  ));
}

}


/// @nodoc


class _MedicationDetailsState implements MedicationDetailsState {
  const _MedicationDetailsState({this.initStatus = Status.init, this.medication = null, this.id = 0, final  List<MedicationDate> dates = const []}): _dates = dates;
  

@override@JsonKey() final  Status initStatus;
@override@JsonKey() final  PetMedication? medication;
@override@JsonKey() final  int id;
 final  List<MedicationDate> _dates;
@override@JsonKey() List<MedicationDate> get dates {
  if (_dates is EqualUnmodifiableListView) return _dates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dates);
}


/// Create a copy of MedicationDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicationDetailsStateCopyWith<_MedicationDetailsState> get copyWith => __$MedicationDetailsStateCopyWithImpl<_MedicationDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicationDetailsState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&(identical(other.medication, medication) || other.medication == medication)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._dates, _dates));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,medication,id,const DeepCollectionEquality().hash(_dates));

@override
String toString() {
  return 'MedicationDetailsState(initStatus: $initStatus, medication: $medication, id: $id, dates: $dates)';
}


}

/// @nodoc
abstract mixin class _$MedicationDetailsStateCopyWith<$Res> implements $MedicationDetailsStateCopyWith<$Res> {
  factory _$MedicationDetailsStateCopyWith(_MedicationDetailsState value, $Res Function(_MedicationDetailsState) _then) = __$MedicationDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 Status initStatus, PetMedication? medication, int id, List<MedicationDate> dates
});




}
/// @nodoc
class __$MedicationDetailsStateCopyWithImpl<$Res>
    implements _$MedicationDetailsStateCopyWith<$Res> {
  __$MedicationDetailsStateCopyWithImpl(this._self, this._then);

  final _MedicationDetailsState _self;
  final $Res Function(_MedicationDetailsState) _then;

/// Create a copy of MedicationDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initStatus = null,Object? medication = freezed,Object? id = null,Object? dates = null,}) {
  return _then(_MedicationDetailsState(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,medication: freezed == medication ? _self.medication : medication // ignore: cast_nullable_to_non_nullable
as PetMedication?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,dates: null == dates ? _self._dates : dates // ignore: cast_nullable_to_non_nullable
as List<MedicationDate>,
  ));
}


}

// dart format on
