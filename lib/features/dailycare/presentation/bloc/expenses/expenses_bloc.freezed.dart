// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExpensesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpensesEvent()';
}


}

/// @nodoc
class $ExpensesEventCopyWith<$Res>  {
$ExpensesEventCopyWith(ExpensesEvent _, $Res Function(ExpensesEvent) __);
}


/// @nodoc


class _Init implements ExpensesEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpensesEvent.init()';
}


}




/// @nodoc


class _Expenses implements ExpensesEvent {
  const _Expenses(this.date);
  

 final  DateTime? date;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpensesCopyWith<_Expenses> get copyWith => __$ExpensesCopyWithImpl<_Expenses>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Expenses&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'ExpensesEvent.expenses(date: $date)';
}


}

/// @nodoc
abstract mixin class _$ExpensesCopyWith<$Res> implements $ExpensesEventCopyWith<$Res> {
  factory _$ExpensesCopyWith(_Expenses value, $Res Function(_Expenses) _then) = __$ExpensesCopyWithImpl;
@useResult
$Res call({
 DateTime? date
});




}
/// @nodoc
class __$ExpensesCopyWithImpl<$Res>
    implements _$ExpensesCopyWith<$Res> {
  __$ExpensesCopyWithImpl(this._self, this._then);

  final _Expenses _self;
  final $Res Function(_Expenses) _then;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = freezed,}) {
  return _then(_Expenses(
freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$ExpensesState {

 Status get expensesStatus; List<PetExpense> get expenses;
/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpensesStateCopyWith<ExpensesState> get copyWith => _$ExpensesStateCopyWithImpl<ExpensesState>(this as ExpensesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensesState&&(identical(other.expensesStatus, expensesStatus) || other.expensesStatus == expensesStatus)&&const DeepCollectionEquality().equals(other.expenses, expenses));
}


@override
int get hashCode => Object.hash(runtimeType,expensesStatus,const DeepCollectionEquality().hash(expenses));

@override
String toString() {
  return 'ExpensesState(expensesStatus: $expensesStatus, expenses: $expenses)';
}


}

/// @nodoc
abstract mixin class $ExpensesStateCopyWith<$Res>  {
  factory $ExpensesStateCopyWith(ExpensesState value, $Res Function(ExpensesState) _then) = _$ExpensesStateCopyWithImpl;
@useResult
$Res call({
 Status expensesStatus, List<PetExpense> expenses
});




}
/// @nodoc
class _$ExpensesStateCopyWithImpl<$Res>
    implements $ExpensesStateCopyWith<$Res> {
  _$ExpensesStateCopyWithImpl(this._self, this._then);

  final ExpensesState _self;
  final $Res Function(ExpensesState) _then;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? expensesStatus = null,Object? expenses = null,}) {
  return _then(_self.copyWith(
expensesStatus: null == expensesStatus ? _self.expensesStatus : expensesStatus // ignore: cast_nullable_to_non_nullable
as Status,expenses: null == expenses ? _self.expenses : expenses // ignore: cast_nullable_to_non_nullable
as List<PetExpense>,
  ));
}

}


/// @nodoc


class _ExpensesState implements ExpensesState {
  const _ExpensesState({this.expensesStatus = Status.init, final  List<PetExpense> expenses = const []}): _expenses = expenses;
  

@override@JsonKey() final  Status expensesStatus;
 final  List<PetExpense> _expenses;
@override@JsonKey() List<PetExpense> get expenses {
  if (_expenses is EqualUnmodifiableListView) return _expenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_expenses);
}


/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpensesStateCopyWith<_ExpensesState> get copyWith => __$ExpensesStateCopyWithImpl<_ExpensesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpensesState&&(identical(other.expensesStatus, expensesStatus) || other.expensesStatus == expensesStatus)&&const DeepCollectionEquality().equals(other._expenses, _expenses));
}


@override
int get hashCode => Object.hash(runtimeType,expensesStatus,const DeepCollectionEquality().hash(_expenses));

@override
String toString() {
  return 'ExpensesState(expensesStatus: $expensesStatus, expenses: $expenses)';
}


}

/// @nodoc
abstract mixin class _$ExpensesStateCopyWith<$Res> implements $ExpensesStateCopyWith<$Res> {
  factory _$ExpensesStateCopyWith(_ExpensesState value, $Res Function(_ExpensesState) _then) = __$ExpensesStateCopyWithImpl;
@override @useResult
$Res call({
 Status expensesStatus, List<PetExpense> expenses
});




}
/// @nodoc
class __$ExpensesStateCopyWithImpl<$Res>
    implements _$ExpensesStateCopyWith<$Res> {
  __$ExpensesStateCopyWithImpl(this._self, this._then);

  final _ExpensesState _self;
  final $Res Function(_ExpensesState) _then;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? expensesStatus = null,Object? expenses = null,}) {
  return _then(_ExpensesState(
expensesStatus: null == expensesStatus ? _self.expensesStatus : expensesStatus // ignore: cast_nullable_to_non_nullable
as Status,expenses: null == expenses ? _self._expenses : expenses // ignore: cast_nullable_to_non_nullable
as List<PetExpense>,
  ));
}


}

// dart format on
