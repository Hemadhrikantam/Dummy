// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ExpensesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime? date) expenses,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? expenses,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? expenses,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Expenses value) expenses,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Expenses value)? expenses,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Expenses value)? expenses,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesEventCopyWith<$Res> {
  factory $ExpensesEventCopyWith(
    ExpensesEvent value,
    $Res Function(ExpensesEvent) then,
  ) = _$ExpensesEventCopyWithImpl<$Res, ExpensesEvent>;
}

/// @nodoc
class _$ExpensesEventCopyWithImpl<$Res, $Val extends ExpensesEvent>
    implements $ExpensesEventCopyWith<$Res> {
  _$ExpensesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpensesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
    _$InitImpl value,
    $Res Function(_$InitImpl) then,
  ) = __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$ExpensesEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of ExpensesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'ExpensesEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime? date) expenses,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? expenses,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? expenses,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Expenses value) expenses,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Expenses value)? expenses,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Expenses value)? expenses,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ExpensesEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$ExpensesImplCopyWith<$Res> {
  factory _$$ExpensesImplCopyWith(
    _$ExpensesImpl value,
    $Res Function(_$ExpensesImpl) then,
  ) = __$$ExpensesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? date});
}

/// @nodoc
class __$$ExpensesImplCopyWithImpl<$Res>
    extends _$ExpensesEventCopyWithImpl<$Res, _$ExpensesImpl>
    implements _$$ExpensesImplCopyWith<$Res> {
  __$$ExpensesImplCopyWithImpl(
    _$ExpensesImpl _value,
    $Res Function(_$ExpensesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExpensesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = freezed}) {
    return _then(
      _$ExpensesImpl(
        freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$ExpensesImpl implements _Expenses {
  const _$ExpensesImpl(this.date);

  @override
  final DateTime? date;

  @override
  String toString() {
    return 'ExpensesEvent.expenses(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpensesImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of ExpensesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpensesImplCopyWith<_$ExpensesImpl> get copyWith =>
      __$$ExpensesImplCopyWithImpl<_$ExpensesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime? date) expenses,
  }) {
    return expenses(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? expenses,
  }) {
    return expenses?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? expenses,
    required TResult orElse(),
  }) {
    if (expenses != null) {
      return expenses(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Expenses value) expenses,
  }) {
    return expenses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Expenses value)? expenses,
  }) {
    return expenses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Expenses value)? expenses,
    required TResult orElse(),
  }) {
    if (expenses != null) {
      return expenses(this);
    }
    return orElse();
  }
}

abstract class _Expenses implements ExpensesEvent {
  const factory _Expenses(final DateTime? date) = _$ExpensesImpl;

  DateTime? get date;

  /// Create a copy of ExpensesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpensesImplCopyWith<_$ExpensesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpensesState {
  Status get expensesStatus => throw _privateConstructorUsedError;
  List<PetExpense> get expenses => throw _privateConstructorUsedError;

  /// Create a copy of ExpensesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpensesStateCopyWith<ExpensesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesStateCopyWith<$Res> {
  factory $ExpensesStateCopyWith(
    ExpensesState value,
    $Res Function(ExpensesState) then,
  ) = _$ExpensesStateCopyWithImpl<$Res, ExpensesState>;
  @useResult
  $Res call({Status expensesStatus, List<PetExpense> expenses});
}

/// @nodoc
class _$ExpensesStateCopyWithImpl<$Res, $Val extends ExpensesState>
    implements $ExpensesStateCopyWith<$Res> {
  _$ExpensesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpensesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? expensesStatus = null, Object? expenses = null}) {
    return _then(
      _value.copyWith(
            expensesStatus:
                null == expensesStatus
                    ? _value.expensesStatus
                    : expensesStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            expenses:
                null == expenses
                    ? _value.expenses
                    : expenses // ignore: cast_nullable_to_non_nullable
                        as List<PetExpense>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExpensesStateImplCopyWith<$Res>
    implements $ExpensesStateCopyWith<$Res> {
  factory _$$ExpensesStateImplCopyWith(
    _$ExpensesStateImpl value,
    $Res Function(_$ExpensesStateImpl) then,
  ) = __$$ExpensesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status expensesStatus, List<PetExpense> expenses});
}

/// @nodoc
class __$$ExpensesStateImplCopyWithImpl<$Res>
    extends _$ExpensesStateCopyWithImpl<$Res, _$ExpensesStateImpl>
    implements _$$ExpensesStateImplCopyWith<$Res> {
  __$$ExpensesStateImplCopyWithImpl(
    _$ExpensesStateImpl _value,
    $Res Function(_$ExpensesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExpensesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? expensesStatus = null, Object? expenses = null}) {
    return _then(
      _$ExpensesStateImpl(
        expensesStatus:
            null == expensesStatus
                ? _value.expensesStatus
                : expensesStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        expenses:
            null == expenses
                ? _value._expenses
                : expenses // ignore: cast_nullable_to_non_nullable
                    as List<PetExpense>,
      ),
    );
  }
}

/// @nodoc

class _$ExpensesStateImpl implements _ExpensesState {
  const _$ExpensesStateImpl({
    this.expensesStatus = Status.init,
    final List<PetExpense> expenses = const [],
  }) : _expenses = expenses;

  @override
  @JsonKey()
  final Status expensesStatus;
  final List<PetExpense> _expenses;
  @override
  @JsonKey()
  List<PetExpense> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  String toString() {
    return 'ExpensesState(expensesStatus: $expensesStatus, expenses: $expenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpensesStateImpl &&
            (identical(other.expensesStatus, expensesStatus) ||
                other.expensesStatus == expensesStatus) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    expensesStatus,
    const DeepCollectionEquality().hash(_expenses),
  );

  /// Create a copy of ExpensesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpensesStateImplCopyWith<_$ExpensesStateImpl> get copyWith =>
      __$$ExpensesStateImplCopyWithImpl<_$ExpensesStateImpl>(this, _$identity);
}

abstract class _ExpensesState implements ExpensesState {
  const factory _ExpensesState({
    final Status expensesStatus,
    final List<PetExpense> expenses,
  }) = _$ExpensesStateImpl;

  @override
  Status get expensesStatus;
  @override
  List<PetExpense> get expenses;

  /// Create a copy of ExpensesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpensesStateImplCopyWith<_$ExpensesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
