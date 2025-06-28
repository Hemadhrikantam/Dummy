// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deworming_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DewormingFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DewormingFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DewormingFormEvent()';
}


}

/// @nodoc
class $DewormingFormEventCopyWith<$Res>  {
$DewormingFormEventCopyWith(DewormingFormEvent _, $Res Function(DewormingFormEvent) __);
}


/// @nodoc


class _Init implements DewormingFormEvent {
  const _Init(this.petId);
  

 final  int petId;

/// Create a copy of DewormingFormEvent
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
  return 'DewormingFormEvent.init(petId: $petId)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $DewormingFormEventCopyWith<$Res> {
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

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petId = null,}) {
  return _then(_Init(
null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Date implements DewormingFormEvent {
  const _Date(this.value);
  

 final  String value;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateCopyWith<_Date> get copyWith => __$DateCopyWithImpl<_Date>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Date&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DewormingFormEvent.date(value: $value)';
}


}

/// @nodoc
abstract mixin class _$DateCopyWith<$Res> implements $DewormingFormEventCopyWith<$Res> {
  factory _$DateCopyWith(_Date value, $Res Function(_Date) _then) = __$DateCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$DateCopyWithImpl<$Res>
    implements _$DateCopyWith<$Res> {
  __$DateCopyWithImpl(this._self, this._then);

  final _Date _self;
  final $Res Function(_Date) _then;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Date(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ProductName implements DewormingFormEvent {
  const _ProductName(this.value);
  

 final  String value;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductNameCopyWith<_ProductName> get copyWith => __$ProductNameCopyWithImpl<_ProductName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductName&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DewormingFormEvent.productName(value: $value)';
}


}

/// @nodoc
abstract mixin class _$ProductNameCopyWith<$Res> implements $DewormingFormEventCopyWith<$Res> {
  factory _$ProductNameCopyWith(_ProductName value, $Res Function(_ProductName) _then) = __$ProductNameCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$ProductNameCopyWithImpl<$Res>
    implements _$ProductNameCopyWith<$Res> {
  __$ProductNameCopyWithImpl(this._self, this._then);

  final _ProductName _self;
  final $Res Function(_ProductName) _then;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_ProductName(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DueDate implements DewormingFormEvent {
  const _DueDate(this.value);
  

 final  String value;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DueDateCopyWith<_DueDate> get copyWith => __$DueDateCopyWithImpl<_DueDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DueDate&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DewormingFormEvent.dueDate(value: $value)';
}


}

/// @nodoc
abstract mixin class _$DueDateCopyWith<$Res> implements $DewormingFormEventCopyWith<$Res> {
  factory _$DueDateCopyWith(_DueDate value, $Res Function(_DueDate) _then) = __$DueDateCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$DueDateCopyWithImpl<$Res>
    implements _$DueDateCopyWith<$Res> {
  __$DueDateCopyWithImpl(this._self, this._then);

  final _DueDate _self;
  final $Res Function(_DueDate) _then;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_DueDate(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ReminderTime implements DewormingFormEvent {
  const _ReminderTime(this.value);
  

 final  String value;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReminderTimeCopyWith<_ReminderTime> get copyWith => __$ReminderTimeCopyWithImpl<_ReminderTime>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderTime&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DewormingFormEvent.reminderTime(value: $value)';
}


}

/// @nodoc
abstract mixin class _$ReminderTimeCopyWith<$Res> implements $DewormingFormEventCopyWith<$Res> {
  factory _$ReminderTimeCopyWith(_ReminderTime value, $Res Function(_ReminderTime) _then) = __$ReminderTimeCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$ReminderTimeCopyWithImpl<$Res>
    implements _$ReminderTimeCopyWith<$Res> {
  __$ReminderTimeCopyWithImpl(this._self, this._then);

  final _ReminderTime _self;
  final $Res Function(_ReminderTime) _then;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_ReminderTime(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Notes implements DewormingFormEvent {
  const _Notes(this.value);
  

 final  String value;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotesCopyWith<_Notes> get copyWith => __$NotesCopyWithImpl<_Notes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notes&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DewormingFormEvent.notes(value: $value)';
}


}

/// @nodoc
abstract mixin class _$NotesCopyWith<$Res> implements $DewormingFormEventCopyWith<$Res> {
  factory _$NotesCopyWith(_Notes value, $Res Function(_Notes) _then) = __$NotesCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$NotesCopyWithImpl<$Res>
    implements _$NotesCopyWith<$Res> {
  __$NotesCopyWithImpl(this._self, this._then);

  final _Notes _self;
  final $Res Function(_Notes) _then;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Notes(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Media implements DewormingFormEvent {
  const _Media(this.value);
  

 final  String value;

/// Create a copy of DewormingFormEvent
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
  return 'DewormingFormEvent.media(value: $value)';
}


}

/// @nodoc
abstract mixin class _$MediaCopyWith<$Res> implements $DewormingFormEventCopyWith<$Res> {
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

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Media(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Frequency implements DewormingFormEvent {
  const _Frequency(this.value);
  

 final  DropItem value;

/// Create a copy of DewormingFormEvent
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
  return 'DewormingFormEvent.frequency(value: $value)';
}


}

/// @nodoc
abstract mixin class _$FrequencyCopyWith<$Res> implements $DewormingFormEventCopyWith<$Res> {
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

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Frequency(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _ReminderTimezone implements DewormingFormEvent {
  const _ReminderTimezone(this.value);
  

 final  DropItem value;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReminderTimezoneCopyWith<_ReminderTimezone> get copyWith => __$ReminderTimezoneCopyWithImpl<_ReminderTimezone>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderTimezone&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DewormingFormEvent.reminderTimezone(value: $value)';
}


}

/// @nodoc
abstract mixin class _$ReminderTimezoneCopyWith<$Res> implements $DewormingFormEventCopyWith<$Res> {
  factory _$ReminderTimezoneCopyWith(_ReminderTimezone value, $Res Function(_ReminderTimezone) _then) = __$ReminderTimezoneCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$ReminderTimezoneCopyWithImpl<$Res>
    implements _$ReminderTimezoneCopyWith<$Res> {
  __$ReminderTimezoneCopyWithImpl(this._self, this._then);

  final _ReminderTimezone _self;
  final $Res Function(_ReminderTimezone) _then;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_ReminderTimezone(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _ReminderBefore implements DewormingFormEvent {
  const _ReminderBefore(this.value);
  

 final  DropItem value;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReminderBeforeCopyWith<_ReminderBefore> get copyWith => __$ReminderBeforeCopyWithImpl<_ReminderBefore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderBefore&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DewormingFormEvent.reminderBefore(value: $value)';
}


}

/// @nodoc
abstract mixin class _$ReminderBeforeCopyWith<$Res> implements $DewormingFormEventCopyWith<$Res> {
  factory _$ReminderBeforeCopyWith(_ReminderBefore value, $Res Function(_ReminderBefore) _then) = __$ReminderBeforeCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$ReminderBeforeCopyWithImpl<$Res>
    implements _$ReminderBeforeCopyWith<$Res> {
  __$ReminderBeforeCopyWithImpl(this._self, this._then);

  final _ReminderBefore _self;
  final $Res Function(_ReminderBefore) _then;

/// Create a copy of DewormingFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_ReminderBefore(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _Submit implements DewormingFormEvent {
  const _Submit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DewormingFormEvent.submit()';
}


}




/// @nodoc
mixin _$DewormingFormState {

 Status get submitStatus;// Form fields
 NotEmpty get date; NotEmpty get productName; NotEmpty get dueDate; NotEmpty get reminderTime; NotEmpty get notes; NotEmpty get media; DropdownValue get frequency; DropdownValue get reminderTimezone; DropdownValue get reminderBefore; List<DropItem> get frequencies; List<DropItem> get reminderTimezones; List<DropItem> get reminderBefores; bool get validation; int get petId;
/// Create a copy of DewormingFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DewormingFormStateCopyWith<DewormingFormState> get copyWith => _$DewormingFormStateCopyWithImpl<DewormingFormState>(this as DewormingFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DewormingFormState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.date, date) || other.date == date)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.media, media) || other.media == media)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.reminderTimezone, reminderTimezone) || other.reminderTimezone == reminderTimezone)&&(identical(other.reminderBefore, reminderBefore) || other.reminderBefore == reminderBefore)&&const DeepCollectionEquality().equals(other.frequencies, frequencies)&&const DeepCollectionEquality().equals(other.reminderTimezones, reminderTimezones)&&const DeepCollectionEquality().equals(other.reminderBefores, reminderBefores)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,date,productName,dueDate,reminderTime,notes,media,frequency,reminderTimezone,reminderBefore,const DeepCollectionEquality().hash(frequencies),const DeepCollectionEquality().hash(reminderTimezones),const DeepCollectionEquality().hash(reminderBefores),validation,petId);

@override
String toString() {
  return 'DewormingFormState(submitStatus: $submitStatus, date: $date, productName: $productName, dueDate: $dueDate, reminderTime: $reminderTime, notes: $notes, media: $media, frequency: $frequency, reminderTimezone: $reminderTimezone, reminderBefore: $reminderBefore, frequencies: $frequencies, reminderTimezones: $reminderTimezones, reminderBefores: $reminderBefores, validation: $validation, petId: $petId)';
}


}

/// @nodoc
abstract mixin class $DewormingFormStateCopyWith<$Res>  {
  factory $DewormingFormStateCopyWith(DewormingFormState value, $Res Function(DewormingFormState) _then) = _$DewormingFormStateCopyWithImpl;
@useResult
$Res call({
 Status submitStatus, NotEmpty date, NotEmpty productName, NotEmpty dueDate, NotEmpty reminderTime, NotEmpty notes, NotEmpty media, DropdownValue frequency, DropdownValue reminderTimezone, DropdownValue reminderBefore, List<DropItem> frequencies, List<DropItem> reminderTimezones, List<DropItem> reminderBefores, bool validation, int petId
});




}
/// @nodoc
class _$DewormingFormStateCopyWithImpl<$Res>
    implements $DewormingFormStateCopyWith<$Res> {
  _$DewormingFormStateCopyWithImpl(this._self, this._then);

  final DewormingFormState _self;
  final $Res Function(DewormingFormState) _then;

/// Create a copy of DewormingFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submitStatus = null,Object? date = null,Object? productName = null,Object? dueDate = null,Object? reminderTime = null,Object? notes = null,Object? media = null,Object? frequency = null,Object? reminderTimezone = null,Object? reminderBefore = null,Object? frequencies = null,Object? reminderTimezones = null,Object? reminderBefores = null,Object? validation = null,Object? petId = null,}) {
  return _then(_self.copyWith(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as NotEmpty,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as NotEmpty,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as NotEmpty,reminderTime: null == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as NotEmpty,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as NotEmpty,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as NotEmpty,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as DropdownValue,reminderTimezone: null == reminderTimezone ? _self.reminderTimezone : reminderTimezone // ignore: cast_nullable_to_non_nullable
as DropdownValue,reminderBefore: null == reminderBefore ? _self.reminderBefore : reminderBefore // ignore: cast_nullable_to_non_nullable
as DropdownValue,frequencies: null == frequencies ? _self.frequencies : frequencies // ignore: cast_nullable_to_non_nullable
as List<DropItem>,reminderTimezones: null == reminderTimezones ? _self.reminderTimezones : reminderTimezones // ignore: cast_nullable_to_non_nullable
as List<DropItem>,reminderBefores: null == reminderBefores ? _self.reminderBefores : reminderBefores // ignore: cast_nullable_to_non_nullable
as List<DropItem>,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _DewormingFormState implements DewormingFormState {
  const _DewormingFormState({this.submitStatus = Status.init, this.date = const NotEmpty.pure(), this.productName = const NotEmpty.pure(), this.dueDate = const NotEmpty.pure(), this.reminderTime = const NotEmpty.pure(), this.notes = const NotEmpty.pure(), this.media = const NotEmpty.pure(), this.frequency = const DropdownValue.pure(), this.reminderTimezone = const DropdownValue.pure(), this.reminderBefore = const DropdownValue.pure(), final  List<DropItem> frequencies = const [], final  List<DropItem> reminderTimezones = const [], final  List<DropItem> reminderBefores = const [], this.validation = false, this.petId = 0}): _frequencies = frequencies,_reminderTimezones = reminderTimezones,_reminderBefores = reminderBefores;
  

@override@JsonKey() final  Status submitStatus;
// Form fields
@override@JsonKey() final  NotEmpty date;
@override@JsonKey() final  NotEmpty productName;
@override@JsonKey() final  NotEmpty dueDate;
@override@JsonKey() final  NotEmpty reminderTime;
@override@JsonKey() final  NotEmpty notes;
@override@JsonKey() final  NotEmpty media;
@override@JsonKey() final  DropdownValue frequency;
@override@JsonKey() final  DropdownValue reminderTimezone;
@override@JsonKey() final  DropdownValue reminderBefore;
 final  List<DropItem> _frequencies;
@override@JsonKey() List<DropItem> get frequencies {
  if (_frequencies is EqualUnmodifiableListView) return _frequencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_frequencies);
}

 final  List<DropItem> _reminderTimezones;
@override@JsonKey() List<DropItem> get reminderTimezones {
  if (_reminderTimezones is EqualUnmodifiableListView) return _reminderTimezones;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reminderTimezones);
}

 final  List<DropItem> _reminderBefores;
@override@JsonKey() List<DropItem> get reminderBefores {
  if (_reminderBefores is EqualUnmodifiableListView) return _reminderBefores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reminderBefores);
}

@override@JsonKey() final  bool validation;
@override@JsonKey() final  int petId;

/// Create a copy of DewormingFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DewormingFormStateCopyWith<_DewormingFormState> get copyWith => __$DewormingFormStateCopyWithImpl<_DewormingFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DewormingFormState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.date, date) || other.date == date)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.media, media) || other.media == media)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.reminderTimezone, reminderTimezone) || other.reminderTimezone == reminderTimezone)&&(identical(other.reminderBefore, reminderBefore) || other.reminderBefore == reminderBefore)&&const DeepCollectionEquality().equals(other._frequencies, _frequencies)&&const DeepCollectionEquality().equals(other._reminderTimezones, _reminderTimezones)&&const DeepCollectionEquality().equals(other._reminderBefores, _reminderBefores)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,date,productName,dueDate,reminderTime,notes,media,frequency,reminderTimezone,reminderBefore,const DeepCollectionEquality().hash(_frequencies),const DeepCollectionEquality().hash(_reminderTimezones),const DeepCollectionEquality().hash(_reminderBefores),validation,petId);

@override
String toString() {
  return 'DewormingFormState(submitStatus: $submitStatus, date: $date, productName: $productName, dueDate: $dueDate, reminderTime: $reminderTime, notes: $notes, media: $media, frequency: $frequency, reminderTimezone: $reminderTimezone, reminderBefore: $reminderBefore, frequencies: $frequencies, reminderTimezones: $reminderTimezones, reminderBefores: $reminderBefores, validation: $validation, petId: $petId)';
}


}

/// @nodoc
abstract mixin class _$DewormingFormStateCopyWith<$Res> implements $DewormingFormStateCopyWith<$Res> {
  factory _$DewormingFormStateCopyWith(_DewormingFormState value, $Res Function(_DewormingFormState) _then) = __$DewormingFormStateCopyWithImpl;
@override @useResult
$Res call({
 Status submitStatus, NotEmpty date, NotEmpty productName, NotEmpty dueDate, NotEmpty reminderTime, NotEmpty notes, NotEmpty media, DropdownValue frequency, DropdownValue reminderTimezone, DropdownValue reminderBefore, List<DropItem> frequencies, List<DropItem> reminderTimezones, List<DropItem> reminderBefores, bool validation, int petId
});




}
/// @nodoc
class __$DewormingFormStateCopyWithImpl<$Res>
    implements _$DewormingFormStateCopyWith<$Res> {
  __$DewormingFormStateCopyWithImpl(this._self, this._then);

  final _DewormingFormState _self;
  final $Res Function(_DewormingFormState) _then;

/// Create a copy of DewormingFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submitStatus = null,Object? date = null,Object? productName = null,Object? dueDate = null,Object? reminderTime = null,Object? notes = null,Object? media = null,Object? frequency = null,Object? reminderTimezone = null,Object? reminderBefore = null,Object? frequencies = null,Object? reminderTimezones = null,Object? reminderBefores = null,Object? validation = null,Object? petId = null,}) {
  return _then(_DewormingFormState(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as NotEmpty,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as NotEmpty,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as NotEmpty,reminderTime: null == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as NotEmpty,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as NotEmpty,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as NotEmpty,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as DropdownValue,reminderTimezone: null == reminderTimezone ? _self.reminderTimezone : reminderTimezone // ignore: cast_nullable_to_non_nullable
as DropdownValue,reminderBefore: null == reminderBefore ? _self.reminderBefore : reminderBefore // ignore: cast_nullable_to_non_nullable
as DropdownValue,frequencies: null == frequencies ? _self._frequencies : frequencies // ignore: cast_nullable_to_non_nullable
as List<DropItem>,reminderTimezones: null == reminderTimezones ? _self._reminderTimezones : reminderTimezones // ignore: cast_nullable_to_non_nullable
as List<DropItem>,reminderBefores: null == reminderBefores ? _self._reminderBefores : reminderBefores // ignore: cast_nullable_to_non_nullable
as List<DropItem>,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
