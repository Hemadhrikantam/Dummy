// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PetFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PetFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PetFormEvent()';
}


}

/// @nodoc
class $PetFormEventCopyWith<$Res>  {
$PetFormEventCopyWith(PetFormEvent _, $Res Function(PetFormEvent) __);
}


/// @nodoc


class _Init implements PetFormEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PetFormEvent.init()';
}


}




/// @nodoc


class _Submit implements PetFormEvent {
  const _Submit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PetFormEvent.submit()';
}


}




/// @nodoc


class _Name implements PetFormEvent {
  const _Name(this.value);
  

 final  String value;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameCopyWith<_Name> get copyWith => __$NameCopyWithImpl<_Name>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Name&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PetFormEvent.name(value: $value)';
}


}

/// @nodoc
abstract mixin class _$NameCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$NameCopyWith(_Name value, $Res Function(_Name) _then) = __$NameCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$NameCopyWithImpl<$Res>
    implements _$NameCopyWith<$Res> {
  __$NameCopyWithImpl(this._self, this._then);

  final _Name _self;
  final $Res Function(_Name) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Name(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PetType implements PetFormEvent {
  const _PetType(this.value);
  

 final  String value;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetTypeCopyWith<_PetType> get copyWith => __$PetTypeCopyWithImpl<_PetType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetType&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PetFormEvent.petType(value: $value)';
}


}

/// @nodoc
abstract mixin class _$PetTypeCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$PetTypeCopyWith(_PetType value, $Res Function(_PetType) _then) = __$PetTypeCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$PetTypeCopyWithImpl<$Res>
    implements _$PetTypeCopyWith<$Res> {
  __$PetTypeCopyWithImpl(this._self, this._then);

  final _PetType _self;
  final $Res Function(_PetType) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_PetType(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Dob implements PetFormEvent {
  const _Dob(this.value);
  

 final  DateTime value;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DobCopyWith<_Dob> get copyWith => __$DobCopyWithImpl<_Dob>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dob&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PetFormEvent.dob(value: $value)';
}


}

/// @nodoc
abstract mixin class _$DobCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$DobCopyWith(_Dob value, $Res Function(_Dob) _then) = __$DobCopyWithImpl;
@useResult
$Res call({
 DateTime value
});




}
/// @nodoc
class __$DobCopyWithImpl<$Res>
    implements _$DobCopyWith<$Res> {
  __$DobCopyWithImpl(this._self, this._then);

  final _Dob _self;
  final $Res Function(_Dob) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Dob(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _Weight implements PetFormEvent {
  const _Weight(this.value);
  

 final  int value;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeightCopyWith<_Weight> get copyWith => __$WeightCopyWithImpl<_Weight>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Weight&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PetFormEvent.weight(value: $value)';
}


}

/// @nodoc
abstract mixin class _$WeightCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$WeightCopyWith(_Weight value, $Res Function(_Weight) _then) = __$WeightCopyWithImpl;
@useResult
$Res call({
 int value
});




}
/// @nodoc
class __$WeightCopyWithImpl<$Res>
    implements _$WeightCopyWith<$Res> {
  __$WeightCopyWithImpl(this._self, this._then);

  final _Weight _self;
  final $Res Function(_Weight) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Weight(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Breed implements PetFormEvent {
  const _Breed(this.value);
  

 final  DropItem value;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BreedCopyWith<_Breed> get copyWith => __$BreedCopyWithImpl<_Breed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Breed&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PetFormEvent.breed(value: $value)';
}


}

/// @nodoc
abstract mixin class _$BreedCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$BreedCopyWith(_Breed value, $Res Function(_Breed) _then) = __$BreedCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$BreedCopyWithImpl<$Res>
    implements _$BreedCopyWith<$Res> {
  __$BreedCopyWithImpl(this._self, this._then);

  final _Breed _self;
  final $Res Function(_Breed) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Breed(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _AddPersonalityTag implements PetFormEvent {
  const _AddPersonalityTag(this.value);
  

 final  DropItem value;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddPersonalityTagCopyWith<_AddPersonalityTag> get copyWith => __$AddPersonalityTagCopyWithImpl<_AddPersonalityTag>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddPersonalityTag&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PetFormEvent.addPersonalityTag(value: $value)';
}


}

/// @nodoc
abstract mixin class _$AddPersonalityTagCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$AddPersonalityTagCopyWith(_AddPersonalityTag value, $Res Function(_AddPersonalityTag) _then) = __$AddPersonalityTagCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$AddPersonalityTagCopyWithImpl<$Res>
    implements _$AddPersonalityTagCopyWith<$Res> {
  __$AddPersonalityTagCopyWithImpl(this._self, this._then);

  final _AddPersonalityTag _self;
  final $Res Function(_AddPersonalityTag) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_AddPersonalityTag(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _RemovePersonalityTag implements PetFormEvent {
  const _RemovePersonalityTag(this.value);
  

 final  DropItem value;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemovePersonalityTagCopyWith<_RemovePersonalityTag> get copyWith => __$RemovePersonalityTagCopyWithImpl<_RemovePersonalityTag>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemovePersonalityTag&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PetFormEvent.RemovePersonalityTag(value: $value)';
}


}

/// @nodoc
abstract mixin class _$RemovePersonalityTagCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$RemovePersonalityTagCopyWith(_RemovePersonalityTag value, $Res Function(_RemovePersonalityTag) _then) = __$RemovePersonalityTagCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$RemovePersonalityTagCopyWithImpl<$Res>
    implements _$RemovePersonalityTagCopyWith<$Res> {
  __$RemovePersonalityTagCopyWithImpl(this._self, this._then);

  final _RemovePersonalityTag _self;
  final $Res Function(_RemovePersonalityTag) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_RemovePersonalityTag(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _ImagePath implements PetFormEvent {
  const _ImagePath(this.value);
  

 final  String value;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImagePathCopyWith<_ImagePath> get copyWith => __$ImagePathCopyWithImpl<_ImagePath>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImagePath&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PetFormEvent.imagePath(value: $value)';
}


}

/// @nodoc
abstract mixin class _$ImagePathCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$ImagePathCopyWith(_ImagePath value, $Res Function(_ImagePath) _then) = __$ImagePathCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$ImagePathCopyWithImpl<$Res>
    implements _$ImagePathCopyWith<$Res> {
  __$ImagePathCopyWithImpl(this._self, this._then);

  final _ImagePath _self;
  final $Res Function(_ImagePath) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_ImagePath(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PetFormState {

 Status get submitStatus; NotEmpty get petName; NotEmpty get petType; DateTime? get dob; int get weight; DropItemFrom get breed; List<DropItemFrom> get personalityTag; NotEmpty get imagePath;//
 List<DropItem> get catbreeds; List<DropItem> get dogbreeds; List<DropItem> get personalityTags;
/// Create a copy of PetFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetFormStateCopyWith<PetFormState> get copyWith => _$PetFormStateCopyWithImpl<PetFormState>(this as PetFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PetFormState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.petName, petName) || other.petName == petName)&&(identical(other.petType, petType) || other.petType == petType)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.breed, breed) || other.breed == breed)&&const DeepCollectionEquality().equals(other.personalityTag, personalityTag)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&const DeepCollectionEquality().equals(other.catbreeds, catbreeds)&&const DeepCollectionEquality().equals(other.dogbreeds, dogbreeds)&&const DeepCollectionEquality().equals(other.personalityTags, personalityTags));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,petName,petType,dob,weight,breed,const DeepCollectionEquality().hash(personalityTag),imagePath,const DeepCollectionEquality().hash(catbreeds),const DeepCollectionEquality().hash(dogbreeds),const DeepCollectionEquality().hash(personalityTags));

@override
String toString() {
  return 'PetFormState(submitStatus: $submitStatus, petName: $petName, petType: $petType, dob: $dob, weight: $weight, breed: $breed, personalityTag: $personalityTag, imagePath: $imagePath, catbreeds: $catbreeds, dogbreeds: $dogbreeds, personalityTags: $personalityTags)';
}


}

/// @nodoc
abstract mixin class $PetFormStateCopyWith<$Res>  {
  factory $PetFormStateCopyWith(PetFormState value, $Res Function(PetFormState) _then) = _$PetFormStateCopyWithImpl;
@useResult
$Res call({
 Status submitStatus, NotEmpty petName, NotEmpty petType, DateTime? dob, int weight, TypeNotNull<DropItem> breed, List<TypeNotNull<DropItem>> personalityTag, NotEmpty imagePath, List<DropItem> catbreeds, List<DropItem> dogbreeds, List<DropItem> personalityTags
});




}
/// @nodoc
class _$PetFormStateCopyWithImpl<$Res>
    implements $PetFormStateCopyWith<$Res> {
  _$PetFormStateCopyWithImpl(this._self, this._then);

  final PetFormState _self;
  final $Res Function(PetFormState) _then;

/// Create a copy of PetFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submitStatus = null,Object? petName = null,Object? petType = null,Object? dob = freezed,Object? weight = null,Object? breed = null,Object? personalityTag = null,Object? imagePath = null,Object? catbreeds = null,Object? dogbreeds = null,Object? personalityTags = null,}) {
  return _then(_self.copyWith(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,petName: null == petName ? _self.petName : petName // ignore: cast_nullable_to_non_nullable
as NotEmpty,petType: null == petType ? _self.petType : petType // ignore: cast_nullable_to_non_nullable
as NotEmpty,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,breed: null == breed ? _self.breed! : breed // ignore: cast_nullable_to_non_nullable
as TypeNotNull<DropItem>,personalityTag: null == personalityTag ? _self.personalityTag! : personalityTag // ignore: cast_nullable_to_non_nullable
as List<TypeNotNull<DropItem>>,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as NotEmpty,catbreeds: null == catbreeds ? _self.catbreeds : catbreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,dogbreeds: null == dogbreeds ? _self.dogbreeds : dogbreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,personalityTags: null == personalityTags ? _self.personalityTags : personalityTags // ignore: cast_nullable_to_non_nullable
as List<DropItem>,
  ));
}

}


/// @nodoc


class _PetFormState implements PetFormState {
  const _PetFormState({this.submitStatus = Status.init, this.petName = const NotEmpty.pure(), this.petType = const NotEmpty.pure(), this.dob = null, this.weight = 0, this.breed = const DropItemFrom.pure(), final  List<TypeNotNull<DropItem>> personalityTag = const [], this.imagePath = const NotEmpty.pure(), final  List<DropItem> catbreeds = const [], final  List<DropItem> dogbreeds = const [], final  List<DropItem> personalityTags = const []}): _personalityTag = personalityTag,_catbreeds = catbreeds,_dogbreeds = dogbreeds,_personalityTags = personalityTags;
  

@override@JsonKey() final  Status submitStatus;
@override@JsonKey() final  NotEmpty petName;
@override@JsonKey() final  NotEmpty petType;
@override@JsonKey() final  DateTime? dob;
@override@JsonKey() final  int weight;
@override@JsonKey() final  TypeNotNull<DropItem> breed;
 final  List<TypeNotNull<DropItem>> _personalityTag;
@override@JsonKey() List<TypeNotNull<DropItem>> get personalityTag {
  if (_personalityTag is EqualUnmodifiableListView) return _personalityTag;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_personalityTag);
}

@override@JsonKey() final  NotEmpty imagePath;
//
 final  List<DropItem> _catbreeds;
//
@override@JsonKey() List<DropItem> get catbreeds {
  if (_catbreeds is EqualUnmodifiableListView) return _catbreeds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_catbreeds);
}

 final  List<DropItem> _dogbreeds;
@override@JsonKey() List<DropItem> get dogbreeds {
  if (_dogbreeds is EqualUnmodifiableListView) return _dogbreeds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dogbreeds);
}

 final  List<DropItem> _personalityTags;
@override@JsonKey() List<DropItem> get personalityTags {
  if (_personalityTags is EqualUnmodifiableListView) return _personalityTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_personalityTags);
}


/// Create a copy of PetFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetFormStateCopyWith<_PetFormState> get copyWith => __$PetFormStateCopyWithImpl<_PetFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetFormState&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.petName, petName) || other.petName == petName)&&(identical(other.petType, petType) || other.petType == petType)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.breed, breed) || other.breed == breed)&&const DeepCollectionEquality().equals(other._personalityTag, _personalityTag)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&const DeepCollectionEquality().equals(other._catbreeds, _catbreeds)&&const DeepCollectionEquality().equals(other._dogbreeds, _dogbreeds)&&const DeepCollectionEquality().equals(other._personalityTags, _personalityTags));
}


@override
int get hashCode => Object.hash(runtimeType,submitStatus,petName,petType,dob,weight,breed,const DeepCollectionEquality().hash(_personalityTag),imagePath,const DeepCollectionEquality().hash(_catbreeds),const DeepCollectionEquality().hash(_dogbreeds),const DeepCollectionEquality().hash(_personalityTags));

@override
String toString() {
  return 'PetFormState(submitStatus: $submitStatus, petName: $petName, petType: $petType, dob: $dob, weight: $weight, breed: $breed, personalityTag: $personalityTag, imagePath: $imagePath, catbreeds: $catbreeds, dogbreeds: $dogbreeds, personalityTags: $personalityTags)';
}


}

/// @nodoc
abstract mixin class _$PetFormStateCopyWith<$Res> implements $PetFormStateCopyWith<$Res> {
  factory _$PetFormStateCopyWith(_PetFormState value, $Res Function(_PetFormState) _then) = __$PetFormStateCopyWithImpl;
@override @useResult
$Res call({
 Status submitStatus, NotEmpty petName, NotEmpty petType, DateTime? dob, int weight, TypeNotNull<DropItem> breed, List<TypeNotNull<DropItem>> personalityTag, NotEmpty imagePath, List<DropItem> catbreeds, List<DropItem> dogbreeds, List<DropItem> personalityTags
});




}
/// @nodoc
class __$PetFormStateCopyWithImpl<$Res>
    implements _$PetFormStateCopyWith<$Res> {
  __$PetFormStateCopyWithImpl(this._self, this._then);

  final _PetFormState _self;
  final $Res Function(_PetFormState) _then;

/// Create a copy of PetFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submitStatus = null,Object? petName = null,Object? petType = null,Object? dob = freezed,Object? weight = null,Object? breed = null,Object? personalityTag = null,Object? imagePath = null,Object? catbreeds = null,Object? dogbreeds = null,Object? personalityTags = null,}) {
  return _then(_PetFormState(
submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,petName: null == petName ? _self.petName : petName // ignore: cast_nullable_to_non_nullable
as NotEmpty,petType: null == petType ? _self.petType : petType // ignore: cast_nullable_to_non_nullable
as NotEmpty,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,breed: null == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as TypeNotNull<DropItem>,personalityTag: null == personalityTag ? _self._personalityTag : personalityTag // ignore: cast_nullable_to_non_nullable
as List<TypeNotNull<DropItem>>,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as NotEmpty,catbreeds: null == catbreeds ? _self._catbreeds : catbreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,dogbreeds: null == dogbreeds ? _self._dogbreeds : dogbreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,personalityTags: null == personalityTags ? _self._personalityTags : personalityTags // ignore: cast_nullable_to_non_nullable
as List<DropItem>,
  ));
}


}

// dart format on
