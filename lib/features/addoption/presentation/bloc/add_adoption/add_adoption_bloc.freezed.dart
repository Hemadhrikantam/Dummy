// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_adoption_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddAdoptionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddAdoptionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddAdoptionEvent()';
}


}

/// @nodoc
class $AddAdoptionEventCopyWith<$Res>  {
$AddAdoptionEventCopyWith(AddAdoptionEvent _, $Res Function(AddAdoptionEvent) __);
}


/// @nodoc


class _Started implements AddAdoptionEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddAdoptionEvent.started()';
}


}




/// @nodoc


class _Name implements AddAdoptionEvent {
  const _Name(this.name);
  

 final  String name;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameCopyWith<_Name> get copyWith => __$NameCopyWithImpl<_Name>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Name&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AddAdoptionEvent.name(name: $name)';
}


}

/// @nodoc
abstract mixin class _$NameCopyWith<$Res> implements $AddAdoptionEventCopyWith<$Res> {
  factory _$NameCopyWith(_Name value, $Res Function(_Name) _then) = __$NameCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$NameCopyWithImpl<$Res>
    implements _$NameCopyWith<$Res> {
  __$NameCopyWithImpl(this._self, this._then);

  final _Name _self;
  final $Res Function(_Name) _then;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_Name(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Year implements AddAdoptionEvent {
  const _Year(this.year);
  

 final  DropItem year;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YearCopyWith<_Year> get copyWith => __$YearCopyWithImpl<_Year>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Year&&(identical(other.year, year) || other.year == year));
}


@override
int get hashCode => Object.hash(runtimeType,year);

@override
String toString() {
  return 'AddAdoptionEvent.year(year: $year)';
}


}

/// @nodoc
abstract mixin class _$YearCopyWith<$Res> implements $AddAdoptionEventCopyWith<$Res> {
  factory _$YearCopyWith(_Year value, $Res Function(_Year) _then) = __$YearCopyWithImpl;
@useResult
$Res call({
 DropItem year
});




}
/// @nodoc
class __$YearCopyWithImpl<$Res>
    implements _$YearCopyWith<$Res> {
  __$YearCopyWithImpl(this._self, this._then);

  final _Year _self;
  final $Res Function(_Year) _then;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? year = null,}) {
  return _then(_Year(
null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _Month implements AddAdoptionEvent {
  const _Month(this.value);
  

 final  DropItem value;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthCopyWith<_Month> get copyWith => __$MonthCopyWithImpl<_Month>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Month&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'AddAdoptionEvent.month(value: $value)';
}


}

/// @nodoc
abstract mixin class _$MonthCopyWith<$Res> implements $AddAdoptionEventCopyWith<$Res> {
  factory _$MonthCopyWith(_Month value, $Res Function(_Month) _then) = __$MonthCopyWithImpl;
@useResult
$Res call({
 DropItem value
});




}
/// @nodoc
class __$MonthCopyWithImpl<$Res>
    implements _$MonthCopyWith<$Res> {
  __$MonthCopyWithImpl(this._self, this._then);

  final _Month _self;
  final $Res Function(_Month) _then;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Month(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _PetType implements AddAdoptionEvent {
  const _PetType(this.petType);
  

 final  DropItem petType;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetTypeCopyWith<_PetType> get copyWith => __$PetTypeCopyWithImpl<_PetType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetType&&(identical(other.petType, petType) || other.petType == petType));
}


@override
int get hashCode => Object.hash(runtimeType,petType);

@override
String toString() {
  return 'AddAdoptionEvent.petType(petType: $petType)';
}


}

/// @nodoc
abstract mixin class _$PetTypeCopyWith<$Res> implements $AddAdoptionEventCopyWith<$Res> {
  factory _$PetTypeCopyWith(_PetType value, $Res Function(_PetType) _then) = __$PetTypeCopyWithImpl;
@useResult
$Res call({
 DropItem petType
});




}
/// @nodoc
class __$PetTypeCopyWithImpl<$Res>
    implements _$PetTypeCopyWith<$Res> {
  __$PetTypeCopyWithImpl(this._self, this._then);

  final _PetType _self;
  final $Res Function(_PetType) _then;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petType = null,}) {
  return _then(_PetType(
null == petType ? _self.petType : petType // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _PetBreed implements AddAdoptionEvent {
  const _PetBreed(this.petBreed);
  

 final  DropItem petBreed;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetBreedCopyWith<_PetBreed> get copyWith => __$PetBreedCopyWithImpl<_PetBreed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetBreed&&(identical(other.petBreed, petBreed) || other.petBreed == petBreed));
}


@override
int get hashCode => Object.hash(runtimeType,petBreed);

@override
String toString() {
  return 'AddAdoptionEvent.breed(petBreed: $petBreed)';
}


}

/// @nodoc
abstract mixin class _$PetBreedCopyWith<$Res> implements $AddAdoptionEventCopyWith<$Res> {
  factory _$PetBreedCopyWith(_PetBreed value, $Res Function(_PetBreed) _then) = __$PetBreedCopyWithImpl;
@useResult
$Res call({
 DropItem petBreed
});




}
/// @nodoc
class __$PetBreedCopyWithImpl<$Res>
    implements _$PetBreedCopyWith<$Res> {
  __$PetBreedCopyWithImpl(this._self, this._then);

  final _PetBreed _self;
  final $Res Function(_PetBreed) _then;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? petBreed = null,}) {
  return _then(_PetBreed(
null == petBreed ? _self.petBreed : petBreed // ignore: cast_nullable_to_non_nullable
as DropItem,
  ));
}


}

/// @nodoc


class _Address implements AddAdoptionEvent {
  const _Address(this.address);
  

 final  String address;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressCopyWith<_Address> get copyWith => __$AddressCopyWithImpl<_Address>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Address&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'AddAdoptionEvent.address(address: $address)';
}


}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddAdoptionEventCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) = __$AddressCopyWithImpl;
@useResult
$Res call({
 String address
});




}
/// @nodoc
class __$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(_Address(
null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Phone implements AddAdoptionEvent {
  const _Phone(this.phone);
  

 final  String phone;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhoneCopyWith<_Phone> get copyWith => __$PhoneCopyWithImpl<_Phone>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Phone&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'AddAdoptionEvent.phone(phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$PhoneCopyWith<$Res> implements $AddAdoptionEventCopyWith<$Res> {
  factory _$PhoneCopyWith(_Phone value, $Res Function(_Phone) _then) = __$PhoneCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class __$PhoneCopyWithImpl<$Res>
    implements _$PhoneCopyWith<$Res> {
  __$PhoneCopyWithImpl(this._self, this._then);

  final _Phone _self;
  final $Res Function(_Phone) _then;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(_Phone(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Email implements AddAdoptionEvent {
  const _Email(this.email);
  

 final  String email;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailCopyWith<_Email> get copyWith => __$EmailCopyWithImpl<_Email>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Email&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AddAdoptionEvent.email(email: $email)';
}


}

/// @nodoc
abstract mixin class _$EmailCopyWith<$Res> implements $AddAdoptionEventCopyWith<$Res> {
  factory _$EmailCopyWith(_Email value, $Res Function(_Email) _then) = __$EmailCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class __$EmailCopyWithImpl<$Res>
    implements _$EmailCopyWith<$Res> {
  __$EmailCopyWithImpl(this._self, this._then);

  final _Email _self;
  final $Res Function(_Email) _then;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_Email(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Description implements AddAdoptionEvent {
  const _Description(this.description);
  

 final  String description;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DescriptionCopyWith<_Description> get copyWith => __$DescriptionCopyWithImpl<_Description>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Description&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'AddAdoptionEvent.description(description: $description)';
}


}

/// @nodoc
abstract mixin class _$DescriptionCopyWith<$Res> implements $AddAdoptionEventCopyWith<$Res> {
  factory _$DescriptionCopyWith(_Description value, $Res Function(_Description) _then) = __$DescriptionCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class __$DescriptionCopyWithImpl<$Res>
    implements _$DescriptionCopyWith<$Res> {
  __$DescriptionCopyWithImpl(this._self, this._then);

  final _Description _self;
  final $Res Function(_Description) _then;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(_Description(
null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Image implements AddAdoptionEvent {
  const _Image(this.filePath);
  

 final  String filePath;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageCopyWith<_Image> get copyWith => __$ImageCopyWithImpl<_Image>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Image&&(identical(other.filePath, filePath) || other.filePath == filePath));
}


@override
int get hashCode => Object.hash(runtimeType,filePath);

@override
String toString() {
  return 'AddAdoptionEvent.image(filePath: $filePath)';
}


}

/// @nodoc
abstract mixin class _$ImageCopyWith<$Res> implements $AddAdoptionEventCopyWith<$Res> {
  factory _$ImageCopyWith(_Image value, $Res Function(_Image) _then) = __$ImageCopyWithImpl;
@useResult
$Res call({
 String filePath
});




}
/// @nodoc
class __$ImageCopyWithImpl<$Res>
    implements _$ImageCopyWith<$Res> {
  __$ImageCopyWithImpl(this._self, this._then);

  final _Image _self;
  final $Res Function(_Image) _then;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filePath = null,}) {
  return _then(_Image(
null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Submit implements AddAdoptionEvent {
  const _Submit({this.id});
  

 final  int? id;

/// Create a copy of AddAdoptionEvent
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
  return 'AddAdoptionEvent.submit(id: $id)';
}


}

/// @nodoc
abstract mixin class _$SubmitCopyWith<$Res> implements $AddAdoptionEventCopyWith<$Res> {
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

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_Submit(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _Initialization implements AddAdoptionEvent {
  const _Initialization({this.id});
  

 final  int? id;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitializationCopyWith<_Initialization> get copyWith => __$InitializationCopyWithImpl<_Initialization>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialization&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AddAdoptionEvent.initialization(id: $id)';
}


}

/// @nodoc
abstract mixin class _$InitializationCopyWith<$Res> implements $AddAdoptionEventCopyWith<$Res> {
  factory _$InitializationCopyWith(_Initialization value, $Res Function(_Initialization) _then) = __$InitializationCopyWithImpl;
@useResult
$Res call({
 int? id
});




}
/// @nodoc
class __$InitializationCopyWithImpl<$Res>
    implements _$InitializationCopyWith<$Res> {
  __$InitializationCopyWithImpl(this._self, this._then);

  final _Initialization _self;
  final $Res Function(_Initialization) _then;

/// Create a copy of AddAdoptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_Initialization(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$AddAdoptionState {

 Status get addAdoptionStatus; Status get submitStatus; NotEmpty get name; DropdownValue get year; DropdownValue get month; DropdownValue get petType; List<DropItem> get petTypes; DropdownValue get breed; List<DropItem> get catBreeds; List<DropItem> get dogBreeds; NotEmpty get address; MobileNo get phone; Email get email; NotEmpty get description; NotEmpty get url; bool get adoptionValidation;
/// Create a copy of AddAdoptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddAdoptionStateCopyWith<AddAdoptionState> get copyWith => _$AddAdoptionStateCopyWithImpl<AddAdoptionState>(this as AddAdoptionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddAdoptionState&&(identical(other.addAdoptionStatus, addAdoptionStatus) || other.addAdoptionStatus == addAdoptionStatus)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.name, name) || other.name == name)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.petType, petType) || other.petType == petType)&&const DeepCollectionEquality().equals(other.petTypes, petTypes)&&(identical(other.breed, breed) || other.breed == breed)&&const DeepCollectionEquality().equals(other.catBreeds, catBreeds)&&const DeepCollectionEquality().equals(other.dogBreeds, dogBreeds)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url)&&(identical(other.adoptionValidation, adoptionValidation) || other.adoptionValidation == adoptionValidation));
}


@override
int get hashCode => Object.hash(runtimeType,addAdoptionStatus,submitStatus,name,year,month,petType,const DeepCollectionEquality().hash(petTypes),breed,const DeepCollectionEquality().hash(catBreeds),const DeepCollectionEquality().hash(dogBreeds),address,phone,email,description,url,adoptionValidation);

@override
String toString() {
  return 'AddAdoptionState(addAdoptionStatus: $addAdoptionStatus, submitStatus: $submitStatus, name: $name, year: $year, month: $month, petType: $petType, petTypes: $petTypes, breed: $breed, catBreeds: $catBreeds, dogBreeds: $dogBreeds, address: $address, phone: $phone, email: $email, description: $description, url: $url, adoptionValidation: $adoptionValidation)';
}


}

/// @nodoc
abstract mixin class $AddAdoptionStateCopyWith<$Res>  {
  factory $AddAdoptionStateCopyWith(AddAdoptionState value, $Res Function(AddAdoptionState) _then) = _$AddAdoptionStateCopyWithImpl;
@useResult
$Res call({
 Status addAdoptionStatus, Status submitStatus, NotEmpty name, DropdownValue year, DropdownValue month, DropdownValue petType, List<DropItem> petTypes, DropdownValue breed, List<DropItem> catBreeds, List<DropItem> dogBreeds, NotEmpty address, MobileNo phone, Email email, NotEmpty description, NotEmpty url, bool adoptionValidation
});




}
/// @nodoc
class _$AddAdoptionStateCopyWithImpl<$Res>
    implements $AddAdoptionStateCopyWith<$Res> {
  _$AddAdoptionStateCopyWithImpl(this._self, this._then);

  final AddAdoptionState _self;
  final $Res Function(AddAdoptionState) _then;

/// Create a copy of AddAdoptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addAdoptionStatus = null,Object? submitStatus = null,Object? name = null,Object? year = null,Object? month = null,Object? petType = null,Object? petTypes = null,Object? breed = null,Object? catBreeds = null,Object? dogBreeds = null,Object? address = null,Object? phone = null,Object? email = null,Object? description = null,Object? url = null,Object? adoptionValidation = null,}) {
  return _then(_self.copyWith(
addAdoptionStatus: null == addAdoptionStatus ? _self.addAdoptionStatus : addAdoptionStatus // ignore: cast_nullable_to_non_nullable
as Status,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as NotEmpty,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as DropdownValue,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as DropdownValue,petType: null == petType ? _self.petType : petType // ignore: cast_nullable_to_non_nullable
as DropdownValue,petTypes: null == petTypes ? _self.petTypes : petTypes // ignore: cast_nullable_to_non_nullable
as List<DropItem>,breed: null == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as DropdownValue,catBreeds: null == catBreeds ? _self.catBreeds : catBreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,dogBreeds: null == dogBreeds ? _self.dogBreeds : dogBreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as NotEmpty,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as MobileNo,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as NotEmpty,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as NotEmpty,adoptionValidation: null == adoptionValidation ? _self.adoptionValidation : adoptionValidation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _AddAdoptionState implements AddAdoptionState {
  const _AddAdoptionState({this.addAdoptionStatus = Status.init, this.submitStatus = Status.init, this.name = const NotEmpty.pure(), this.year = const DropdownValue.pure(), this.month = const DropdownValue.pure(), this.petType = const DropdownValue.pure(), final  List<DropItem> petTypes = const [], this.breed = const DropdownValue.pure(), final  List<DropItem> catBreeds = const [], final  List<DropItem> dogBreeds = const [], this.address = const NotEmpty.pure(), this.phone = const MobileNo.pure(), this.email = const Email.pure(), this.description = const NotEmpty.pure(), this.url = const NotEmpty.pure(), this.adoptionValidation = false}): _petTypes = petTypes,_catBreeds = catBreeds,_dogBreeds = dogBreeds;
  

@override@JsonKey() final  Status addAdoptionStatus;
@override@JsonKey() final  Status submitStatus;
@override@JsonKey() final  NotEmpty name;
@override@JsonKey() final  DropdownValue year;
@override@JsonKey() final  DropdownValue month;
@override@JsonKey() final  DropdownValue petType;
 final  List<DropItem> _petTypes;
@override@JsonKey() List<DropItem> get petTypes {
  if (_petTypes is EqualUnmodifiableListView) return _petTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_petTypes);
}

@override@JsonKey() final  DropdownValue breed;
 final  List<DropItem> _catBreeds;
@override@JsonKey() List<DropItem> get catBreeds {
  if (_catBreeds is EqualUnmodifiableListView) return _catBreeds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_catBreeds);
}

 final  List<DropItem> _dogBreeds;
@override@JsonKey() List<DropItem> get dogBreeds {
  if (_dogBreeds is EqualUnmodifiableListView) return _dogBreeds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dogBreeds);
}

@override@JsonKey() final  NotEmpty address;
@override@JsonKey() final  MobileNo phone;
@override@JsonKey() final  Email email;
@override@JsonKey() final  NotEmpty description;
@override@JsonKey() final  NotEmpty url;
@override@JsonKey() final  bool adoptionValidation;

/// Create a copy of AddAdoptionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddAdoptionStateCopyWith<_AddAdoptionState> get copyWith => __$AddAdoptionStateCopyWithImpl<_AddAdoptionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddAdoptionState&&(identical(other.addAdoptionStatus, addAdoptionStatus) || other.addAdoptionStatus == addAdoptionStatus)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.name, name) || other.name == name)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.petType, petType) || other.petType == petType)&&const DeepCollectionEquality().equals(other._petTypes, _petTypes)&&(identical(other.breed, breed) || other.breed == breed)&&const DeepCollectionEquality().equals(other._catBreeds, _catBreeds)&&const DeepCollectionEquality().equals(other._dogBreeds, _dogBreeds)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url)&&(identical(other.adoptionValidation, adoptionValidation) || other.adoptionValidation == adoptionValidation));
}


@override
int get hashCode => Object.hash(runtimeType,addAdoptionStatus,submitStatus,name,year,month,petType,const DeepCollectionEquality().hash(_petTypes),breed,const DeepCollectionEquality().hash(_catBreeds),const DeepCollectionEquality().hash(_dogBreeds),address,phone,email,description,url,adoptionValidation);

@override
String toString() {
  return 'AddAdoptionState(addAdoptionStatus: $addAdoptionStatus, submitStatus: $submitStatus, name: $name, year: $year, month: $month, petType: $petType, petTypes: $petTypes, breed: $breed, catBreeds: $catBreeds, dogBreeds: $dogBreeds, address: $address, phone: $phone, email: $email, description: $description, url: $url, adoptionValidation: $adoptionValidation)';
}


}

/// @nodoc
abstract mixin class _$AddAdoptionStateCopyWith<$Res> implements $AddAdoptionStateCopyWith<$Res> {
  factory _$AddAdoptionStateCopyWith(_AddAdoptionState value, $Res Function(_AddAdoptionState) _then) = __$AddAdoptionStateCopyWithImpl;
@override @useResult
$Res call({
 Status addAdoptionStatus, Status submitStatus, NotEmpty name, DropdownValue year, DropdownValue month, DropdownValue petType, List<DropItem> petTypes, DropdownValue breed, List<DropItem> catBreeds, List<DropItem> dogBreeds, NotEmpty address, MobileNo phone, Email email, NotEmpty description, NotEmpty url, bool adoptionValidation
});




}
/// @nodoc
class __$AddAdoptionStateCopyWithImpl<$Res>
    implements _$AddAdoptionStateCopyWith<$Res> {
  __$AddAdoptionStateCopyWithImpl(this._self, this._then);

  final _AddAdoptionState _self;
  final $Res Function(_AddAdoptionState) _then;

/// Create a copy of AddAdoptionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addAdoptionStatus = null,Object? submitStatus = null,Object? name = null,Object? year = null,Object? month = null,Object? petType = null,Object? petTypes = null,Object? breed = null,Object? catBreeds = null,Object? dogBreeds = null,Object? address = null,Object? phone = null,Object? email = null,Object? description = null,Object? url = null,Object? adoptionValidation = null,}) {
  return _then(_AddAdoptionState(
addAdoptionStatus: null == addAdoptionStatus ? _self.addAdoptionStatus : addAdoptionStatus // ignore: cast_nullable_to_non_nullable
as Status,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as Status,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as NotEmpty,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as DropdownValue,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as DropdownValue,petType: null == petType ? _self.petType : petType // ignore: cast_nullable_to_non_nullable
as DropdownValue,petTypes: null == petTypes ? _self._petTypes : petTypes // ignore: cast_nullable_to_non_nullable
as List<DropItem>,breed: null == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as DropdownValue,catBreeds: null == catBreeds ? _self._catBreeds : catBreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,dogBreeds: null == dogBreeds ? _self._dogBreeds : dogBreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as NotEmpty,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as MobileNo,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as NotEmpty,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as NotEmpty,adoptionValidation: null == adoptionValidation ? _self.adoptionValidation : adoptionValidation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
