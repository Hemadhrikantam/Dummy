// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccinations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VaccinationsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VaccinationsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VaccinationsEvent()';
}


}

/// @nodoc
class $VaccinationsEventCopyWith<$Res>  {
$VaccinationsEventCopyWith(VaccinationsEvent _, $Res Function(VaccinationsEvent) __);
}


/// @nodoc


class _Init implements VaccinationsEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VaccinationsEvent.init()';
}


}




/// @nodoc


class _Vaccinations implements VaccinationsEvent {
  const _Vaccinations(this.key);
  

 final  String? key;

/// Create a copy of VaccinationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VaccinationsCopyWith<_Vaccinations> get copyWith => __$VaccinationsCopyWithImpl<_Vaccinations>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Vaccinations&&(identical(other.key, key) || other.key == key));
}


@override
int get hashCode => Object.hash(runtimeType,key);

@override
String toString() {
  return 'VaccinationsEvent.vaccinations(key: $key)';
}


}

/// @nodoc
abstract mixin class _$VaccinationsCopyWith<$Res> implements $VaccinationsEventCopyWith<$Res> {
  factory _$VaccinationsCopyWith(_Vaccinations value, $Res Function(_Vaccinations) _then) = __$VaccinationsCopyWithImpl;
@useResult
$Res call({
 String? key
});




}
/// @nodoc
class __$VaccinationsCopyWithImpl<$Res>
    implements _$VaccinationsCopyWith<$Res> {
  __$VaccinationsCopyWithImpl(this._self, this._then);

  final _Vaccinations _self;
  final $Res Function(_Vaccinations) _then;

/// Create a copy of VaccinationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? key = freezed,}) {
  return _then(_Vaccinations(
freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _Filter implements VaccinationsEvent {
  const _Filter(this.dateAdministered, this.dueDate);
  

 final  String dateAdministered;
 final  String dueDate;

/// Create a copy of VaccinationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterCopyWith<_Filter> get copyWith => __$FilterCopyWithImpl<_Filter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Filter&&(identical(other.dateAdministered, dateAdministered) || other.dateAdministered == dateAdministered)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate));
}


@override
int get hashCode => Object.hash(runtimeType,dateAdministered,dueDate);

@override
String toString() {
  return 'VaccinationsEvent.filter(dateAdministered: $dateAdministered, dueDate: $dueDate)';
}


}

/// @nodoc
abstract mixin class _$FilterCopyWith<$Res> implements $VaccinationsEventCopyWith<$Res> {
  factory _$FilterCopyWith(_Filter value, $Res Function(_Filter) _then) = __$FilterCopyWithImpl;
@useResult
$Res call({
 String dateAdministered, String dueDate
});




}
/// @nodoc
class __$FilterCopyWithImpl<$Res>
    implements _$FilterCopyWith<$Res> {
  __$FilterCopyWithImpl(this._self, this._then);

  final _Filter _self;
  final $Res Function(_Filter) _then;

/// Create a copy of VaccinationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dateAdministered = null,Object? dueDate = null,}) {
  return _then(_Filter(
null == dateAdministered ? _self.dateAdministered : dateAdministered // ignore: cast_nullable_to_non_nullable
as String,null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$VaccinationsState {

 Status get vaccinationsStatus; List<PetVaccination> get vaccinations; NotEmpty get dateAdministered; NotEmpty get dueDate;
/// Create a copy of VaccinationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VaccinationsStateCopyWith<VaccinationsState> get copyWith => _$VaccinationsStateCopyWithImpl<VaccinationsState>(this as VaccinationsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VaccinationsState&&(identical(other.vaccinationsStatus, vaccinationsStatus) || other.vaccinationsStatus == vaccinationsStatus)&&const DeepCollectionEquality().equals(other.vaccinations, vaccinations)&&(identical(other.dateAdministered, dateAdministered) || other.dateAdministered == dateAdministered)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate));
}


@override
int get hashCode => Object.hash(runtimeType,vaccinationsStatus,const DeepCollectionEquality().hash(vaccinations),dateAdministered,dueDate);

@override
String toString() {
  return 'VaccinationsState(vaccinationsStatus: $vaccinationsStatus, vaccinations: $vaccinations, dateAdministered: $dateAdministered, dueDate: $dueDate)';
}


}

/// @nodoc
abstract mixin class $VaccinationsStateCopyWith<$Res>  {
  factory $VaccinationsStateCopyWith(VaccinationsState value, $Res Function(VaccinationsState) _then) = _$VaccinationsStateCopyWithImpl;
@useResult
$Res call({
 Status vaccinationsStatus, List<PetVaccination> vaccinations, NotEmpty dateAdministered, NotEmpty dueDate
});




}
/// @nodoc
class _$VaccinationsStateCopyWithImpl<$Res>
    implements $VaccinationsStateCopyWith<$Res> {
  _$VaccinationsStateCopyWithImpl(this._self, this._then);

  final VaccinationsState _self;
  final $Res Function(VaccinationsState) _then;

/// Create a copy of VaccinationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vaccinationsStatus = null,Object? vaccinations = null,Object? dateAdministered = null,Object? dueDate = null,}) {
  return _then(_self.copyWith(
vaccinationsStatus: null == vaccinationsStatus ? _self.vaccinationsStatus : vaccinationsStatus // ignore: cast_nullable_to_non_nullable
as Status,vaccinations: null == vaccinations ? _self.vaccinations : vaccinations // ignore: cast_nullable_to_non_nullable
as List<PetVaccination>,dateAdministered: null == dateAdministered ? _self.dateAdministered : dateAdministered // ignore: cast_nullable_to_non_nullable
as NotEmpty,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as NotEmpty,
  ));
}

}


/// @nodoc


class _VaccinationsState implements VaccinationsState {
  const _VaccinationsState({this.vaccinationsStatus = Status.init, final  List<PetVaccination> vaccinations = const [], this.dateAdministered = const NotEmpty.pure(), this.dueDate = const NotEmpty.pure()}): _vaccinations = vaccinations;
  

@override@JsonKey() final  Status vaccinationsStatus;
 final  List<PetVaccination> _vaccinations;
@override@JsonKey() List<PetVaccination> get vaccinations {
  if (_vaccinations is EqualUnmodifiableListView) return _vaccinations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vaccinations);
}

@override@JsonKey() final  NotEmpty dateAdministered;
@override@JsonKey() final  NotEmpty dueDate;

/// Create a copy of VaccinationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VaccinationsStateCopyWith<_VaccinationsState> get copyWith => __$VaccinationsStateCopyWithImpl<_VaccinationsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VaccinationsState&&(identical(other.vaccinationsStatus, vaccinationsStatus) || other.vaccinationsStatus == vaccinationsStatus)&&const DeepCollectionEquality().equals(other._vaccinations, _vaccinations)&&(identical(other.dateAdministered, dateAdministered) || other.dateAdministered == dateAdministered)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate));
}


@override
int get hashCode => Object.hash(runtimeType,vaccinationsStatus,const DeepCollectionEquality().hash(_vaccinations),dateAdministered,dueDate);

@override
String toString() {
  return 'VaccinationsState(vaccinationsStatus: $vaccinationsStatus, vaccinations: $vaccinations, dateAdministered: $dateAdministered, dueDate: $dueDate)';
}


}

/// @nodoc
abstract mixin class _$VaccinationsStateCopyWith<$Res> implements $VaccinationsStateCopyWith<$Res> {
  factory _$VaccinationsStateCopyWith(_VaccinationsState value, $Res Function(_VaccinationsState) _then) = __$VaccinationsStateCopyWithImpl;
@override @useResult
$Res call({
 Status vaccinationsStatus, List<PetVaccination> vaccinations, NotEmpty dateAdministered, NotEmpty dueDate
});




}
/// @nodoc
class __$VaccinationsStateCopyWithImpl<$Res>
    implements _$VaccinationsStateCopyWith<$Res> {
  __$VaccinationsStateCopyWithImpl(this._self, this._then);

  final _VaccinationsState _self;
  final $Res Function(_VaccinationsState) _then;

/// Create a copy of VaccinationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vaccinationsStatus = null,Object? vaccinations = null,Object? dateAdministered = null,Object? dueDate = null,}) {
  return _then(_VaccinationsState(
vaccinationsStatus: null == vaccinationsStatus ? _self.vaccinationsStatus : vaccinationsStatus // ignore: cast_nullable_to_non_nullable
as Status,vaccinations: null == vaccinations ? _self._vaccinations : vaccinations // ignore: cast_nullable_to_non_nullable
as List<PetVaccination>,dateAdministered: null == dateAdministered ? _self.dateAdministered : dateAdministered // ignore: cast_nullable_to_non_nullable
as NotEmpty,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as NotEmpty,
  ));
}


}

// dart format on
