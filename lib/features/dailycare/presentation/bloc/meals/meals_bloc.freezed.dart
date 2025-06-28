// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meals_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MealsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MealsEvent()';
}


}

/// @nodoc
class $MealsEventCopyWith<$Res>  {
$MealsEventCopyWith(MealsEvent _, $Res Function(MealsEvent) __);
}


/// @nodoc


class _Init implements MealsEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MealsEvent.init()';
}


}




/// @nodoc


class _Meals implements MealsEvent {
  const _Meals(this.date);
  

 final  DateTime? date;

/// Create a copy of MealsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealsCopyWith<_Meals> get copyWith => __$MealsCopyWithImpl<_Meals>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meals&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'MealsEvent.meals(date: $date)';
}


}

/// @nodoc
abstract mixin class _$MealsCopyWith<$Res> implements $MealsEventCopyWith<$Res> {
  factory _$MealsCopyWith(_Meals value, $Res Function(_Meals) _then) = __$MealsCopyWithImpl;
@useResult
$Res call({
 DateTime? date
});




}
/// @nodoc
class __$MealsCopyWithImpl<$Res>
    implements _$MealsCopyWith<$Res> {
  __$MealsCopyWithImpl(this._self, this._then);

  final _Meals _self;
  final $Res Function(_Meals) _then;

/// Create a copy of MealsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = freezed,}) {
  return _then(_Meals(
freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$MealsState {

 Status get mealsStatus; List<PetMeal> get meals;
/// Create a copy of MealsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealsStateCopyWith<MealsState> get copyWith => _$MealsStateCopyWithImpl<MealsState>(this as MealsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealsState&&(identical(other.mealsStatus, mealsStatus) || other.mealsStatus == mealsStatus)&&const DeepCollectionEquality().equals(other.meals, meals));
}


@override
int get hashCode => Object.hash(runtimeType,mealsStatus,const DeepCollectionEquality().hash(meals));

@override
String toString() {
  return 'MealsState(mealsStatus: $mealsStatus, meals: $meals)';
}


}

/// @nodoc
abstract mixin class $MealsStateCopyWith<$Res>  {
  factory $MealsStateCopyWith(MealsState value, $Res Function(MealsState) _then) = _$MealsStateCopyWithImpl;
@useResult
$Res call({
 Status mealsStatus, List<PetMeal> meals
});




}
/// @nodoc
class _$MealsStateCopyWithImpl<$Res>
    implements $MealsStateCopyWith<$Res> {
  _$MealsStateCopyWithImpl(this._self, this._then);

  final MealsState _self;
  final $Res Function(MealsState) _then;

/// Create a copy of MealsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mealsStatus = null,Object? meals = null,}) {
  return _then(_self.copyWith(
mealsStatus: null == mealsStatus ? _self.mealsStatus : mealsStatus // ignore: cast_nullable_to_non_nullable
as Status,meals: null == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as List<PetMeal>,
  ));
}

}


/// @nodoc


class _MealsState implements MealsState {
  const _MealsState({this.mealsStatus = Status.init, final  List<PetMeal> meals = const []}): _meals = meals;
  

@override@JsonKey() final  Status mealsStatus;
 final  List<PetMeal> _meals;
@override@JsonKey() List<PetMeal> get meals {
  if (_meals is EqualUnmodifiableListView) return _meals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meals);
}


/// Create a copy of MealsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealsStateCopyWith<_MealsState> get copyWith => __$MealsStateCopyWithImpl<_MealsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealsState&&(identical(other.mealsStatus, mealsStatus) || other.mealsStatus == mealsStatus)&&const DeepCollectionEquality().equals(other._meals, _meals));
}


@override
int get hashCode => Object.hash(runtimeType,mealsStatus,const DeepCollectionEquality().hash(_meals));

@override
String toString() {
  return 'MealsState(mealsStatus: $mealsStatus, meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$MealsStateCopyWith<$Res> implements $MealsStateCopyWith<$Res> {
  factory _$MealsStateCopyWith(_MealsState value, $Res Function(_MealsState) _then) = __$MealsStateCopyWithImpl;
@override @useResult
$Res call({
 Status mealsStatus, List<PetMeal> meals
});




}
/// @nodoc
class __$MealsStateCopyWithImpl<$Res>
    implements _$MealsStateCopyWith<$Res> {
  __$MealsStateCopyWithImpl(this._self, this._then);

  final _MealsState _self;
  final $Res Function(_MealsState) _then;

/// Create a copy of MealsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mealsStatus = null,Object? meals = null,}) {
  return _then(_MealsState(
mealsStatus: null == mealsStatus ? _self.mealsStatus : mealsStatus // ignore: cast_nullable_to_non_nullable
as Status,meals: null == meals ? _self._meals : meals // ignore: cast_nullable_to_non_nullable
as List<PetMeal>,
  ));
}


}

// dart format on
