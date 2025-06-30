// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MedicationFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicationFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MedicationFormEvent()';
}


}

/// @nodoc
class $MedicationFormEventCopyWith<$Res>  {
$MedicationFormEventCopyWith(MedicationFormEvent _, $Res Function(MedicationFormEvent) __);
}


/// @nodoc


class _Init implements MedicationFormEvent {
  const _Init(this.petId);
  

 final  int petId;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitCopyWith<_Init> get copyWith => __$InitCopyWithImpl<_Init>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hash(runtimeType,petId);

@override
String toString() {
  return 'MedicationFormEvent.init(petId: $petId)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) _then) = __$InitCopyWithImpl;
@useResult
$Res call({
 int petId
});




}
/// @nodoc
class __$InitCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(this._self, this._then);

  final _Init _self;
  final $Res Function(_Init) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petId = null,}) {
  return _then(_Init(
null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Reminder implements MedicationFormEvent {
  const _Reminder(this.value);
  

 final  bool value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReminderCopyWith<_Reminder> get copyWith => __$ReminderCopyWithImpl<_Reminder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reminder&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.reminder(value: $value)';
}


}

/// @nodoc
abstract mixin class _$ReminderCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$ReminderCopyWith(_Reminder value, $Res Function(_Reminder) _then) = __$ReminderCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class __$ReminderCopyWithImpl<$Res>
    implements _$ReminderCopyWith<$Res> {
  __$ReminderCopyWithImpl(this._self, this._then);

  final _Reminder _self;
  final $Res Function(_Reminder) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Reminder(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _TabletName implements MedicationFormEvent {
  const _TabletName(this.value);
  

 final  String value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TabletNameCopyWith<_TabletName> get copyWith => __$TabletNameCopyWithImpl<_TabletName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TabletName&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.tabletName(value: $value)';
}


}

/// @nodoc
abstract mixin class _$TabletNameCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$TabletNameCopyWith(_TabletName value, $Res Function(_TabletName) _then) = __$TabletNameCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$TabletNameCopyWithImpl<$Res>
    implements _$TabletNameCopyWith<$Res> {
  __$TabletNameCopyWithImpl(this._self, this._then);

  final _TabletName _self;
  final $Res Function(_TabletName) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_TabletName(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Company implements MedicationFormEvent {
  const _Company(this.value);
  

 final  String value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyCopyWith<_Company> get copyWith => __$CompanyCopyWithImpl<_Company>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Company&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.company(value: $value)';
}


}

/// @nodoc
abstract mixin class _$CompanyCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$CompanyCopyWith(_Company value, $Res Function(_Company) _then) = __$CompanyCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$CompanyCopyWithImpl<$Res>
    implements _$CompanyCopyWith<$Res> {
  __$CompanyCopyWithImpl(this._self, this._then);

  final _Company _self;
  final $Res Function(_Company) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Company(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Dosage implements MedicationFormEvent {
  const _Dosage(this.value);
  

 final  String value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DosageCopyWith<_Dosage> get copyWith => __$DosageCopyWithImpl<_Dosage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dosage&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.dosage(value: $value)';
}


}

/// @nodoc
abstract mixin class _$DosageCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$DosageCopyWith(_Dosage value, $Res Function(_Dosage) _then) = __$DosageCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$DosageCopyWithImpl<$Res>
    implements _$DosageCopyWith<$Res> {
  __$DosageCopyWithImpl(this._self, this._then);

  final _Dosage _self;
  final $Res Function(_Dosage) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Dosage(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DosageUnit implements MedicationFormEvent {
  const _DosageUnit(this.value);
  

 final  DropItem value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DosageUnitCopyWith<_DosageUnit> get copyWith => __$DosageUnitCopyWithImpl<_DosageUnit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DosageUnit&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.dosageUnit(value: $value)';
}


}

/// @nodoc
abstract mixin class _$DosageUnitCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$DosageUnitCopyWith(_DosageUnit value, $Res Function(_DosageUnit) _then) = __$DosageUnitCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$DosageUnitCopyWithImpl<$Res>
    implements _$DosageUnitCopyWith<$Res> {
  __$DosageUnitCopyWithImpl(this._self, this._then);

  final _DosageUnit _self;
  final $Res Function(_DosageUnit) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_DosageUnit(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _MorningTimeHour implements MedicationFormEvent {
  const _MorningTimeHour(this.value);
  

 final  DropItem value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MorningTimeHourCopyWith<_MorningTimeHour> get copyWith => __$MorningTimeHourCopyWithImpl<_MorningTimeHour>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MorningTimeHour&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.morningTimeHour(value: $value)';
}


}

/// @nodoc
abstract mixin class _$MorningTimeHourCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$MorningTimeHourCopyWith(_MorningTimeHour value, $Res Function(_MorningTimeHour) _then) = __$MorningTimeHourCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$MorningTimeHourCopyWithImpl<$Res>
    implements _$MorningTimeHourCopyWith<$Res> {
  __$MorningTimeHourCopyWithImpl(this._self, this._then);

  final _MorningTimeHour _self;
  final $Res Function(_MorningTimeHour) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_MorningTimeHour(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _MorningTimeMin implements MedicationFormEvent {
  const _MorningTimeMin(this.value);
  

 final  DropItem value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MorningTimeMinCopyWith<_MorningTimeMin> get copyWith => __$MorningTimeMinCopyWithImpl<_MorningTimeMin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MorningTimeMin&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.morningTimeMin(value: $value)';
}


}

/// @nodoc
abstract mixin class _$MorningTimeMinCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$MorningTimeMinCopyWith(_MorningTimeMin value, $Res Function(_MorningTimeMin) _then) = __$MorningTimeMinCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$MorningTimeMinCopyWithImpl<$Res>
    implements _$MorningTimeMinCopyWith<$Res> {
  __$MorningTimeMinCopyWithImpl(this._self, this._then);

  final _MorningTimeMin _self;
  final $Res Function(_MorningTimeMin) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_MorningTimeMin(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _AfternoonTimeHour implements MedicationFormEvent {
  const _AfternoonTimeHour(this.value);
  

 final  DropItem value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AfternoonTimeHourCopyWith<_AfternoonTimeHour> get copyWith => __$AfternoonTimeHourCopyWithImpl<_AfternoonTimeHour>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AfternoonTimeHour&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.afternoonTimeHour(value: $value)';
}


}

/// @nodoc
abstract mixin class _$AfternoonTimeHourCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$AfternoonTimeHourCopyWith(_AfternoonTimeHour value, $Res Function(_AfternoonTimeHour) _then) = __$AfternoonTimeHourCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$AfternoonTimeHourCopyWithImpl<$Res>
    implements _$AfternoonTimeHourCopyWith<$Res> {
  __$AfternoonTimeHourCopyWithImpl(this._self, this._then);

  final _AfternoonTimeHour _self;
  final $Res Function(_AfternoonTimeHour) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_AfternoonTimeHour(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _AfternoonTimeMin implements MedicationFormEvent {
  const _AfternoonTimeMin(this.value);
  

 final  DropItem value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AfternoonTimeMinCopyWith<_AfternoonTimeMin> get copyWith => __$AfternoonTimeMinCopyWithImpl<_AfternoonTimeMin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AfternoonTimeMin&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.afternoonTimeMin(value: $value)';
}


}

/// @nodoc
abstract mixin class _$AfternoonTimeMinCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$AfternoonTimeMinCopyWith(_AfternoonTimeMin value, $Res Function(_AfternoonTimeMin) _then) = __$AfternoonTimeMinCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$AfternoonTimeMinCopyWithImpl<$Res>
    implements _$AfternoonTimeMinCopyWith<$Res> {
  __$AfternoonTimeMinCopyWithImpl(this._self, this._then);

  final _AfternoonTimeMin _self;
  final $Res Function(_AfternoonTimeMin) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_AfternoonTimeMin(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _NightTimeHour implements MedicationFormEvent {
  const _NightTimeHour(this.value);
  

 final  DropItem value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NightTimeHourCopyWith<_NightTimeHour> get copyWith => __$NightTimeHourCopyWithImpl<_NightTimeHour>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NightTimeHour&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.nightTimeHour(value: $value)';
}


}

/// @nodoc
abstract mixin class _$NightTimeHourCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$NightTimeHourCopyWith(_NightTimeHour value, $Res Function(_NightTimeHour) _then) = __$NightTimeHourCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$NightTimeHourCopyWithImpl<$Res>
    implements _$NightTimeHourCopyWith<$Res> {
  __$NightTimeHourCopyWithImpl(this._self, this._then);

  final _NightTimeHour _self;
  final $Res Function(_NightTimeHour) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_NightTimeHour(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _NightTimeMin implements MedicationFormEvent {
  const _NightTimeMin(this.value);
  

 final  DropItem value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NightTimeMinCopyWith<_NightTimeMin> get copyWith => __$NightTimeMinCopyWithImpl<_NightTimeMin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NightTimeMin&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.nightTimeMin(value: $value)';
}


}

/// @nodoc
abstract mixin class _$NightTimeMinCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$NightTimeMinCopyWith(_NightTimeMin value, $Res Function(_NightTimeMin) _then) = __$NightTimeMinCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$NightTimeMinCopyWithImpl<$Res>
    implements _$NightTimeMinCopyWith<$Res> {
  __$NightTimeMinCopyWithImpl(this._self, this._then);

  final _NightTimeMin _self;
  final $Res Function(_NightTimeMin) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_NightTimeMin(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _MorningTimeEnable implements MedicationFormEvent {
  const _MorningTimeEnable(this.value);
  

 final  bool value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MorningTimeEnableCopyWith<_MorningTimeEnable> get copyWith => __$MorningTimeEnableCopyWithImpl<_MorningTimeEnable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MorningTimeEnable&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.morningTimeEnable(value: $value)';
}


}

/// @nodoc
abstract mixin class _$MorningTimeEnableCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$MorningTimeEnableCopyWith(_MorningTimeEnable value, $Res Function(_MorningTimeEnable) _then) = __$MorningTimeEnableCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class __$MorningTimeEnableCopyWithImpl<$Res>
    implements _$MorningTimeEnableCopyWith<$Res> {
  __$MorningTimeEnableCopyWithImpl(this._self, this._then);

  final _MorningTimeEnable _self;
  final $Res Function(_MorningTimeEnable) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_MorningTimeEnable(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _NightTimeEnable implements MedicationFormEvent {
  const _NightTimeEnable(this.value);
  

 final  bool value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NightTimeEnableCopyWith<_NightTimeEnable> get copyWith => __$NightTimeEnableCopyWithImpl<_NightTimeEnable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NightTimeEnable&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.nightTimeEnable(value: $value)';
}


}

/// @nodoc
abstract mixin class _$NightTimeEnableCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$NightTimeEnableCopyWith(_NightTimeEnable value, $Res Function(_NightTimeEnable) _then) = __$NightTimeEnableCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class __$NightTimeEnableCopyWithImpl<$Res>
    implements _$NightTimeEnableCopyWith<$Res> {
  __$NightTimeEnableCopyWithImpl(this._self, this._then);

  final _NightTimeEnable _self;
  final $Res Function(_NightTimeEnable) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_NightTimeEnable(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _AfternoonTimeEnable implements MedicationFormEvent {
  const _AfternoonTimeEnable(this.value);
  

 final  bool value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AfternoonTimeEnableCopyWith<_AfternoonTimeEnable> get copyWith => __$AfternoonTimeEnableCopyWithImpl<_AfternoonTimeEnable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AfternoonTimeEnable&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.afternoonTimeEnable(value: $value)';
}


}

/// @nodoc
abstract mixin class _$AfternoonTimeEnableCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$AfternoonTimeEnableCopyWith(_AfternoonTimeEnable value, $Res Function(_AfternoonTimeEnable) _then) = __$AfternoonTimeEnableCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class __$AfternoonTimeEnableCopyWithImpl<$Res>
    implements _$AfternoonTimeEnableCopyWith<$Res> {
  __$AfternoonTimeEnableCopyWithImpl(this._self, this._then);

  final _AfternoonTimeEnable _self;
  final $Res Function(_AfternoonTimeEnable) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_AfternoonTimeEnable(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _StartDate implements MedicationFormEvent {
  const _StartDate(this.value);
  

 final  String value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartDateCopyWith<_StartDate> get copyWith => __$StartDateCopyWithImpl<_StartDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartDate&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.startDate(value: $value)';
}


}

/// @nodoc
abstract mixin class _$StartDateCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$StartDateCopyWith(_StartDate value, $Res Function(_StartDate) _then) = __$StartDateCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$StartDateCopyWithImpl<$Res>
    implements _$StartDateCopyWith<$Res> {
  __$StartDateCopyWithImpl(this._self, this._then);

  final _StartDate _self;
  final $Res Function(_StartDate) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_StartDate(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _EndDate implements MedicationFormEvent {
  const _EndDate(this.value);
  

 final  String value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EndDateCopyWith<_EndDate> get copyWith => __$EndDateCopyWithImpl<_EndDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EndDate&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.endDate(value: $value)';
}


}

/// @nodoc
abstract mixin class _$EndDateCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$EndDateCopyWith(_EndDate value, $Res Function(_EndDate) _then) = __$EndDateCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$EndDateCopyWithImpl<$Res>
    implements _$EndDateCopyWith<$Res> {
  __$EndDateCopyWithImpl(this._self, this._then);

  final _EndDate _self;
  final $Res Function(_EndDate) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_EndDate(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Note implements MedicationFormEvent {
  const _Note(this.value);
  

 final  String value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteCopyWith<_Note> get copyWith => __$NoteCopyWithImpl<_Note>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Note&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.note(value: $value)';
}


}

/// @nodoc
abstract mixin class _$NoteCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$NoteCopyWith(_Note value, $Res Function(_Note) _then) = __$NoteCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$NoteCopyWithImpl<$Res>
    implements _$NoteCopyWith<$Res> {
  __$NoteCopyWithImpl(this._self, this._then);

  final _Note _self;
  final $Res Function(_Note) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Note(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Media implements MedicationFormEvent {
  const _Media(this.value);
  

 final  String value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaCopyWith<_Media> get copyWith => __$MediaCopyWithImpl<_Media>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Media&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.media(value: $value)';
}


}

/// @nodoc
abstract mixin class _$MediaCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$MediaCopyWith(_Media value, $Res Function(_Media) _then) = __$MediaCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$MediaCopyWithImpl<$Res>
    implements _$MediaCopyWith<$Res> {
  __$MediaCopyWithImpl(this._self, this._then);

  final _Media _self;
  final $Res Function(_Media) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Media(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Frequency implements MedicationFormEvent {
  const _Frequency(this.value);
  

 final  DropItem value;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FrequencyCopyWith<_Frequency> get copyWith => __$FrequencyCopyWithImpl<_Frequency>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Frequency&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MedicationFormEvent.frequency(value: $value)';
}


}

/// @nodoc
abstract mixin class _$FrequencyCopyWith<$Res> implements $MedicationFormEventCopyWith<$Res> {
  factory _$FrequencyCopyWith(_Frequency value, $Res Function(_Frequency) _then) = __$FrequencyCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$FrequencyCopyWithImpl<$Res>
    implements _$FrequencyCopyWith<$Res> {
  __$FrequencyCopyWithImpl(this._self, this._then);

  final _Frequency _self;
  final $Res Function(_Frequency) _then;

/// Create a copy of MedicationFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Frequency(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _Submit implements MedicationFormEvent {
  const _Submit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MedicationFormEvent.submit()';
}


}




/// @nodoc
mixin _$MedicationFormState {

 Status get submitStatus; bool get reminder; NotEmpty get tabletName; NotEmpty get company; NotEmpty get dosage; DropdownValue get dosageUnit; bool get morningTimeEnable; bool get afternoonTimeEnable; bool get nightTimeEnable; DropdownValue get morningTimeHour; DropdownValue get morningTimeMin; DropdownValue get afternoonTimeHour; DropdownValue get afternoonTimeMin; DropdownValue get nightTimeHour; DropdownValue get nightTimeMin; NotEmpty get startDate; NotEmpty get endDate; NotEmpty get note; NotEmpty get media; DropdownValue get frequency; List<DropItem> get dosageUnits; List<DropItem> get frequencies; bool get validation; int get petId;
/// Create a copy of MedicationFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicationFormStateCopyWith<MedicationFormState> get copyWith => _$MedicationFormStateCopyWithImpl<MedicationFormState>(this as MedicationFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicationFormState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.reminder, reminder) || other.reminder == reminder)&&(identical(other.tabletName, tabletName) || other.tabletName == tabletName)&&(identical(other.company, company) || other.company == company)&&(identical(other.dosage, dosage) || other.dosage == dosage)&&(identical(other.dosageUnit, dosageUnit) || other.dosageUnit == dosageUnit)&&(identical(other.morningTimeEnable, morningTimeEnable) || other.morningTimeEnable == morningTimeEnable)&&(identical(other.afternoonTimeEnable, afternoonTimeEnable) || other.afternoonTimeEnable == afternoonTimeEnable)&&(identical(other.nightTimeEnable, nightTimeEnable) || other.nightTimeEnable == nightTimeEnable)&&(identical(other.morningTimeHour, morningTimeHour) || other.morningTimeHour == morningTimeHour)&&(identical(other.morningTimeMin, morningTimeMin) || other.morningTimeMin == morningTimeMin)&&(identical(other.afternoonTimeHour, afternoonTimeHour) || other.afternoonTimeHour == afternoonTimeHour)&&(identical(other.afternoonTimeMin, afternoonTimeMin) || other.afternoonTimeMin == afternoonTimeMin)&&(identical(other.nightTimeHour, nightTimeHour) || other.nightTimeHour == nightTimeHour)&&(identical(other.nightTimeMin, nightTimeMin) || other.nightTimeMin == nightTimeMin)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.note, note) || other.note == note)&&(identical(other.media, media) || other.media == media)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&const DeepCollectionEquality().equals(other.dosageUnits, dosageUnits)&&const DeepCollectionEquality().equals(other.frequencies, frequencies)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hashAll([runtimeType,submitStatus,reminder,tabletName,company,dosage,dosageUnit,morningTimeEnable,afternoonTimeEnable,nightTimeEnable,morningTimeHour,morningTimeMin,afternoonTimeHour,afternoonTimeMin,nightTimeHour,nightTimeMin,startDate,endDate,note,media,frequency,const DeepCollectionEquality().hash(dosageUnits),const DeepCollectionEquality().hash(frequencies),validation,petId]);

@override
String toString() {
  return 'MedicationFormState(submitStatus: $submitStatus, reminder: $reminder, tabletName: $tabletName, company: $company, dosage: $dosage, dosageUnit: $dosageUnit, morningTimeEnable: $morningTimeEnable, afternoonTimeEnable: $afternoonTimeEnable, nightTimeEnable: $nightTimeEnable, morningTimeHour: $morningTimeHour, morningTimeMin: $morningTimeMin, afternoonTimeHour: $afternoonTimeHour, afternoonTimeMin: $afternoonTimeMin, nightTimeHour: $nightTimeHour, nightTimeMin: $nightTimeMin, startDate: $startDate, endDate: $endDate, note: $note, media: $media, frequency: $frequency, dosageUnits: $dosageUnits, frequencies: $frequencies, validation: $validation, petId: $petId)';
}


}

/// @nodoc
abstract mixin class $MedicationFormStateCopyWith<$Res>  {
  factory $MedicationFormStateCopyWith(MedicationFormState value, $Res Function(MedicationFormState) _then) = _$MedicationFormStateCopyWithImpl;
@useResult
$Res call({
 Status submitStatus, bool reminder, NotEmpty tabletName, NotEmpty company, NotEmpty dosage, DropdownValue dosageUnit, bool morningTimeEnable, bool afternoonTimeEnable, bool nightTimeEnable, DropdownValue morningTimeHour, DropdownValue morningTimeMin, DropdownValue afternoonTimeHour, DropdownValue afternoonTimeMin, DropdownValue nightTimeHour, DropdownValue nightTimeMin, NotEmpty startDate, NotEmpty endDate, NotEmpty note, NotEmpty media, DropdownValue frequency, List<DropItem> dosageUnits, List<DropItem> frequencies, bool validation, int petId
});




}
/// @nodoc
class _$MedicationFormStateCopyWithImpl<$Res>
    implements $MedicationFormStateCopyWith<$Res> {
  _$MedicationFormStateCopyWithImpl(this._self, this._then);

  final MedicationFormState _self;
  final $Res Function(MedicationFormState) _then;

/// Create a copy of MedicationFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submitStatus = null,Object? reminder = null,Object? tabletName = null,Object? company = null,Object? dosage = null,Object? dosageUnit = null,Object? morningTimeEnable = null,Object? afternoonTimeEnable = null,Object? nightTimeEnable = null,Object? morningTimeHour = null,Object? morningTimeMin = null,Object? afternoonTimeHour = null,Object? afternoonTimeMin = null,Object? nightTimeHour = null,Object? nightTimeMin = null,Object? startDate = null,Object? endDate = null,Object? note = null,Object? media = null,Object? frequency = null,Object? dosageUnits = null,Object? frequencies = null,Object? validation = null,Object? petId = null,}) {
  return _then(_self.copyWith(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,reminder: null == reminder ? _self.reminder : reminder // ignore: cast_nullable_to_non_nullable
as bool,tabletName: null == tabletName ? _self.tabletName : tabletName // ignore: cast_nullable_to_non_nullable
as NotEmpty,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as NotEmpty,dosage: null == dosage ? _self.dosage : dosage // ignore: cast_nullable_to_non_nullable
as NotEmpty,dosageUnit: null == dosageUnit ? _self.dosageUnit : dosageUnit // ignore: cast_nullable_to_non_nullable
as DropdownValue,morningTimeEnable: null == morningTimeEnable ? _self.morningTimeEnable : morningTimeEnable // ignore: cast_nullable_to_non_nullable
as bool,afternoonTimeEnable: null == afternoonTimeEnable ? _self.afternoonTimeEnable : afternoonTimeEnable // ignore: cast_nullable_to_non_nullable
as bool,nightTimeEnable: null == nightTimeEnable ? _self.nightTimeEnable : nightTimeEnable // ignore: cast_nullable_to_non_nullable
as bool,morningTimeHour: null == morningTimeHour ? _self.morningTimeHour : morningTimeHour // ignore: cast_nullable_to_non_nullable
as DropdownValue,morningTimeMin: null == morningTimeMin ? _self.morningTimeMin : morningTimeMin // ignore: cast_nullable_to_non_nullable
as DropdownValue,afternoonTimeHour: null == afternoonTimeHour ? _self.afternoonTimeHour : afternoonTimeHour // ignore: cast_nullable_to_non_nullable
as DropdownValue,afternoonTimeMin: null == afternoonTimeMin ? _self.afternoonTimeMin : afternoonTimeMin // ignore: cast_nullable_to_non_nullable
as DropdownValue,nightTimeHour: null == nightTimeHour ? _self.nightTimeHour : nightTimeHour // ignore: cast_nullable_to_non_nullable
as DropdownValue,nightTimeMin: null == nightTimeMin ? _self.nightTimeMin : nightTimeMin // ignore: cast_nullable_to_non_nullable
as DropdownValue,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as NotEmpty,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as NotEmpty,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as NotEmpty,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as NotEmpty,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as DropdownValue,dosageUnits: null == dosageUnits ? _self.dosageUnits : dosageUnits // ignore: cast_nullable_to_non_nullable
as List<DropItem>,frequencies: null == frequencies ? _self.frequencies : frequencies // ignore: cast_nullable_to_non_nullable
as List<DropItem>,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _MedicationFormState implements MedicationFormState {
  const _MedicationFormState({this.submitStatus = Status.init, this.reminder = false, this.tabletName = const NotEmpty.pure(), this.company = const NotEmpty.pure(), this.dosage = const NotEmpty.pure(), this.dosageUnit = const DropdownValue.pure(), this.morningTimeEnable = false, this.afternoonTimeEnable = false, this.nightTimeEnable = false, this.morningTimeHour = const DropdownValue.pure(), this.morningTimeMin = const DropdownValue.pure(), this.afternoonTimeHour = const DropdownValue.pure(), this.afternoonTimeMin = const DropdownValue.pure(), this.nightTimeHour = const DropdownValue.pure(), this.nightTimeMin = const DropdownValue.pure(), this.startDate = const NotEmpty.pure(), this.endDate = const NotEmpty.pure(), this.note = const NotEmpty.pure(), this.media = const NotEmpty.pure(), this.frequency = const DropdownValue.pure(), final  List<DropItem> dosageUnits = const [], final  List<DropItem> frequencies = const [], this.validation = false, this.petId = 0}): _dosageUnits = dosageUnits,_frequencies = frequencies;
  

@override@JsonKey() final  Status submitStatus;
@override@JsonKey() final  bool reminder;
@override@JsonKey() final  NotEmpty tabletName;
@override@JsonKey() final  NotEmpty company;
@override@JsonKey() final  NotEmpty dosage;
@override@JsonKey() final  DropdownValue dosageUnit;
@override@JsonKey() final  bool morningTimeEnable;
@override@JsonKey() final  bool afternoonTimeEnable;
@override@JsonKey() final  bool nightTimeEnable;
@override@JsonKey() final  DropdownValue morningTimeHour;
@override@JsonKey() final  DropdownValue morningTimeMin;
@override@JsonKey() final  DropdownValue afternoonTimeHour;
@override@JsonKey() final  DropdownValue afternoonTimeMin;
@override@JsonKey() final  DropdownValue nightTimeHour;
@override@JsonKey() final  DropdownValue nightTimeMin;
@override@JsonKey() final  NotEmpty startDate;
@override@JsonKey() final  NotEmpty endDate;
@override@JsonKey() final  NotEmpty note;
@override@JsonKey() final  NotEmpty media;
@override@JsonKey() final  DropdownValue frequency;
 final  List<DropItem> _dosageUnits;
@override@JsonKey() List<DropItem> get dosageUnits {
  if (_dosageUnits is EqualUnmodifiableListView) return _dosageUnits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dosageUnits);
}

 final  List<DropItem> _frequencies;
@override@JsonKey() List<DropItem> get frequencies {
  if (_frequencies is EqualUnmodifiableListView) return _frequencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_frequencies);
}

@override@JsonKey() final  bool validation;
@override@JsonKey() final  int petId;

/// Create a copy of MedicationFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicationFormStateCopyWith<_MedicationFormState> get copyWith => __$MedicationFormStateCopyWithImpl<_MedicationFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicationFormState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.reminder, reminder) || other.reminder == reminder)&&(identical(other.tabletName, tabletName) || other.tabletName == tabletName)&&(identical(other.company, company) || other.company == company)&&(identical(other.dosage, dosage) || other.dosage == dosage)&&(identical(other.dosageUnit, dosageUnit) || other.dosageUnit == dosageUnit)&&(identical(other.morningTimeEnable, morningTimeEnable) || other.morningTimeEnable == morningTimeEnable)&&(identical(other.afternoonTimeEnable, afternoonTimeEnable) || other.afternoonTimeEnable == afternoonTimeEnable)&&(identical(other.nightTimeEnable, nightTimeEnable) || other.nightTimeEnable == nightTimeEnable)&&(identical(other.morningTimeHour, morningTimeHour) || other.morningTimeHour == morningTimeHour)&&(identical(other.morningTimeMin, morningTimeMin) || other.morningTimeMin == morningTimeMin)&&(identical(other.afternoonTimeHour, afternoonTimeHour) || other.afternoonTimeHour == afternoonTimeHour)&&(identical(other.afternoonTimeMin, afternoonTimeMin) || other.afternoonTimeMin == afternoonTimeMin)&&(identical(other.nightTimeHour, nightTimeHour) || other.nightTimeHour == nightTimeHour)&&(identical(other.nightTimeMin, nightTimeMin) || other.nightTimeMin == nightTimeMin)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.note, note) || other.note == note)&&(identical(other.media, media) || other.media == media)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&const DeepCollectionEquality().equals(other._dosageUnits, _dosageUnits)&&const DeepCollectionEquality().equals(other._frequencies, _frequencies)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hashAll([runtimeType,submitStatus,reminder,tabletName,company,dosage,dosageUnit,morningTimeEnable,afternoonTimeEnable,nightTimeEnable,morningTimeHour,morningTimeMin,afternoonTimeHour,afternoonTimeMin,nightTimeHour,nightTimeMin,startDate,endDate,note,media,frequency,const DeepCollectionEquality().hash(_dosageUnits),const DeepCollectionEquality().hash(_frequencies),validation,petId]);

@override
String toString() {
  return 'MedicationFormState(submitStatus: $submitStatus, reminder: $reminder, tabletName: $tabletName, company: $company, dosage: $dosage, dosageUnit: $dosageUnit, morningTimeEnable: $morningTimeEnable, afternoonTimeEnable: $afternoonTimeEnable, nightTimeEnable: $nightTimeEnable, morningTimeHour: $morningTimeHour, morningTimeMin: $morningTimeMin, afternoonTimeHour: $afternoonTimeHour, afternoonTimeMin: $afternoonTimeMin, nightTimeHour: $nightTimeHour, nightTimeMin: $nightTimeMin, startDate: $startDate, endDate: $endDate, note: $note, media: $media, frequency: $frequency, dosageUnits: $dosageUnits, frequencies: $frequencies, validation: $validation, petId: $petId)';
}


}

/// @nodoc
abstract mixin class _$MedicationFormStateCopyWith<$Res> implements $MedicationFormStateCopyWith<$Res> {
  factory _$MedicationFormStateCopyWith(_MedicationFormState value, $Res Function(_MedicationFormState) _then) = __$MedicationFormStateCopyWithImpl;
@override @useResult
$Res call({
 Status submitStatus, bool reminder, NotEmpty tabletName, NotEmpty company, NotEmpty dosage, DropdownValue dosageUnit, bool morningTimeEnable, bool afternoonTimeEnable, bool nightTimeEnable, DropdownValue morningTimeHour, DropdownValue morningTimeMin, DropdownValue afternoonTimeHour, DropdownValue afternoonTimeMin, DropdownValue nightTimeHour, DropdownValue nightTimeMin, NotEmpty startDate, NotEmpty endDate, NotEmpty note, NotEmpty media, DropdownValue frequency, List<DropItem> dosageUnits, List<DropItem> frequencies, bool validation, int petId
});




}
/// @nodoc
class __$MedicationFormStateCopyWithImpl<$Res>
    implements _$MedicationFormStateCopyWith<$Res> {
  __$MedicationFormStateCopyWithImpl(this._self, this._then);

  final _MedicationFormState _self;
  final $Res Function(_MedicationFormState) _then;

/// Create a copy of MedicationFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submitStatus = null,Object? reminder = null,Object? tabletName = null,Object? company = null,Object? dosage = null,Object? dosageUnit = null,Object? morningTimeEnable = null,Object? afternoonTimeEnable = null,Object? nightTimeEnable = null,Object? morningTimeHour = null,Object? morningTimeMin = null,Object? afternoonTimeHour = null,Object? afternoonTimeMin = null,Object? nightTimeHour = null,Object? nightTimeMin = null,Object? startDate = null,Object? endDate = null,Object? note = null,Object? media = null,Object? frequency = null,Object? dosageUnits = null,Object? frequencies = null,Object? validation = null,Object? petId = null,}) {
  return _then(_MedicationFormState(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,reminder: null == reminder ? _self.reminder : reminder // ignore: cast_nullable_to_non_nullable
as bool,tabletName: null == tabletName ? _self.tabletName : tabletName // ignore: cast_nullable_to_non_nullable
as NotEmpty,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as NotEmpty,dosage: null == dosage ? _self.dosage : dosage // ignore: cast_nullable_to_non_nullable
as NotEmpty,dosageUnit: null == dosageUnit ? _self.dosageUnit : dosageUnit // ignore: cast_nullable_to_non_nullable
as DropdownValue,morningTimeEnable: null == morningTimeEnable ? _self.morningTimeEnable : morningTimeEnable // ignore: cast_nullable_to_non_nullable
as bool,afternoonTimeEnable: null == afternoonTimeEnable ? _self.afternoonTimeEnable : afternoonTimeEnable // ignore: cast_nullable_to_non_nullable
as bool,nightTimeEnable: null == nightTimeEnable ? _self.nightTimeEnable : nightTimeEnable // ignore: cast_nullable_to_non_nullable
as bool,morningTimeHour: null == morningTimeHour ? _self.morningTimeHour : morningTimeHour // ignore: cast_nullable_to_non_nullable
as DropdownValue,morningTimeMin: null == morningTimeMin ? _self.morningTimeMin : morningTimeMin // ignore: cast_nullable_to_non_nullable
as DropdownValue,afternoonTimeHour: null == afternoonTimeHour ? _self.afternoonTimeHour : afternoonTimeHour // ignore: cast_nullable_to_non_nullable
as DropdownValue,afternoonTimeMin: null == afternoonTimeMin ? _self.afternoonTimeMin : afternoonTimeMin // ignore: cast_nullable_to_non_nullable
as DropdownValue,nightTimeHour: null == nightTimeHour ? _self.nightTimeHour : nightTimeHour // ignore: cast_nullable_to_non_nullable
as DropdownValue,nightTimeMin: null == nightTimeMin ? _self.nightTimeMin : nightTimeMin // ignore: cast_nullable_to_non_nullable
as DropdownValue,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as NotEmpty,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as NotEmpty,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as NotEmpty,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as NotEmpty,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as DropdownValue,dosageUnits: null == dosageUnits ? _self._dosageUnits : dosageUnits // ignore: cast_nullable_to_non_nullable
as List<DropItem>,frequencies: null == frequencies ? _self._frequencies : frequencies // ignore: cast_nullable_to_non_nullable
as List<DropItem>,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
