// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DocumentFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DocumentFormEvent()';
}


}

/// @nodoc
class $DocumentFormEventCopyWith<$Res>  {
$DocumentFormEventCopyWith(DocumentFormEvent _, $Res Function(DocumentFormEvent) __);
}


/// @nodoc


class _Init implements DocumentFormEvent {
  const _Init(this.petId, this.id);
  

 final  int petId;
 final  int? id;

/// Create a copy of DocumentFormEvent
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
  return 'DocumentFormEvent.init(petId: $petId, id: $id)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $DocumentFormEventCopyWith<$Res> {
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

/// Create a copy of DocumentFormEvent
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


class _Submit implements DocumentFormEvent {
  const _Submit(this.id);
  

 final  int? id;

/// Create a copy of DocumentFormEvent
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
  return 'DocumentFormEvent.submit(id: $id)';
}


}

/// @nodoc
abstract mixin class _$SubmitCopyWith<$Res> implements $DocumentFormEventCopyWith<$Res> {
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

/// Create a copy of DocumentFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_Submit(
freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _Url implements DocumentFormEvent {
  const _Url(this.value);
  

 final  String value;

/// Create a copy of DocumentFormEvent
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
  return 'DocumentFormEvent.url(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UrlCopyWith<$Res> implements $DocumentFormEventCopyWith<$Res> {
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

/// Create a copy of DocumentFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Url(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DocumentFormState {

 Status get initStatus; Status get submitStatus; NotEmpty get url; bool get validation; int get petId;
/// Create a copy of DocumentFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentFormStateCopyWith<DocumentFormState> get copyWith => _$DocumentFormStateCopyWithImpl<DocumentFormState>(this as DocumentFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentFormState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.url, url) || other.url == url)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,submitStatus,url,validation,petId);

@override
String toString() {
  return 'DocumentFormState(initStatus: $initStatus, submitStatus: $submitStatus, url: $url, validation: $validation, petId: $petId)';
}


}

/// @nodoc
abstract mixin class $DocumentFormStateCopyWith<$Res>  {
  factory $DocumentFormStateCopyWith(DocumentFormState value, $Res Function(DocumentFormState) _then) = _$DocumentFormStateCopyWithImpl;
@useResult
$Res call({
 Status initStatus, Status submitStatus, NotEmpty url, bool validation, int petId
});




}
/// @nodoc
class _$DocumentFormStateCopyWithImpl<$Res>
    implements $DocumentFormStateCopyWith<$Res> {
  _$DocumentFormStateCopyWithImpl(this._self, this._then);

  final DocumentFormState _self;
  final $Res Function(DocumentFormState) _then;

/// Create a copy of DocumentFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initStatus = null,Object? submitStatus = null,Object? url = null,Object? validation = null,Object? petId = null,}) {
  return _then(_self.copyWith(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as NotEmpty,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _DocumentFormState implements DocumentFormState {
  const _DocumentFormState({this.initStatus = Status.init, this.submitStatus = Status.init, this.url = const NotEmpty.pure(), this.validation = false, this.petId = 0});
  

@override@JsonKey() final  Status initStatus;
@override@JsonKey() final  Status submitStatus;
@override@JsonKey() final  NotEmpty url;
@override@JsonKey() final  bool validation;
@override@JsonKey() final  int petId;

/// Create a copy of DocumentFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentFormStateCopyWith<_DocumentFormState> get copyWith => __$DocumentFormStateCopyWithImpl<_DocumentFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentFormState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.url, url) || other.url == url)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,submitStatus,url,validation,petId);

@override
String toString() {
  return 'DocumentFormState(initStatus: $initStatus, submitStatus: $submitStatus, url: $url, validation: $validation, petId: $petId)';
}


}

/// @nodoc
abstract mixin class _$DocumentFormStateCopyWith<$Res> implements $DocumentFormStateCopyWith<$Res> {
  factory _$DocumentFormStateCopyWith(_DocumentFormState value, $Res Function(_DocumentFormState) _then) = __$DocumentFormStateCopyWithImpl;
@override @useResult
$Res call({
 Status initStatus, Status submitStatus, NotEmpty url, bool validation, int petId
});




}
/// @nodoc
class __$DocumentFormStateCopyWithImpl<$Res>
    implements _$DocumentFormStateCopyWith<$Res> {
  __$DocumentFormStateCopyWithImpl(this._self, this._then);

  final _DocumentFormState _self;
  final $Res Function(_DocumentFormState) _then;

/// Create a copy of DocumentFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initStatus = null,Object? submitStatus = null,Object? url = null,Object? validation = null,Object? petId = null,}) {
  return _then(_DocumentFormState(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as NotEmpty,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
