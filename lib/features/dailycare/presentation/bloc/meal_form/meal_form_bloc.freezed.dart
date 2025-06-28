// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MealFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MealFormEvent()';
}


}

/// @nodoc
class $MealFormEventCopyWith<$Res>  {
$MealFormEventCopyWith(MealFormEvent _, $Res Function(MealFormEvent) __);
}


/// @nodoc


class _Init implements MealFormEvent {
  const _Init(this.petId);
  

 final  int petId;

/// Create a copy of MealFormEvent
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
  return 'MealFormEvent.init(petId: $petId)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $MealFormEventCopyWith<$Res> {
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

/// Create a copy of MealFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petId = null,}) {
  return _then(_Init(
null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Date implements MealFormEvent {
  const _Date(this.value);
  

 final  String value;

/// Create a copy of MealFormEvent
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
  return 'MealFormEvent.date(value: $value)';
}


}

/// @nodoc
abstract mixin class _$DateCopyWith<$Res> implements $MealFormEventCopyWith<$Res> {
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

/// Create a copy of MealFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Date(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MealType implements MealFormEvent {
  const _MealType(this.value);
  

 final  String value;

/// Create a copy of MealFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealTypeCopyWith<_MealType> get copyWith => __$MealTypeCopyWithImpl<_MealType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealType&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MealFormEvent.mealType(value: $value)';
}


}

/// @nodoc
abstract mixin class _$MealTypeCopyWith<$Res> implements $MealFormEventCopyWith<$Res> {
  factory _$MealTypeCopyWith(_MealType value, $Res Function(_MealType) _then) = __$MealTypeCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$MealTypeCopyWithImpl<$Res>
    implements _$MealTypeCopyWith<$Res> {
  __$MealTypeCopyWithImpl(this._self, this._then);

  final _MealType _self;
  final $Res Function(_MealType) _then;

/// Create a copy of MealFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_MealType(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Notes implements MealFormEvent {
  const _Notes(this.value);
  

 final  String value;

/// Create a copy of MealFormEvent
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
  return 'MealFormEvent.notes(value: $value)';
}


}

/// @nodoc
abstract mixin class _$NotesCopyWith<$Res> implements $MealFormEventCopyWith<$Res> {
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

/// Create a copy of MealFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Notes(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Media implements MealFormEvent {
  const _Media(this.value);
  

 final  String value;

/// Create a copy of MealFormEvent
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
  return 'MealFormEvent.media(value: $value)';
}


}

/// @nodoc
abstract mixin class _$MediaCopyWith<$Res> implements $MealFormEventCopyWith<$Res> {
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

/// Create a copy of MealFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Media(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MealTime implements MealFormEvent {
  const _MealTime(this.value);
  

 final  DropItem value;

/// Create a copy of MealFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealTimeCopyWith<_MealTime> get copyWith => __$MealTimeCopyWithImpl<_MealTime>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealTime&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MealFormEvent.mealTime(value: $value)';
}


}

/// @nodoc
abstract mixin class _$MealTimeCopyWith<$Res> implements $MealFormEventCopyWith<$Res> {
  factory _$MealTimeCopyWith(_MealTime value, $Res Function(_MealTime) _then) = __$MealTimeCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$MealTimeCopyWithImpl<$Res>
    implements _$MealTimeCopyWith<$Res> {
  __$MealTimeCopyWithImpl(this._self, this._then);

  final _MealTime _self;
  final $Res Function(_MealTime) _then;

/// Create a copy of MealFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_MealTime(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _Submit implements MealFormEvent {
  const _Submit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MealFormEvent.submit()';
}


}




/// @nodoc
mixin _$MealFormState {

 Status get submitStatus; List<DropItem> get mealTimes; DropdownValue get mealTime; NotEmpty get date; NotEmpty get mealType; NotEmpty get notes; NotEmpty get media; bool get validation; int get petId;
/// Create a copy of MealFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealFormStateCopyWith<MealFormState> get copyWith => _$MealFormStateCopyWithImpl<MealFormState>(this as MealFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealFormState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&const DeepCollectionEquality().equals(other.mealTimes, mealTimes)&&(identical(other.mealTime, mealTime) || other.mealTime == mealTime)&&(identical(other.date, date) || other.date == date)&&(identical(other.mealType, mealType) || other.mealType == mealType)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.media, media) || other.media == media)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,const DeepCollectionEquality().hash(mealTimes),mealTime,date,mealType,notes,media,validation,petId);

@override
String toString() {
  return 'MealFormState(submitStatus: $submitStatus, mealTimes: $mealTimes, mealTime: $mealTime, date: $date, mealType: $mealType, notes: $notes, media: $media, validation: $validation, petId: $petId)';
}


}

/// @nodoc
abstract mixin class $MealFormStateCopyWith<$Res>  {
  factory $MealFormStateCopyWith(MealFormState value, $Res Function(MealFormState) _then) = _$MealFormStateCopyWithImpl;
@useResult
$Res call({
 Status submitStatus, List<DropItem> mealTimes, DropdownValue mealTime, NotEmpty date, NotEmpty mealType, NotEmpty notes, NotEmpty media, bool validation, int petId
});




}
/// @nodoc
class _$MealFormStateCopyWithImpl<$Res>
    implements $MealFormStateCopyWith<$Res> {
  _$MealFormStateCopyWithImpl(this._self, this._then);

  final MealFormState _self;
  final $Res Function(MealFormState) _then;

/// Create a copy of MealFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submitStatus = null,Object? mealTimes = null,Object? mealTime = null,Object? date = null,Object? mealType = null,Object? notes = null,Object? media = null,Object? validation = null,Object? petId = null,}) {
  return _then(_self.copyWith(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,mealTimes: null == mealTimes ? _self.mealTimes : mealTimes // ignore: cast_nullable_to_non_nullable
as List<DropItem>,mealTime: null == mealTime ? _self.mealTime : mealTime // ignore: cast_nullable_to_non_nullable
as DropdownValue,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as NotEmpty,mealType: null == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as NotEmpty,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as NotEmpty,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as NotEmpty,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _MealFormState implements MealFormState {
  const _MealFormState({this.submitStatus = Status.init, final  List<DropItem> mealTimes = const [], this.mealTime = const DropdownValue.pure(), this.date = const NotEmpty.pure(), this.mealType = const NotEmpty.pure(), this.notes = const NotEmpty.pure(), this.media = const NotEmpty.pure(), this.validation = false, this.petId = 0}): _mealTimes = mealTimes;
  

@override@JsonKey() final  Status submitStatus;
 final  List<DropItem> _mealTimes;
@override@JsonKey() List<DropItem> get mealTimes {
  if (_mealTimes is EqualUnmodifiableListView) return _mealTimes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mealTimes);
}

@override@JsonKey() final  DropdownValue mealTime;
@override@JsonKey() final  NotEmpty date;
@override@JsonKey() final  NotEmpty mealType;
@override@JsonKey() final  NotEmpty notes;
@override@JsonKey() final  NotEmpty media;
@override@JsonKey() final  bool validation;
@override@JsonKey() final  int petId;

/// Create a copy of MealFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealFormStateCopyWith<_MealFormState> get copyWith => __$MealFormStateCopyWithImpl<_MealFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealFormState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&const DeepCollectionEquality().equals(other._mealTimes, _mealTimes)&&(identical(other.mealTime, mealTime) || other.mealTime == mealTime)&&(identical(other.date, date) || other.date == date)&&(identical(other.mealType, mealType) || other.mealType == mealType)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.media, media) || other.media == media)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,const DeepCollectionEquality().hash(_mealTimes),mealTime,date,mealType,notes,media,validation,petId);

@override
String toString() {
  return 'MealFormState(submitStatus: $submitStatus, mealTimes: $mealTimes, mealTime: $mealTime, date: $date, mealType: $mealType, notes: $notes, media: $media, validation: $validation, petId: $petId)';
}


}

/// @nodoc
abstract mixin class _$MealFormStateCopyWith<$Res> implements $MealFormStateCopyWith<$Res> {
  factory _$MealFormStateCopyWith(_MealFormState value, $Res Function(_MealFormState) _then) = __$MealFormStateCopyWithImpl;
@override @useResult
$Res call({
 Status submitStatus, List<DropItem> mealTimes, DropdownValue mealTime, NotEmpty date, NotEmpty mealType, NotEmpty notes, NotEmpty media, bool validation, int petId
});




}
/// @nodoc
class __$MealFormStateCopyWithImpl<$Res>
    implements _$MealFormStateCopyWith<$Res> {
  __$MealFormStateCopyWithImpl(this._self, this._then);

  final _MealFormState _self;
  final $Res Function(_MealFormState) _then;

/// Create a copy of MealFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submitStatus = null,Object? mealTimes = null,Object? mealTime = null,Object? date = null,Object? mealType = null,Object? notes = null,Object? media = null,Object? validation = null,Object? petId = null,}) {
  return _then(_MealFormState(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,mealTimes: null == mealTimes ? _self._mealTimes : mealTimes // ignore: cast_nullable_to_non_nullable
as List<DropItem>,mealTime: null == mealTime ? _self.mealTime : mealTime // ignore: cast_nullable_to_non_nullable
as DropdownValue,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as NotEmpty,mealType: null == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as NotEmpty,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as NotEmpty,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as NotEmpty,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
