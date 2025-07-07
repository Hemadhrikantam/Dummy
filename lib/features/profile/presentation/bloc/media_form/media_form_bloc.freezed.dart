// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MediaFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaFormEvent()';
}


}

/// @nodoc
class $MediaFormEventCopyWith<$Res>  {
$MediaFormEventCopyWith(MediaFormEvent _, $Res Function(MediaFormEvent) __);
}


/// @nodoc


class _Init implements MediaFormEvent {
  const _Init(this.petId, this.id);
  

 final  int petId;
 final  int? id;

/// Create a copy of MediaFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitCopyWith<_Init> get copyWith => __$InitCopyWithImpl<_Init>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init&&(identical(other.petId, petId) || other.petId == petId)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,petId,id);

@override
String toString() {
  return 'MediaFormEvent.init(petId: $petId, id: $id)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $MediaFormEventCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) _then) = __$InitCopyWithImpl;
@useResult
$Res call({
 int petId, int? id
});




}
/// @nodoc
class __$InitCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(this._self, this._then);

  final _Init _self;
  final $Res Function(_Init) _then;

/// Create a copy of MediaFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petId = null,Object? id = freezed,}) {
  return _then(_Init(
null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _Submit implements MediaFormEvent {
  const _Submit(this.id);
  

 final  int? id;

/// Create a copy of MediaFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitCopyWith<_Submit> get copyWith => __$SubmitCopyWithImpl<_Submit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submit&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MediaFormEvent.submit(id: $id)';
}


}

/// @nodoc
abstract mixin class _$SubmitCopyWith<$Res> implements $MediaFormEventCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) _then) = __$SubmitCopyWithImpl;
@useResult
$Res call({
 int? id
});




}
/// @nodoc
class __$SubmitCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(this._self, this._then);

  final _Submit _self;
  final $Res Function(_Submit) _then;

/// Create a copy of MediaFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_Submit(
freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _Notes implements MediaFormEvent {
  const _Notes(this.value);
  

 final  String value;

/// Create a copy of MediaFormEvent
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
  return 'MediaFormEvent.notes(value: $value)';
}


}

/// @nodoc
abstract mixin class _$NotesCopyWith<$Res> implements $MediaFormEventCopyWith<$Res> {
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

/// Create a copy of MediaFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Notes(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Url implements MediaFormEvent {
  const _Url(this.value);
  

 final  String value;

/// Create a copy of MediaFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UrlCopyWith<_Url> get copyWith => __$UrlCopyWithImpl<_Url>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Url&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MediaFormEvent.url(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UrlCopyWith<$Res> implements $MediaFormEventCopyWith<$Res> {
  factory _$UrlCopyWith(_Url value, $Res Function(_Url) _then) = __$UrlCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$UrlCopyWithImpl<$Res>
    implements _$UrlCopyWith<$Res> {
  __$UrlCopyWithImpl(this._self, this._then);

  final _Url _self;
  final $Res Function(_Url) _then;

/// Create a copy of MediaFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Url(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Event implements MediaFormEvent {
  const _Event(this.value);
  

 final  DropItem value;

/// Create a copy of MediaFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventCopyWith<_Event> get copyWith => __$EventCopyWithImpl<_Event>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Event&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'MediaFormEvent.event(value: $value)';
}


}

/// @nodoc
abstract mixin class _$EventCopyWith<$Res> implements $MediaFormEventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) _then) = __$EventCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$EventCopyWithImpl<$Res>
    implements _$EventCopyWith<$Res> {
  __$EventCopyWithImpl(this._self, this._then);

  final _Event _self;
  final $Res Function(_Event) _then;

/// Create a copy of MediaFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Event(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc
mixin _$MediaFormState {

 Status get initStatus; Status get submitStatus; NotEmpty get notes; NotEmpty get url; DropdownValue get event; List<DropItem> get events; bool get validation; int get petId;
/// Create a copy of MediaFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaFormStateCopyWith<MediaFormState> get copyWith => _$MediaFormStateCopyWithImpl<MediaFormState>(this as MediaFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaFormState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.url, url) || other.url == url)&&(identical(other.event, event) || other.event == event)&&const DeepCollectionEquality().equals(other.events, events)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,submitStatus,notes,url,event,const DeepCollectionEquality().hash(events),validation,petId);

@override
String toString() {
  return 'MediaFormState(initStatus: $initStatus, submitStatus: $submitStatus, notes: $notes, url: $url, event: $event, events: $events, validation: $validation, petId: $petId)';
}


}

/// @nodoc
abstract mixin class $MediaFormStateCopyWith<$Res>  {
  factory $MediaFormStateCopyWith(MediaFormState value, $Res Function(MediaFormState) _then) = _$MediaFormStateCopyWithImpl;
@useResult
$Res call({
 Status initStatus, Status submitStatus, NotEmpty notes, NotEmpty url, DropdownValue event, List<DropItem> events, bool validation, int petId
});




}
/// @nodoc
class _$MediaFormStateCopyWithImpl<$Res>
    implements $MediaFormStateCopyWith<$Res> {
  _$MediaFormStateCopyWithImpl(this._self, this._then);

  final MediaFormState _self;
  final $Res Function(MediaFormState) _then;

/// Create a copy of MediaFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initStatus = null,Object? submitStatus = null,Object? notes = null,Object? url = null,Object? event = null,Object? events = null,Object? validation = null,Object? petId = null,}) {
  return _then(_self.copyWith(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as NotEmpty,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as NotEmpty,event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as DropdownValue,events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<DropItem>,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _MediaFormState implements MediaFormState {
  const _MediaFormState({this.initStatus = Status.init, this.submitStatus = Status.init, this.notes = const NotEmpty.pure(), this.url = const NotEmpty.pure(), this.event = const DropdownValue.pure(), final  List<DropItem> events = const [], this.validation = false, this.petId = 0}): _events = events;
  

@override@JsonKey() final  Status initStatus;
@override@JsonKey() final  Status submitStatus;
@override@JsonKey() final  NotEmpty notes;
@override@JsonKey() final  NotEmpty url;
@override@JsonKey() final  DropdownValue event;
 final  List<DropItem> _events;
@override@JsonKey() List<DropItem> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}

@override@JsonKey() final  bool validation;
@override@JsonKey() final  int petId;

/// Create a copy of MediaFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaFormStateCopyWith<_MediaFormState> get copyWith => __$MediaFormStateCopyWithImpl<_MediaFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaFormState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.url, url) || other.url == url)&&(identical(other.event, event) || other.event == event)&&const DeepCollectionEquality().equals(other._events, _events)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,submitStatus,notes,url,event,const DeepCollectionEquality().hash(_events),validation,petId);

@override
String toString() {
  return 'MediaFormState(initStatus: $initStatus, submitStatus: $submitStatus, notes: $notes, url: $url, event: $event, events: $events, validation: $validation, petId: $petId)';
}


}

/// @nodoc
abstract mixin class _$MediaFormStateCopyWith<$Res> implements $MediaFormStateCopyWith<$Res> {
  factory _$MediaFormStateCopyWith(_MediaFormState value, $Res Function(_MediaFormState) _then) = __$MediaFormStateCopyWithImpl;
@override @useResult
$Res call({
 Status initStatus, Status submitStatus, NotEmpty notes, NotEmpty url, DropdownValue event, List<DropItem> events, bool validation, int petId
});




}
/// @nodoc
class __$MediaFormStateCopyWithImpl<$Res>
    implements _$MediaFormStateCopyWith<$Res> {
  __$MediaFormStateCopyWithImpl(this._self, this._then);

  final _MediaFormState _self;
  final $Res Function(_MediaFormState) _then;

/// Create a copy of MediaFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initStatus = null,Object? submitStatus = null,Object? notes = null,Object? url = null,Object? event = null,Object? events = null,Object? validation = null,Object? petId = null,}) {
  return _then(_MediaFormState(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as NotEmpty,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as NotEmpty,event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as DropdownValue,events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<DropItem>,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
