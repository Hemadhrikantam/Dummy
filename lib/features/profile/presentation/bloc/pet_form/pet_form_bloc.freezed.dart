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
  const _Init(this.id);
  

 final  int? id;

/// Create a copy of PetFormEvent
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
  return 'PetFormEvent.init(id: $id)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) _then) = __$InitCopyWithImpl;
@useResult
$Res call({
 int? id
});




}
/// @nodoc
class __$InitCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(this._self, this._then);

  final _Init _self;
  final $Res Function(_Init) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_Init(
freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _Submit implements PetFormEvent {
  const _Submit(this.id);
  

 final  int? id;

/// Create a copy of PetFormEvent
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
  return 'PetFormEvent.submit(id: $id)';
}


}

/// @nodoc
abstract mixin class _$SubmitCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
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

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_Submit(
freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _PetName implements PetFormEvent {
  const _PetName(this.name);
  

 final  String name;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetNameCopyWith<_PetName> get copyWith => __$PetNameCopyWithImpl<_PetName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetName&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'PetFormEvent.petName(name: $name)';
}


}

/// @nodoc
abstract mixin class _$PetNameCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$PetNameCopyWith(_PetName value, $Res Function(_PetName) _then) = __$PetNameCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$PetNameCopyWithImpl<$Res>
    implements _$PetNameCopyWith<$Res> {
  __$PetNameCopyWithImpl(this._self, this._then);

  final _PetName _self;
  final $Res Function(_PetName) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_PetName(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PetImage implements PetFormEvent {
  const _PetImage(this.value);
  

 final  String value;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetImageCopyWith<_PetImage> get copyWith => __$PetImageCopyWithImpl<_PetImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetImage&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PetFormEvent.petImage(value: $value)';
}


}

/// @nodoc
abstract mixin class _$PetImageCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$PetImageCopyWith(_PetImage value, $Res Function(_PetImage) _then) = __$PetImageCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$PetImageCopyWithImpl<$Res>
    implements _$PetImageCopyWith<$Res> {
  __$PetImageCopyWithImpl(this._self, this._then);

  final _PetImage _self;
  final $Res Function(_PetImage) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_PetImage(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PetType implements PetFormEvent {
  const _PetType(this.value);
  

 final  PetType value;

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
 PetType value
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
as PetType,
  ));
}


}

/// @nodoc


class _DOB implements PetFormEvent {
  const _DOB(this.dob);
  

 final  String dob;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DOBCopyWith<_DOB> get copyWith => __$DOBCopyWithImpl<_DOB>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DOB&&(identical(other.dob, dob) || other.dob == dob));
}


@override
int get hashCode => Object.hash(runtimeType,dob);

@override
String toString() {
  return 'PetFormEvent.dob(dob: $dob)';
}


}

/// @nodoc
abstract mixin class _$DOBCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$DOBCopyWith(_DOB value, $Res Function(_DOB) _then) = __$DOBCopyWithImpl;
@useResult
$Res call({
 String dob
});




}
/// @nodoc
class __$DOBCopyWithImpl<$Res>
    implements _$DOBCopyWith<$Res> {
  __$DOBCopyWithImpl(this._self, this._then);

  final _DOB _self;
  final $Res Function(_DOB) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dob = null,}) {
  return _then(_DOB(
null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Breed implements PetFormEvent {
  const _Breed(this.breed);
  

 final  DropItem breed;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BreedCopyWith<_Breed> get copyWith => __$BreedCopyWithImpl<_Breed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Breed&&(identical(other.breed, breed) || other.breed == breed));
}


@override
int get hashCode => Object.hash(runtimeType,breed);

@override
String toString() {
  return 'PetFormEvent.breed(breed: $breed)';
}


}

/// @nodoc
abstract mixin class _$BreedCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$BreedCopyWith(_Breed value, $Res Function(_Breed) _then) = __$BreedCopyWithImpl;
@useResult
$Res call({
 DropItem breed
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
@pragma('vm:prefer-inline') $Res call({Object? breed = null,}) {
  return _then(_Breed(
null == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _WeightUnit implements PetFormEvent {
  const _WeightUnit(this.weightUnit);
  

 final  String weightUnit;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeightUnitCopyWith<_WeightUnit> get copyWith => __$WeightUnitCopyWithImpl<_WeightUnit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeightUnit&&(identical(other.weightUnit, weightUnit) || other.weightUnit == weightUnit));
}


@override
int get hashCode => Object.hash(runtimeType,weightUnit);

@override
String toString() {
  return 'PetFormEvent.weightUnit(weightUnit: $weightUnit)';
}


}

/// @nodoc
abstract mixin class _$WeightUnitCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$WeightUnitCopyWith(_WeightUnit value, $Res Function(_WeightUnit) _then) = __$WeightUnitCopyWithImpl;
@useResult
$Res call({
 String weightUnit
});




}
/// @nodoc
class __$WeightUnitCopyWithImpl<$Res>
    implements _$WeightUnitCopyWith<$Res> {
  __$WeightUnitCopyWithImpl(this._self, this._then);

  final _WeightUnit _self;
  final $Res Function(_WeightUnit) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? weightUnit = null,}) {
  return _then(_WeightUnit(
null == weightUnit ? _self.weightUnit : weightUnit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Weight implements PetFormEvent {
  const _Weight(this.weight);
  

 final  String weight;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeightCopyWith<_Weight> get copyWith => __$WeightCopyWithImpl<_Weight>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Weight&&(identical(other.weight, weight) || other.weight == weight));
}


@override
int get hashCode => Object.hash(runtimeType,weight);

@override
String toString() {
  return 'PetFormEvent.weight(weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$WeightCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$WeightCopyWith(_Weight value, $Res Function(_Weight) _then) = __$WeightCopyWithImpl;
@useResult
$Res call({
 String weight
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
@pragma('vm:prefer-inline') $Res call({Object? weight = null,}) {
  return _then(_Weight(
null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddTag implements PetFormEvent {
  const _AddTag(final  List<DropItem> value): _value = value;
  

 final  List<DropItem> _value;
 List<DropItem> get value {
  if (_value is EqualUnmodifiableListView) return _value;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_value);
}


/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTagCopyWith<_AddTag> get copyWith => __$AddTagCopyWithImpl<_AddTag>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTag&&const DeepCollectionEquality().equals(other._value, _value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_value));

@override
String toString() {
  return 'PetFormEvent.addTag(value: $value)';
}


}

/// @nodoc
abstract mixin class _$AddTagCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$AddTagCopyWith(_AddTag value, $Res Function(_AddTag) _then) = __$AddTagCopyWithImpl;
@useResult
$Res call({
 List<DropItem> value
});




}
/// @nodoc
class __$AddTagCopyWithImpl<$Res>
    implements _$AddTagCopyWith<$Res> {
  __$AddTagCopyWithImpl(this._self, this._then);

  final _AddTag _self;
  final $Res Function(_AddTag) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_AddTag(
null == value ? _self._value : value // ignore: cast_nullable_to_non_nullable
as List<DropItem>,
  ));
}


}

/// @nodoc


class _RemoveTag implements PetFormEvent {
  const _RemoveTag(this.index);
  

 final  int index;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveTagCopyWith<_RemoveTag> get copyWith => __$RemoveTagCopyWithImpl<_RemoveTag>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveTag&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'PetFormEvent.removeTag(index: $index)';
}


}

/// @nodoc
abstract mixin class _$RemoveTagCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$RemoveTagCopyWith(_RemoveTag value, $Res Function(_RemoveTag) _then) = __$RemoveTagCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$RemoveTagCopyWithImpl<$Res>
    implements _$RemoveTagCopyWith<$Res> {
  __$RemoveTagCopyWithImpl(this._self, this._then);

  final _RemoveTag _self;
  final $Res Function(_RemoveTag) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_RemoveTag(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _PetGender implements PetFormEvent {
  const _PetGender(this.petGender);
  

 final  DropItem petGender;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetGenderCopyWith<_PetGender> get copyWith => __$PetGenderCopyWithImpl<_PetGender>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetGender&&(identical(other.petGender, petGender) || other.petGender == petGender));
}


@override
int get hashCode => Object.hash(runtimeType,petGender);

@override
String toString() {
  return 'PetFormEvent.petGender(petGender: $petGender)';
}


}

/// @nodoc
abstract mixin class _$PetGenderCopyWith<$Res> implements $PetFormEventCopyWith<$Res> {
  factory _$PetGenderCopyWith(_PetGender value, $Res Function(_PetGender) _then) = __$PetGenderCopyWithImpl;
@useResult
$Res call({
 DropItem petGender
});




}
/// @nodoc
class __$PetGenderCopyWithImpl<$Res>
    implements _$PetGenderCopyWith<$Res> {
  __$PetGenderCopyWithImpl(this._self, this._then);

  final _PetGender _self;
  final $Res Function(_PetGender) _then;

/// Create a copy of PetFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petGender = null,}) {
  return _then(_PetGender(
null == petGender ? _self.petGender : petGender // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc
mixin _$PetFormState {

 Status get initStatus; Status get submitStatus; bool get validation; NotEmpty get petName; PetType get petType; NotEmpty get dob; DropdownValue get gender; NotEmpty get petImage; DropdownValue get breed; List<DropdownValue> get selectedPersonalityTags; NotEmpty get weightUnit; NotEmpty get weight;//
 List<DropItem> get catbreeds; List<DropItem> get dogbreeds; List<DropItem> get personalityTags;
/// Create a copy of PetFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetFormStateCopyWith<PetFormState> get copyWith => _$PetFormStateCopyWithImpl<PetFormState>(this as PetFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PetFormState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petName, petName) || other.petName == petName)&&(identical(other.petType, petType) || other.petType == petType)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.petImage, petImage) || other.petImage == petImage)&&(identical(other.breed, breed) || other.breed == breed)&&const DeepCollectionEquality().equals(other.selectedPersonalityTags, selectedPersonalityTags)&&(identical(other.weightUnit, weightUnit) || other.weightUnit == weightUnit)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other.catbreeds, catbreeds)&&const DeepCollectionEquality().equals(other.dogbreeds, dogbreeds)&&const DeepCollectionEquality().equals(other.personalityTags, personalityTags));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,submitStatus,validation,petName,petType,dob,gender,petImage,breed,const DeepCollectionEquality().hash(selectedPersonalityTags),weightUnit,weight,const DeepCollectionEquality().hash(catbreeds),const DeepCollectionEquality().hash(dogbreeds),const DeepCollectionEquality().hash(personalityTags));

@override
String toString() {
  return 'PetFormState(initStatus: $initStatus, submitStatus: $submitStatus, validation: $validation, petName: $petName, petType: $petType, dob: $dob, gender: $gender, petImage: $petImage, breed: $breed, selectedPersonalityTags: $selectedPersonalityTags, weightUnit: $weightUnit, weight: $weight, catbreeds: $catbreeds, dogbreeds: $dogbreeds, personalityTags: $personalityTags)';
}


}

/// @nodoc
abstract mixin class $PetFormStateCopyWith<$Res>  {
  factory $PetFormStateCopyWith(PetFormState value, $Res Function(PetFormState) _then) = _$PetFormStateCopyWithImpl;
@useResult
$Res call({
 Status initStatus, Status submitStatus, bool validation, NotEmpty petName, PetType petType, NotEmpty dob, DropdownValue gender, NotEmpty petImage, DropdownValue breed, List<DropdownValue> selectedPersonalityTags, NotEmpty weightUnit, NotEmpty weight, List<DropItem> catbreeds, List<DropItem> dogbreeds, List<DropItem> personalityTags
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
@pragma('vm:prefer-inline') @override $Res call({Object? initStatus = null,Object? submitStatus = null,Object? validation = null,Object? petName = null,Object? petType = null,Object? dob = null,Object? gender = null,Object? petImage = null,Object? breed = null,Object? selectedPersonalityTags = null,Object? weightUnit = null,Object? weight = null,Object? catbreeds = null,Object? dogbreeds = null,Object? personalityTags = null,}) {
  return _then(_self.copyWith(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petName: null == petName ? _self.petName : petName // ignore: cast_nullable_to_non_nullable
as NotEmpty,petType: null == petType ? _self.petType : petType // ignore: cast_nullable_to_non_nullable
as PetType,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as NotEmpty,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as DropdownValue,petImage: null == petImage ? _self.petImage : petImage // ignore: cast_nullable_to_non_nullable
as NotEmpty,breed: null == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as DropdownValue,selectedPersonalityTags: null == selectedPersonalityTags ? _self.selectedPersonalityTags : selectedPersonalityTags // ignore: cast_nullable_to_non_nullable
as List<DropdownValue>,weightUnit: null == weightUnit ? _self.weightUnit : weightUnit // ignore: cast_nullable_to_non_nullable
as NotEmpty,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as NotEmpty,catbreeds: null == catbreeds ? _self.catbreeds : catbreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,dogbreeds: null == dogbreeds ? _self.dogbreeds : dogbreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,personalityTags: null == personalityTags ? _self.personalityTags : personalityTags // ignore: cast_nullable_to_non_nullable
as List<DropItem>,
  ));
}

}


/// @nodoc


class _PetFormState implements PetFormState {
  const _PetFormState({this.initStatus = Status.init, this.submitStatus = Status.init, this.validation = false, this.petName = const NotEmpty.pure(), this.petType = PetType.Cat, this.dob = const NotEmpty.pure(), this.gender = const DropdownValue.pure(), this.petImage = const NotEmpty.pure(), this.breed = const DropdownValue.pure(), final  List<DropdownValue> selectedPersonalityTags = const [], this.weightUnit = const NotEmpty.pure(), this.weight = const NotEmpty.pure(), final  List<DropItem> catbreeds = const [], final  List<DropItem> dogbreeds = const [], final  List<DropItem> personalityTags = const []}): _selectedPersonalityTags = selectedPersonalityTags,_catbreeds = catbreeds,_dogbreeds = dogbreeds,_personalityTags = personalityTags;
  

@override@JsonKey() final  Status initStatus;
@override@JsonKey() final  Status submitStatus;
@override@JsonKey() final  bool validation;
@override@JsonKey() final  NotEmpty petName;
@override@JsonKey() final  PetType petType;
@override@JsonKey() final  NotEmpty dob;
@override@JsonKey() final  DropdownValue gender;
@override@JsonKey() final  NotEmpty petImage;
@override@JsonKey() final  DropdownValue breed;
 final  List<DropdownValue> _selectedPersonalityTags;
@override@JsonKey() List<DropdownValue> get selectedPersonalityTags {
  if (_selectedPersonalityTags is EqualUnmodifiableListView) return _selectedPersonalityTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedPersonalityTags);
}

@override@JsonKey() final  NotEmpty weightUnit;
@override@JsonKey() final  NotEmpty weight;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetFormState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.validation, validation) || other.validation == validation)&&(identical(other.petName, petName) || other.petName == petName)&&(identical(other.petType, petType) || other.petType == petType)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.petImage, petImage) || other.petImage == petImage)&&(identical(other.breed, breed) || other.breed == breed)&&const DeepCollectionEquality().equals(other._selectedPersonalityTags, _selectedPersonalityTags)&&(identical(other.weightUnit, weightUnit) || other.weightUnit == weightUnit)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other._catbreeds, _catbreeds)&&const DeepCollectionEquality().equals(other._dogbreeds, _dogbreeds)&&const DeepCollectionEquality().equals(other._personalityTags, _personalityTags));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,submitStatus,validation,petName,petType,dob,gender,petImage,breed,const DeepCollectionEquality().hash(_selectedPersonalityTags),weightUnit,weight,const DeepCollectionEquality().hash(_catbreeds),const DeepCollectionEquality().hash(_dogbreeds),const DeepCollectionEquality().hash(_personalityTags));

@override
String toString() {
  return 'PetFormState(initStatus: $initStatus, submitStatus: $submitStatus, validation: $validation, petName: $petName, petType: $petType, dob: $dob, gender: $gender, petImage: $petImage, breed: $breed, selectedPersonalityTags: $selectedPersonalityTags, weightUnit: $weightUnit, weight: $weight, catbreeds: $catbreeds, dogbreeds: $dogbreeds, personalityTags: $personalityTags)';
}


}

/// @nodoc
abstract mixin class _$PetFormStateCopyWith<$Res> implements $PetFormStateCopyWith<$Res> {
  factory _$PetFormStateCopyWith(_PetFormState value, $Res Function(_PetFormState) _then) = __$PetFormStateCopyWithImpl;
@override @useResult
$Res call({
 Status initStatus, Status submitStatus, bool validation, NotEmpty petName, PetType petType, NotEmpty dob, DropdownValue gender, NotEmpty petImage, DropdownValue breed, List<DropdownValue> selectedPersonalityTags, NotEmpty weightUnit, NotEmpty weight, List<DropItem> catbreeds, List<DropItem> dogbreeds, List<DropItem> personalityTags
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
@override @pragma('vm:prefer-inline') $Res call({Object? initStatus = null,Object? submitStatus = null,Object? validation = null,Object? petName = null,Object? petType = null,Object? dob = null,Object? gender = null,Object? petImage = null,Object? breed = null,Object? selectedPersonalityTags = null,Object? weightUnit = null,Object? weight = null,Object? catbreeds = null,Object? dogbreeds = null,Object? personalityTags = null,}) {
  return _then(_PetFormState(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,validation: null == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as bool,petName: null == petName ? _self.petName : petName // ignore: cast_nullable_to_non_nullable
as NotEmpty,petType: null == petType ? _self.petType : petType // ignore: cast_nullable_to_non_nullable
as PetType,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as NotEmpty,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as DropdownValue,petImage: null == petImage ? _self.petImage : petImage // ignore: cast_nullable_to_non_nullable
as NotEmpty,breed: null == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as DropdownValue,selectedPersonalityTags: null == selectedPersonalityTags ? _self._selectedPersonalityTags : selectedPersonalityTags // ignore: cast_nullable_to_non_nullable
as List<DropdownValue>,weightUnit: null == weightUnit ? _self.weightUnit : weightUnit // ignore: cast_nullable_to_non_nullable
as NotEmpty,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as NotEmpty,catbreeds: null == catbreeds ? _self._catbreeds : catbreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,dogbreeds: null == dogbreeds ? _self._dogbreeds : dogbreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,personalityTags: null == personalityTags ? _self._personalityTags : personalityTags // ignore: cast_nullable_to_non_nullable
as List<DropItem>,
  ));
}


}

// dart format on
