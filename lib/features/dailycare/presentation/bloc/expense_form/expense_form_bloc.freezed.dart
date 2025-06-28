// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExpenseFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpenseFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpenseFormEvent()';
}


}

/// @nodoc
class $ExpenseFormEventCopyWith<$Res>  {
$ExpenseFormEventCopyWith(ExpenseFormEvent _, $Res Function(ExpenseFormEvent) __);
}


/// @nodoc


class _Init implements ExpenseFormEvent {
  const _Init(this.petId);
  

 final  int petId;

/// Create a copy of ExpenseFormEvent
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
  return 'ExpenseFormEvent.init(petId: $petId)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $ExpenseFormEventCopyWith<$Res> {
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

/// Create a copy of ExpenseFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petId = null,}) {
  return _then(_Init(
null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Date implements ExpenseFormEvent {
  const _Date(this.value);
  

 final  String value;

/// Create a copy of ExpenseFormEvent
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
  return 'ExpenseFormEvent.date(value: $value)';
}


}

/// @nodoc
abstract mixin class _$DateCopyWith<$Res> implements $ExpenseFormEventCopyWith<$Res> {
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

/// Create a copy of ExpenseFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Date(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Category implements ExpenseFormEvent {
  const _Category(this.value);
  

 final  String value;

/// Create a copy of ExpenseFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ExpenseFormEvent.category(value: $value)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $ExpenseFormEventCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of ExpenseFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Category(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Notes implements ExpenseFormEvent {
  const _Notes(this.value);
  

 final  String value;

/// Create a copy of ExpenseFormEvent
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
  return 'ExpenseFormEvent.notes(value: $value)';
}


}

/// @nodoc
abstract mixin class _$NotesCopyWith<$Res> implements $ExpenseFormEventCopyWith<$Res> {
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

/// Create a copy of ExpenseFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Notes(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Media implements ExpenseFormEvent {
  const _Media(this.value);
  

 final  String value;

/// Create a copy of ExpenseFormEvent
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
  return 'ExpenseFormEvent.media(value: $value)';
}


}

/// @nodoc
abstract mixin class _$MediaCopyWith<$Res> implements $ExpenseFormEventCopyWith<$Res> {
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

/// Create a copy of ExpenseFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Media(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Submit implements ExpenseFormEvent {
  const _Submit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpenseFormEvent.submit()';
}


}




/// @nodoc
mixin _$ExpenseFormState {

 Status get submitStatus; NotEmpty get date; NotEmpty get category; NotEmpty get notes; NotEmpty get media; bool get validation; int get petId;
/// Create a copy of ExpenseFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpenseFormStateCopyWith<ExpenseFormState> get copyWith => _$ExpenseFormStateCopyWithImpl<ExpenseFormState>(this as ExpenseFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpenseFormState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.date, date) || other.date == date)&&(identical(other.category, category) || other.category == category)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.media, media) || other.media == media)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,date,category,notes,media,validation,petId);

@override
String toString() {
  return 'ExpenseFormState(submitStatus: $submitStatus, date: $date, category: $category, notes: $notes, media: $media, validation: $validation, petId: $petId)';
}


}

/// @nodoc
abstract mixin class $ExpenseFormStateCopyWith<$Res>  {
  factory $ExpenseFormStateCopyWith(ExpenseFormState value, $Res Function(ExpenseFormState) _then) = _$ExpenseFormStateCopyWithImpl;
@useResult
$Res call({
 Status submitStatus, NotEmpty date, NotEmpty category, NotEmpty notes, NotEmpty media, bool validation, int petId
});




}
/// @nodoc
class _$ExpenseFormStateCopyWithImpl<$Res>
    implements $ExpenseFormStateCopyWith<$Res> {
  _$ExpenseFormStateCopyWithImpl(this._self, this._then);

  final ExpenseFormState _self;
  final $Res Function(ExpenseFormState) _then;

/// Create a copy of ExpenseFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submitStatus = null,Object? date = null,Object? category = null,Object? notes = null,Object? media = null,Object? validation = null,Object? petId = null,}) {
  return _then(_self.copyWith(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as NotEmpty,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NotEmpty,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as NotEmpty,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as NotEmpty,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _ExpenseFormState implements ExpenseFormState {
  const _ExpenseFormState({this.submitStatus = Status.init, this.date = const NotEmpty.pure(), this.category = const NotEmpty.pure(), this.notes = const NotEmpty.pure(), this.media = const NotEmpty.pure(), this.validation = false, this.petId = 0});
  

@override@JsonKey() final  Status submitStatus;
@override@JsonKey() final  NotEmpty date;
@override@JsonKey() final  NotEmpty category;
@override@JsonKey() final  NotEmpty notes;
@override@JsonKey() final  NotEmpty media;
@override@JsonKey() final  bool validation;
@override@JsonKey() final  int petId;

/// Create a copy of ExpenseFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseFormStateCopyWith<_ExpenseFormState> get copyWith => __$ExpenseFormStateCopyWithImpl<_ExpenseFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpenseFormState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.date, date) || other.date == date)&&(identical(other.category, category) || other.category == category)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.media, media) || other.media == media)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petId, petId) || other.petId == petId));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,date,category,notes,media,validation,petId);

@override
String toString() {
  return 'ExpenseFormState(submitStatus: $submitStatus, date: $date, category: $category, notes: $notes, media: $media, validation: $validation, petId: $petId)';
}


}

/// @nodoc
abstract mixin class _$ExpenseFormStateCopyWith<$Res> implements $ExpenseFormStateCopyWith<$Res> {
  factory _$ExpenseFormStateCopyWith(_ExpenseFormState value, $Res Function(_ExpenseFormState) _then) = __$ExpenseFormStateCopyWithImpl;
@override @useResult
$Res call({
 Status submitStatus, NotEmpty date, NotEmpty category, NotEmpty notes, NotEmpty media, bool validation, int petId
});




}
/// @nodoc
class __$ExpenseFormStateCopyWithImpl<$Res>
    implements _$ExpenseFormStateCopyWith<$Res> {
  __$ExpenseFormStateCopyWithImpl(this._self, this._then);

  final _ExpenseFormState _self;
  final $Res Function(_ExpenseFormState) _then;

/// Create a copy of ExpenseFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submitStatus = null,Object? date = null,Object? category = null,Object? notes = null,Object? media = null,Object? validation = null,Object? petId = null,}) {
  return _then(_ExpenseFormState(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as NotEmpty,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NotEmpty,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as NotEmpty,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as NotEmpty,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petId: null == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
