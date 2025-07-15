// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adoption_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdoptionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdoptionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdoptionEvent()';
}


}

/// @nodoc
class $AdoptionEventCopyWith<$Res>  {
$AdoptionEventCopyWith(AdoptionEvent _, $Res Function(AdoptionEvent) __);
}


/// @nodoc


class _Adoptions implements AdoptionEvent {
  const _Adoptions();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Adoptions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdoptionEvent.adoptions()';
}


}




/// @nodoc


class _AllPets implements AdoptionEvent {
  const _AllPets();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllPets);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdoptionEvent.allPets()';
}


}




/// @nodoc
mixin _$AdoptionState {

 Status get adoptionStatus; List<Adoption> get adoptions; List<Adoption> get allPets;
/// Create a copy of AdoptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdoptionStateCopyWith<AdoptionState> get copyWith => _$AdoptionStateCopyWithImpl<AdoptionState>(this as AdoptionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdoptionState&&(identical(other.adoptionStatus, adoptionStatus) || other.adoptionStatus == adoptionStatus)&&const DeepCollectionEquality().equals(other.adoptions, adoptions)&&const DeepCollectionEquality().equals(other.allPets, allPets));
}


@override
int get hashCode => Object.hash(runtimeType,adoptionStatus,const DeepCollectionEquality().hash(adoptions),const DeepCollectionEquality().hash(allPets));

@override
String toString() {
  return 'AdoptionState(adoptionStatus: $adoptionStatus, adoptions: $adoptions, allPets: $allPets)';
}


}

/// @nodoc
abstract mixin class $AdoptionStateCopyWith<$Res>  {
  factory $AdoptionStateCopyWith(AdoptionState value, $Res Function(AdoptionState) _then) = _$AdoptionStateCopyWithImpl;
@useResult
$Res call({
 Status adoptionStatus, List<Adoption> adoptions, List<Adoption> allPets
});




}
/// @nodoc
class _$AdoptionStateCopyWithImpl<$Res>
    implements $AdoptionStateCopyWith<$Res> {
  _$AdoptionStateCopyWithImpl(this._self, this._then);

  final AdoptionState _self;
  final $Res Function(AdoptionState) _then;

/// Create a copy of AdoptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adoptionStatus = null,Object? adoptions = null,Object? allPets = null,}) {
  return _then(_self.copyWith(
adoptionStatus: null == adoptionStatus ? _self.adoptionStatus : adoptionStatus // ignore: cast_nullable_to_non_nullable
as Status,adoptions: null == adoptions ? _self.adoptions : adoptions // ignore: cast_nullable_to_non_nullable
as List<Adoption>,allPets: null == allPets ? _self.allPets : allPets // ignore: cast_nullable_to_non_nullable
as List<Adoption>,
  ));
}

}


/// @nodoc


class _AdoptionState implements AdoptionState {
  const _AdoptionState({this.adoptionStatus = Status.init, final  List<Adoption> adoptions = const [], final  List<Adoption> allPets = const []}): _adoptions = adoptions,_allPets = allPets;
  

@override@JsonKey() final  Status adoptionStatus;
 final  List<Adoption> _adoptions;
@override@JsonKey() List<Adoption> get adoptions {
  if (_adoptions is EqualUnmodifiableListView) return _adoptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_adoptions);
}

 final  List<Adoption> _allPets;
@override@JsonKey() List<Adoption> get allPets {
  if (_allPets is EqualUnmodifiableListView) return _allPets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allPets);
}


/// Create a copy of AdoptionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdoptionStateCopyWith<_AdoptionState> get copyWith => __$AdoptionStateCopyWithImpl<_AdoptionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdoptionState&&(identical(other.adoptionStatus, adoptionStatus) || other.adoptionStatus == adoptionStatus)&&const DeepCollectionEquality().equals(other._adoptions, _adoptions)&&const DeepCollectionEquality().equals(other._allPets, _allPets));
}


@override
int get hashCode => Object.hash(runtimeType,adoptionStatus,const DeepCollectionEquality().hash(_adoptions),const DeepCollectionEquality().hash(_allPets));

@override
String toString() {
  return 'AdoptionState(adoptionStatus: $adoptionStatus, adoptions: $adoptions, allPets: $allPets)';
}


}

/// @nodoc
abstract mixin class _$AdoptionStateCopyWith<$Res> implements $AdoptionStateCopyWith<$Res> {
  factory _$AdoptionStateCopyWith(_AdoptionState value, $Res Function(_AdoptionState) _then) = __$AdoptionStateCopyWithImpl;
@override @useResult
$Res call({
 Status adoptionStatus, List<Adoption> adoptions, List<Adoption> allPets
});




}
/// @nodoc
class __$AdoptionStateCopyWithImpl<$Res>
    implements _$AdoptionStateCopyWith<$Res> {
  __$AdoptionStateCopyWithImpl(this._self, this._then);

  final _AdoptionState _self;
  final $Res Function(_AdoptionState) _then;

/// Create a copy of AdoptionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adoptionStatus = null,Object? adoptions = null,Object? allPets = null,}) {
  return _then(_AdoptionState(
adoptionStatus: null == adoptionStatus ? _self.adoptionStatus : adoptionStatus // ignore: cast_nullable_to_non_nullable
as Status,adoptions: null == adoptions ? _self._adoptions : adoptions // ignore: cast_nullable_to_non_nullable
as List<Adoption>,allPets: null == allPets ? _self._allPets : allPets // ignore: cast_nullable_to_non_nullable
as List<Adoption>,
  ));
}


}

// dart format on
