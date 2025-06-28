// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'walk_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalkFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalkFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalkFormEvent()';
}


}

/// @nodoc
class $WalkFormEventCopyWith<$Res>  {
$WalkFormEventCopyWith(WalkFormEvent _, $Res Function(WalkFormEvent) __);
}


/// @nodoc


class _Init implements WalkFormEvent {
  const _Init(this.petId);
  

 final  int petId;

/// Create a copy of WalkFormEvent
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
  return 'WalkFormEvent.init(petId: $petId)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $WalkFormEventCopyWith<$Res> {
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

/// Create a copy of WalkFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petId = null,}) {
  return _then(_Init(
null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Date implements WalkFormEvent {
  const _Date(this.value);
  

 final  String value;

/// Create a copy of WalkFormEvent
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
  return 'WalkFormEvent.date(value: $value)';
}


}

/// @nodoc
abstract mixin class _$DateCopyWith<$Res> implements $WalkFormEventCopyWith<$Res> {
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

/// Create a copy of WalkFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Date(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Duration implements WalkFormEvent {
  const _Duration(this.value);
  

 final  DropItem value;

/// Create a copy of WalkFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DurationCopyWith<_Duration> get copyWith => __$DurationCopyWithImpl<_Duration>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Duration&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'WalkFormEvent.duration(value: $value)';
}


}

/// @nodoc
abstract mixin class _$DurationCopyWith<$Res> implements $WalkFormEventCopyWith<$Res> {
  factory _$DurationCopyWith(_Duration value, $Res Function(_Duration) _then) = __$DurationCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$DurationCopyWithImpl<$Res>
    implements _$DurationCopyWith<$Res> {
  __$DurationCopyWithImpl(this._self, this._then);

  final _Duration _self;
  final $Res Function(_Duration) _then;

/// Create a copy of WalkFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Duration(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _Location implements WalkFormEvent {
  const _Location(this.value);
  

 final  String value;

/// Create a copy of WalkFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationCopyWith<_Location> get copyWith => __$LocationCopyWithImpl<_Location>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Location&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'WalkFormEvent.location(value: $value)';
}


}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res> implements $WalkFormEventCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) = __$LocationCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(this._self, this._then);

  final _Location _self;
  final $Res Function(_Location) _then;

/// Create a copy of WalkFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Location(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Notes implements WalkFormEvent {
  const _Notes(this.value);
  

 final  String value;

/// Create a copy of WalkFormEvent
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
  return 'WalkFormEvent.notes(value: $value)';
}


}

/// @nodoc
abstract mixin class _$NotesCopyWith<$Res> implements $WalkFormEventCopyWith<$Res> {
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

/// Create a copy of WalkFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Notes(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Media implements WalkFormEvent {
  const _Media(this.value);
  

 final  String value;

/// Create a copy of WalkFormEvent
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
  return 'WalkFormEvent.media(value: $value)';
}


}

/// @nodoc
abstract mixin class _$MediaCopyWith<$Res> implements $WalkFormEventCopyWith<$Res> {
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

/// Create a copy of WalkFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Media(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Submit implements WalkFormEvent {
  const _Submit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalkFormEvent.submit()';
}


}




/// @nodoc
mixin _$WalkFormState {

 Status get submitStatus; List<DropItem> get durations; DropdownValue get duration; NotEmpty get location; NotEmpty get date; NotEmpty get notes; NotEmpty get media; int get petId; bool get validation;
/// Create a copy of WalkFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalkFormStateCopyWith<WalkFormState> get copyWith => _$WalkFormStateCopyWithImpl<WalkFormState>(this as WalkFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalkFormState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&const DeepCollectionEquality().equals(other.durations, durations)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.location, location) || other.location == location)&&(identical(other.date, date) || other.date == date)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.media, media) || other.media == media)&&(identical(other.petId, petId) || other.petId == petId)&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,const DeepCollectionEquality().hash(durations),duration,location,date,notes,media,petId,validation);

@override
String toString() {
  return 'WalkFormState(submitStatus: $submitStatus, durations: $durations, duration: $duration, location: $location, date: $date, notes: $notes, media: $media, petId: $petId, validation: $validation)';
}


}

/// @nodoc
abstract mixin class $WalkFormStateCopyWith<$Res>  {
  factory $WalkFormStateCopyWith(WalkFormState value, $Res Function(WalkFormState) _then) = _$WalkFormStateCopyWithImpl;
@useResult
$Res call({
 Status submitStatus, List<DropItem> durations, DropdownValue duration, NotEmpty location, NotEmpty date, NotEmpty notes, NotEmpty media, int petId, bool validation
});




}
/// @nodoc
class _$WalkFormStateCopyWithImpl<$Res>
    implements $WalkFormStateCopyWith<$Res> {
  _$WalkFormStateCopyWithImpl(this._self, this._then);

  final WalkFormState _self;
  final $Res Function(WalkFormState) _then;

/// Create a copy of WalkFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submitStatus = null,Object? durations = null,Object? duration = null,Object? location = null,Object? date = null,Object? notes = null,Object? media = null,Object? petId = null,Object? validation = null,}) {
  return _then(_self.copyWith(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,durations: null == durations ? _self.durations : durations // ignore: cast_nullable_to_non_nullable
as List<DropItem>,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as DropdownValue,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as NotEmpty,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as NotEmpty,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as NotEmpty,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as NotEmpty,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _WalkFormState implements WalkFormState {
  const _WalkFormState({this.submitStatus = Status.init, final  List<DropItem> durations = const [], this.duration = const DropdownValue.pure(), this.location = const NotEmpty.pure(), this.date = const NotEmpty.pure(), this.notes = const NotEmpty.pure(), this.media = const NotEmpty.pure(), this.petId = 0, this.validation = false}): _durations = durations;
  

@override@JsonKey() final  Status submitStatus;
 final  List<DropItem> _durations;
@override@JsonKey() List<DropItem> get durations {
  if (_durations is EqualUnmodifiableListView) return _durations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_durations);
}

@override@JsonKey() final  DropdownValue duration;
@override@JsonKey() final  NotEmpty location;
@override@JsonKey() final  NotEmpty date;
@override@JsonKey() final  NotEmpty notes;
@override@JsonKey() final  NotEmpty media;
@override@JsonKey() final  int petId;
@override@JsonKey() final  bool validation;

/// Create a copy of WalkFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalkFormStateCopyWith<_WalkFormState> get copyWith => __$WalkFormStateCopyWithImpl<_WalkFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalkFormState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&const DeepCollectionEquality().equals(other._durations, _durations)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.location, location) || other.location == location)&&(identical(other.date, date) || other.date == date)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.media, media) || other.media == media)&&(identical(other.petId, petId) || other.petId == petId)&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,const DeepCollectionEquality().hash(_durations),duration,location,date,notes,media,petId,validation);

@override
String toString() {
  return 'WalkFormState(submitStatus: $submitStatus, durations: $durations, duration: $duration, location: $location, date: $date, notes: $notes, media: $media, petId: $petId, validation: $validation)';
}


}

/// @nodoc
abstract mixin class _$WalkFormStateCopyWith<$Res> implements $WalkFormStateCopyWith<$Res> {
  factory _$WalkFormStateCopyWith(_WalkFormState value, $Res Function(_WalkFormState) _then) = __$WalkFormStateCopyWithImpl;
@override @useResult
$Res call({
 Status submitStatus, List<DropItem> durations, DropdownValue duration, NotEmpty location, NotEmpty date, NotEmpty notes, NotEmpty media, int petId, bool validation
});




}
/// @nodoc
class __$WalkFormStateCopyWithImpl<$Res>
    implements _$WalkFormStateCopyWith<$Res> {
  __$WalkFormStateCopyWithImpl(this._self, this._then);

  final _WalkFormState _self;
  final $Res Function(_WalkFormState) _then;

/// Create a copy of WalkFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submitStatus = null,Object? durations = null,Object? duration = null,Object? location = null,Object? date = null,Object? notes = null,Object? media = null,Object? petId = null,Object? validation = null,}) {
  return _then(_WalkFormState(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,durations: null == durations ? _self._durations : durations // ignore: cast_nullable_to_non_nullable
as List<DropItem>,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as DropdownValue,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as NotEmpty,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as NotEmpty,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as NotEmpty,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as NotEmpty,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
