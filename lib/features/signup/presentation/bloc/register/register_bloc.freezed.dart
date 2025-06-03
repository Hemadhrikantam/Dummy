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
mixin _$RegisterState {

 List<DropItem> get dogBreeds; List<DropItem> get catBreeds; List<DropItem> get personalityTags;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<RegisterState> get copyWith => _$RegisterStateCopyWithImpl<RegisterState>(this as RegisterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState&&const DeepCollectionEquality().equals(other.dogBreeds, dogBreeds)&&const DeepCollectionEquality().equals(other.catBreeds, catBreeds)&&const DeepCollectionEquality().equals(other.personalityTags, personalityTags));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(dogBreeds),const DeepCollectionEquality().hash(catBreeds),const DeepCollectionEquality().hash(personalityTags));

@override
String toString() {
  return 'RegisterState(dogBreeds: $dogBreeds, catBreeds: $catBreeds, personalityTags: $personalityTags)';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res>  {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 List<DropItem> dogBreeds, List<DropItem> catBreeds, List<DropItem> personalityTags
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
@pragma('vm:prefer-inline') @override $Res call({Object? dogBreeds = null,Object? catBreeds = null,Object? personalityTags = null,}) {
  return _then(_self.copyWith(
dogBreeds: null == dogBreeds ? _self.dogBreeds : dogBreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,catBreeds: null == catBreeds ? _self.catBreeds : catBreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,personalityTags: null == personalityTags ? _self.personalityTags : personalityTags // ignore: cast_nullable_to_non_nullable
as List<DropItem>,
  ));
}

}


/// @nodoc


class _RegisterState implements RegisterState {
  const _RegisterState({final  List<DropItem> dogBreeds = const [], final  List<DropItem> catBreeds = const [], final  List<DropItem> personalityTags = const []}): _dogBreeds = dogBreeds,_catBreeds = catBreeds,_personalityTags = personalityTags;
  

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


/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterStateCopyWith<_RegisterState> get copyWith => __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterState&&const DeepCollectionEquality().equals(other._dogBreeds, _dogBreeds)&&const DeepCollectionEquality().equals(other._catBreeds, _catBreeds)&&const DeepCollectionEquality().equals(other._personalityTags, _personalityTags));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_dogBreeds),const DeepCollectionEquality().hash(_catBreeds),const DeepCollectionEquality().hash(_personalityTags));

@override
String toString() {
  return 'RegisterState(dogBreeds: $dogBreeds, catBreeds: $catBreeds, personalityTags: $personalityTags)';
}


}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(_RegisterState value, $Res Function(_RegisterState) _then) = __$RegisterStateCopyWithImpl;
@override @useResult
$Res call({
 List<DropItem> dogBreeds, List<DropItem> catBreeds, List<DropItem> personalityTags
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
@override @pragma('vm:prefer-inline') $Res call({Object? dogBreeds = null,Object? catBreeds = null,Object? personalityTags = null,}) {
  return _then(_RegisterState(
dogBreeds: null == dogBreeds ? _self._dogBreeds : dogBreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,catBreeds: null == catBreeds ? _self._catBreeds : catBreeds // ignore: cast_nullable_to_non_nullable
as List<DropItem>,personalityTags: null == personalityTags ? _self._personalityTags : personalityTags // ignore: cast_nullable_to_non_nullable
as List<DropItem>,
  ));
}


}

// dart format on
