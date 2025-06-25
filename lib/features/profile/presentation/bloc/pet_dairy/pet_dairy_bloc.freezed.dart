// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_dairy_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PetDairyEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PetDairyEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PetDairyEvent()';
}


}

/// @nodoc
class $PetDairyEventCopyWith<$Res>  {
$PetDairyEventCopyWith(PetDairyEvent _, $Res Function(PetDairyEvent) __);
}


/// @nodoc


class _Initialization implements PetDairyEvent {
  const _Initialization();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialization);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PetDairyEvent.initialization()';
}


}




/// @nodoc


class _EventId implements PetDairyEvent {
  const _EventId(this.id);
  

 final  DropItem id;

/// Create a copy of PetDairyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventIdCopyWith<_EventId> get copyWith => __$EventIdCopyWithImpl<_EventId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventId&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PetDairyEvent.eventId(id: $id)';
}


}

/// @nodoc
abstract mixin class _$EventIdCopyWith<$Res> implements $PetDairyEventCopyWith<$Res> {
  factory _$EventIdCopyWith(_EventId value, $Res Function(_EventId) _then) = __$EventIdCopyWithImpl;
@useResult
$Res call({
 DropItem id
});




}
/// @nodoc
class __$EventIdCopyWithImpl<$Res>
    implements _$EventIdCopyWith<$Res> {
  __$EventIdCopyWithImpl(this._self, this._then);

  final _EventId _self;
  final $Res Function(_EventId) _then;

/// Create a copy of PetDairyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_EventId(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc
mixin _$PetDairyState {

 Status get initStatus; List<DropItem> get eventFields; List<EventFields> get media; List<Documents> get documents; DropdownValue get eventId;
/// Create a copy of PetDairyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetDairyStateCopyWith<PetDairyState> get copyWith => _$PetDairyStateCopyWithImpl<PetDairyState>(this as PetDairyState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PetDairyState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&const DeepCollectionEquality().equals(other.eventFields, eventFields)&&const DeepCollectionEquality().equals(other.media, media)&&const DeepCollectionEquality().equals(other.documents, documents)&&(identical(other.eventId, eventId) || other.eventId == eventId));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,const DeepCollectionEquality().hash(eventFields),const DeepCollectionEquality().hash(media),const DeepCollectionEquality().hash(documents),eventId);

@override
String toString() {
  return 'PetDairyState(initStatus: $initStatus, eventFields: $eventFields, media: $media, documents: $documents, eventId: $eventId)';
}


}

/// @nodoc
abstract mixin class $PetDairyStateCopyWith<$Res>  {
  factory $PetDairyStateCopyWith(PetDairyState value, $Res Function(PetDairyState) _then) = _$PetDairyStateCopyWithImpl;
@useResult
$Res call({
 Status initStatus, List<DropItem> eventFields, List<EventFields> media, List<Documents> documents, DropdownValue eventId
});




}
/// @nodoc
class _$PetDairyStateCopyWithImpl<$Res>
    implements $PetDairyStateCopyWith<$Res> {
  _$PetDairyStateCopyWithImpl(this._self, this._then);

  final PetDairyState _self;
  final $Res Function(PetDairyState) _then;

/// Create a copy of PetDairyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initStatus = null,Object? eventFields = null,Object? media = null,Object? documents = null,Object? eventId = null,}) {
  return _then(_self.copyWith(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,eventFields: null == eventFields ? _self.eventFields : eventFields // ignore: cast_nullable_to_non_nullable
as List<DropItem>,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<EventFields>,documents: null == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as List<Documents>,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as DropdownValue,
  ));
}

}


/// @nodoc


class _PetDairyState implements PetDairyState {
  const _PetDairyState({this.initStatus = Status.init, final  List<DropItem> eventFields = const [], final  List<EventFields> media = const [], final  List<Documents> documents = const [], this.eventId = const DropdownValue.pure()}): _eventFields = eventFields,_media = media,_documents = documents;
  

@override@JsonKey() final  Status initStatus;
 final  List<DropItem> _eventFields;
@override@JsonKey() List<DropItem> get eventFields {
  if (_eventFields is EqualUnmodifiableListView) return _eventFields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_eventFields);
}

 final  List<EventFields> _media;
@override@JsonKey() List<EventFields> get media {
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_media);
}

 final  List<Documents> _documents;
@override@JsonKey() List<Documents> get documents {
  if (_documents is EqualUnmodifiableListView) return _documents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_documents);
}

@override@JsonKey() final  DropdownValue eventId;

/// Create a copy of PetDairyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetDairyStateCopyWith<_PetDairyState> get copyWith => __$PetDairyStateCopyWithImpl<_PetDairyState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetDairyState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&const DeepCollectionEquality().equals(other._eventFields, _eventFields)&&const DeepCollectionEquality().equals(other._media, _media)&&const DeepCollectionEquality().equals(other._documents, _documents)&&(identical(other.eventId, eventId) || other.eventId == eventId));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,const DeepCollectionEquality().hash(_eventFields),const DeepCollectionEquality().hash(_media),const DeepCollectionEquality().hash(_documents),eventId);

@override
String toString() {
  return 'PetDairyState(initStatus: $initStatus, eventFields: $eventFields, media: $media, documents: $documents, eventId: $eventId)';
}


}

/// @nodoc
abstract mixin class _$PetDairyStateCopyWith<$Res> implements $PetDairyStateCopyWith<$Res> {
  factory _$PetDairyStateCopyWith(_PetDairyState value, $Res Function(_PetDairyState) _then) = __$PetDairyStateCopyWithImpl;
@override @useResult
$Res call({
 Status initStatus, List<DropItem> eventFields, List<EventFields> media, List<Documents> documents, DropdownValue eventId
});




}
/// @nodoc
class __$PetDairyStateCopyWithImpl<$Res>
    implements _$PetDairyStateCopyWith<$Res> {
  __$PetDairyStateCopyWithImpl(this._self, this._then);

  final _PetDairyState _self;
  final $Res Function(_PetDairyState) _then;

/// Create a copy of PetDairyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initStatus = null,Object? eventFields = null,Object? media = null,Object? documents = null,Object? eventId = null,}) {
  return _then(_PetDairyState(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,eventFields: null == eventFields ? _self._eventFields : eventFields // ignore: cast_nullable_to_non_nullable
as List<DropItem>,media: null == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<EventFields>,documents: null == documents ? _self._documents : documents // ignore: cast_nullable_to_non_nullable
as List<Documents>,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as DropdownValue,
  ));
}


}

// dart format on
