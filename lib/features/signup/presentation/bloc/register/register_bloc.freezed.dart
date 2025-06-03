// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent()';
}


}

/// @nodoc
class $RegisterEventCopyWith<$Res>  {
$RegisterEventCopyWith(RegisterEvent _, $Res Function(RegisterEvent) __);
}


/// @nodoc


class _Initialization implements RegisterEvent {
  const _Initialization();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialization);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent.initialization()';
}


}




/// @nodoc


class _PetDetails implements RegisterEvent {
  const _PetDetails();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetDetails);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent.petDetails()';
}


}




/// @nodoc


class _PetName implements RegisterEvent {
  const _PetName(this.name);
  

 final  String name;

/// Create a copy of RegisterEvent
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
  return 'RegisterEvent.petName(name: $name)';
}


}

/// @nodoc
abstract mixin class _$PetNameCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
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

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_PetName(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PetType implements RegisterEvent {
  const _PetType(this.value);
  

 final  PetType value;

/// Create a copy of RegisterEvent
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
  return 'RegisterEvent.petType(value: $value)';
}


}

/// @nodoc
abstract mixin class _$PetTypeCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
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

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_PetType(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as PetType,
  ));
}


}

/// @nodoc


class _DOB implements RegisterEvent {
  const _DOB(this.dob);
  

 final  String dob;

/// Create a copy of RegisterEvent
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
  return 'RegisterEvent.dob(dob: $dob)';
}


}

/// @nodoc
abstract mixin class _$DOBCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
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

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dob = null,}) {
  return _then(_DOB(
null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Breed implements RegisterEvent {
  const _Breed(this.breed);
  

 final  DropItem breed;

/// Create a copy of RegisterEvent
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
  return 'RegisterEvent.breed(breed: $breed)';
}


}

/// @nodoc
abstract mixin class _$BreedCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
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

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? breed = null,}) {
  return _then(_Breed(
null == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _WeightUnit implements RegisterEvent {
  const _WeightUnit(this.weightUnit);
  

 final  String weightUnit;

/// Create a copy of RegisterEvent
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
  return 'RegisterEvent.weightUnit(weightUnit: $weightUnit)';
}


}

/// @nodoc
abstract mixin class _$WeightUnitCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
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

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? weightUnit = null,}) {
  return _then(_WeightUnit(
null == weightUnit ? _self.weightUnit : weightUnit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Weight implements RegisterEvent {
  const _Weight(this.weight);
  

 final  String weight;

/// Create a copy of RegisterEvent
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
  return 'RegisterEvent.weight(weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$WeightCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
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

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? weight = null,}) {
  return _then(_Weight(
null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddTag implements RegisterEvent {
  const _AddTag(final  List<DropItem> value): _value = value;
  

 final  List<DropItem> _value;
 List<DropItem> get value {
  if (_value is EqualUnmodifiableListView) return _value;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_value);
}


/// Create a copy of RegisterEvent
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
  return 'RegisterEvent.addTag(value: $value)';
}


}

/// @nodoc
abstract mixin class _$AddTagCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
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

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_AddTag(
null == value ? _self._value : value // ignore: cast_nullable_to_non_nullable
as List<DropItem>,
  ));
}


}

/// @nodoc


class _RemoveTag implements RegisterEvent {
  const _RemoveTag(this.index);
  

 final  int index;

/// Create a copy of RegisterEvent
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
  return 'RegisterEvent.removeTag(index: $index)';
}


}

/// @nodoc
abstract mixin class _$RemoveTagCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
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

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_RemoveTag(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$RegisterState {

 Status get initStatus; List<DropItem> get dogBreeds; List<DropItem> get catBreeds; List<DropItem> get personalityTags; NotEmpty get petName; PetType get petType; NotEmpty get dob; DropdownValue get breed; List<DropdownValue> get selectedPersonalityTags; NotEmpty get weightUnit; NotEmpty get weight;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<RegisterState> get copyWith => _$RegisterStateCopyWithImpl<RegisterState>(this as RegisterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&const DeepCollectionEquality().equals(other.dogBreeds, dogBreeds)&&const DeepCollectionEquality().equals(other.catBreeds, catBreeds)&&const DeepCollectionEquality().equals(other.personalityTags, personalityTags)&&(identical(other.petName, petName) || other.petName == petName)&&(identical(other.petType, petType) || other.petType == petType)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.breed, breed) || other.breed == breed)&&const DeepCollectionEquality().equals(other.selectedPersonalityTags, selectedPersonalityTags)&&(identical(other.weightUnit, weightUnit) || other.weightUnit == weightUnit)&&(identical(other.weight, weight) || other.weight == weight));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,const DeepCollectionEquality().hash(dogBreeds),const DeepCollectionEquality().hash(catBreeds),const DeepCollectionEquality().hash(personalityTags),petName,petType,dob,breed,const DeepCollectionEquality().hash(selectedPersonalityTags),weightUnit,weight);

@override
String toString() {
  return 'RegisterState(initStatus: $initStatus, dogBreeds: $dogBreeds, catBreeds: $catBreeds, personalityTags: $personalityTags, petName: $petName, petType: $petType, dob: $dob, breed: $breed, selectedPersonalityTags: $selectedPersonalityTags, weightUnit: $weightUnit, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res>  {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 Status initStatus, List<DropItem> dogBreeds, List<DropItem> catBreeds, List<DropItem> personalityTags, NotEmpty petName, PetType petType, NotEmpty dob, DropdownValue breed, List<DropdownValue> selectedPersonalityTags, NotEmpty weightUnit, NotEmpty weight
});




}
/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initStatus = null,Object? dogBreeds = null,Object? catBreeds = null,Object? personalityTags = null,Object? petName = null,Object? petType = null,Object? dob = null,Object? breed = null,Object? selectedPersonalityTags = null,Object? weightUnit = null,Object? weight = null,}) {
  return _then(_self.copyWith(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,dogBreeds: null == dogBreeds ? _self.dogBreeds : dogBreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,catBreeds: null == catBreeds ? _self.catBreeds : catBreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,personalityTags: null == personalityTags ? _self.personalityTags : personalityTags // ignore: cast_nullable_to_non_nullable
as List<DropItem>,petName: null == petName ? _self.petName : petName // ignore: cast_nullable_to_non_nullable
as NotEmpty,petType: null == petType ? _self.petType : petType // ignore: cast_nullable_to_non_nullable
as PetType,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as NotEmpty,breed: null == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as DropdownValue,selectedPersonalityTags: null == selectedPersonalityTags ? _self.selectedPersonalityTags : selectedPersonalityTags // ignore: cast_nullable_to_non_nullable
as List<DropdownValue>,weightUnit: null == weightUnit ? _self.weightUnit : weightUnit // ignore: cast_nullable_to_non_nullable
as NotEmpty,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as NotEmpty,
  ));
}

}


/// @nodoc


class _RegisterState implements RegisterState {
  const _RegisterState({this.initStatus = Status.init, final  List<DropItem> dogBreeds = const [], final  List<DropItem> catBreeds = const [], final  List<DropItem> personalityTags = const [], this.petName = const NotEmpty.pure(), this.petType = PetType.Cat, this.dob = const NotEmpty.pure(), this.breed = const DropdownValue.pure(), final  List<DropdownValue> selectedPersonalityTags = const [], this.weightUnit = const NotEmpty.pure(), this.weight = const NotEmpty.pure()}): _dogBreeds = dogBreeds,_catBreeds = catBreeds,_personalityTags = personalityTags,_selectedPersonalityTags = selectedPersonalityTags;
  

@override@JsonKey() final  Status initStatus;
 final  List<DropItem> _dogBreeds;
@override@JsonKey() List<DropItem> get dogBreeds {
  if (_dogBreeds is EqualUnmodifiableListView) return _dogBreeds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dogBreeds);
}

 final  List<DropItem> _catBreeds;
@override@JsonKey() List<DropItem> get catBreeds {
  if (_catBreeds is EqualUnmodifiableListView) return _catBreeds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_catBreeds);
}

 final  List<DropItem> _personalityTags;
@override@JsonKey() List<DropItem> get personalityTags {
  if (_personalityTags is EqualUnmodifiableListView) return _personalityTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_personalityTags);
}

@override@JsonKey() final  NotEmpty petName;
@override@JsonKey() final  PetType petType;
@override@JsonKey() final  NotEmpty dob;
@override@JsonKey() final  DropdownValue breed;
 final  List<DropdownValue> _selectedPersonalityTags;
@override@JsonKey() List<DropdownValue> get selectedPersonalityTags {
  if (_selectedPersonalityTags is EqualUnmodifiableListView) return _selectedPersonalityTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedPersonalityTags);
}

@override@JsonKey() final  NotEmpty weightUnit;
@override@JsonKey() final  NotEmpty weight;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterStateCopyWith<_RegisterState> get copyWith => __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterState&&(identical(other.initStatus, initStatus) || other.initStatus == initStatus)&&const DeepCollectionEquality().equals(other._dogBreeds, _dogBreeds)&&const DeepCollectionEquality().equals(other._catBreeds, _catBreeds)&&const DeepCollectionEquality().equals(other._personalityTags, _personalityTags)&&(identical(other.petName, petName) || other.petName == petName)&&(identical(other.petType, petType) || other.petType == petType)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.breed, breed) || other.breed == breed)&&const DeepCollectionEquality().equals(other._selectedPersonalityTags, _selectedPersonalityTags)&&(identical(other.weightUnit, weightUnit) || other.weightUnit == weightUnit)&&(identical(other.weight, weight) || other.weight == weight));
}


@override
int get hashCode => Object.hash(runtimeType,initStatus,const DeepCollectionEquality().hash(_dogBreeds),const DeepCollectionEquality().hash(_catBreeds),const DeepCollectionEquality().hash(_personalityTags),petName,petType,dob,breed,const DeepCollectionEquality().hash(_selectedPersonalityTags),weightUnit,weight);

@override
String toString() {
  return 'RegisterState(initStatus: $initStatus, dogBreeds: $dogBreeds, catBreeds: $catBreeds, personalityTags: $personalityTags, petName: $petName, petType: $petType, dob: $dob, breed: $breed, selectedPersonalityTags: $selectedPersonalityTags, weightUnit: $weightUnit, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(_RegisterState value, $Res Function(_RegisterState) _then) = __$RegisterStateCopyWithImpl;
@override @useResult
$Res call({
 Status initStatus, List<DropItem> dogBreeds, List<DropItem> catBreeds, List<DropItem> personalityTags, NotEmpty petName, PetType petType, NotEmpty dob, DropdownValue breed, List<DropdownValue> selectedPersonalityTags, NotEmpty weightUnit, NotEmpty weight
});




}
/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initStatus = null,Object? dogBreeds = null,Object? catBreeds = null,Object? personalityTags = null,Object? petName = null,Object? petType = null,Object? dob = null,Object? breed = null,Object? selectedPersonalityTags = null,Object? weightUnit = null,Object? weight = null,}) {
  return _then(_RegisterState(
initStatus: null == initStatus ? _self.initStatus : initStatus // ignore: cast_nullable_to_non_nullable
as Status,dogBreeds: null == dogBreeds ? _self._dogBreeds : dogBreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,catBreeds: null == catBreeds ? _self._catBreeds : catBreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,personalityTags: null == personalityTags ? _self._personalityTags : personalityTags // ignore: cast_nullable_to_non_nullable
as List<DropItem>,petName: null == petName ? _self.petName : petName // ignore: cast_nullable_to_non_nullable
as NotEmpty,petType: null == petType ? _self.petType : petType // ignore: cast_nullable_to_non_nullable
as PetType,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as NotEmpty,breed: null == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as DropdownValue,selectedPersonalityTags: null == selectedPersonalityTags ? _self._selectedPersonalityTags : selectedPersonalityTags // ignore: cast_nullable_to_non_nullable
as List<DropdownValue>,weightUnit: null == weightUnit ? _self.weightUnit : weightUnit // ignore: cast_nullable_to_non_nullable
as NotEmpty,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as NotEmpty,
  ));
}


}

// dart format on
