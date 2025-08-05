// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meals_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MealsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime? date) meals,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? meals,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? meals,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Meals value) meals,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Meals value)? meals,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Meals value)? meals,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsEventCopyWith<$Res> {
  factory $MealsEventCopyWith(
    MealsEvent value,
    $Res Function(MealsEvent) then,
  ) = _$MealsEventCopyWithImpl<$Res, MealsEvent>;
}

/// @nodoc
class _$MealsEventCopyWithImpl<$Res, $Val extends MealsEvent>
    implements $MealsEventCopyWith<$Res> {
  _$MealsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealsEvent
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
    extends _$MealsEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of MealsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'MealsEvent.init()';
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
    required TResult Function(DateTime? date) meals,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? meals,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? meals,
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
    required TResult Function(_Meals value) meals,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Meals value)? meals,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Meals value)? meals,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements MealsEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$MealsImplCopyWith<$Res> {
  factory _$$MealsImplCopyWith(
    _$MealsImpl value,
    $Res Function(_$MealsImpl) then,
  ) = __$$MealsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? date});
}

/// @nodoc
class __$$MealsImplCopyWithImpl<$Res>
    extends _$MealsEventCopyWithImpl<$Res, _$MealsImpl>
    implements _$$MealsImplCopyWith<$Res> {
  __$$MealsImplCopyWithImpl(
    _$MealsImpl _value,
    $Res Function(_$MealsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MealsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = freezed}) {
    return _then(
      _$MealsImpl(
        freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$MealsImpl implements _Meals {
  const _$MealsImpl(this.date);

  @override
  final DateTime? date;

  @override
  String toString() {
    return 'MealsEvent.meals(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealsImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of MealsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealsImplCopyWith<_$MealsImpl> get copyWith =>
      __$$MealsImplCopyWithImpl<_$MealsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime? date) meals,
  }) {
    return meals(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? meals,
  }) {
    return meals?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? meals,
    required TResult orElse(),
  }) {
    if (meals != null) {
      return meals(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Meals value) meals,
  }) {
    return meals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Meals value)? meals,
  }) {
    return meals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Meals value)? meals,
    required TResult orElse(),
  }) {
    if (meals != null) {
      return meals(this);
    }
    return orElse();
  }
}

abstract class _Meals implements MealsEvent {
  const factory _Meals(final DateTime? date) = _$MealsImpl;

  DateTime? get date;

  /// Create a copy of MealsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealsImplCopyWith<_$MealsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MealsState {
  Status get mealsStatus => throw _privateConstructorUsedError;
  List<PetMeal> get meals => throw _privateConstructorUsedError;

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealsStateCopyWith<MealsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsStateCopyWith<$Res> {
  factory $MealsStateCopyWith(
    MealsState value,
    $Res Function(MealsState) then,
  ) = _$MealsStateCopyWithImpl<$Res, MealsState>;
  @useResult
  $Res call({Status mealsStatus, List<PetMeal> meals});
}

/// @nodoc
class _$MealsStateCopyWithImpl<$Res, $Val extends MealsState>
    implements $MealsStateCopyWith<$Res> {
  _$MealsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? mealsStatus = null, Object? meals = null}) {
    return _then(
      _value.copyWith(
            mealsStatus:
                null == mealsStatus
                    ? _value.mealsStatus
                    : mealsStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            meals:
                null == meals
                    ? _value.meals
                    : meals // ignore: cast_nullable_to_non_nullable
                        as List<PetMeal>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MealsStateImplCopyWith<$Res>
    implements $MealsStateCopyWith<$Res> {
  factory _$$MealsStateImplCopyWith(
    _$MealsStateImpl value,
    $Res Function(_$MealsStateImpl) then,
  ) = __$$MealsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status mealsStatus, List<PetMeal> meals});
}

/// @nodoc
class __$$MealsStateImplCopyWithImpl<$Res>
    extends _$MealsStateCopyWithImpl<$Res, _$MealsStateImpl>
    implements _$$MealsStateImplCopyWith<$Res> {
  __$$MealsStateImplCopyWithImpl(
    _$MealsStateImpl _value,
    $Res Function(_$MealsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? mealsStatus = null, Object? meals = null}) {
    return _then(
      _$MealsStateImpl(
        mealsStatus:
            null == mealsStatus
                ? _value.mealsStatus
                : mealsStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        meals:
            null == meals
                ? _value._meals
                : meals // ignore: cast_nullable_to_non_nullable
                    as List<PetMeal>,
      ),
    );
  }
}

/// @nodoc

class _$MealsStateImpl implements _MealsState {
  const _$MealsStateImpl({
    this.mealsStatus = Status.init,
    final List<PetMeal> meals = const [],
  }) : _meals = meals;

  @override
  @JsonKey()
  final Status mealsStatus;
  final List<PetMeal> _meals;
  @override
  @JsonKey()
  List<PetMeal> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString() {
    return 'MealsState(mealsStatus: $mealsStatus, meals: $meals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealsStateImpl &&
            (identical(other.mealsStatus, mealsStatus) ||
                other.mealsStatus == mealsStatus) &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    mealsStatus,
    const DeepCollectionEquality().hash(_meals),
  );

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealsStateImplCopyWith<_$MealsStateImpl> get copyWith =>
      __$$MealsStateImplCopyWithImpl<_$MealsStateImpl>(this, _$identity);
}

abstract class _MealsState implements MealsState {
  const factory _MealsState({
    final Status mealsStatus,
    final List<PetMeal> meals,
  }) = _$MealsStateImpl;

  @override
  Status get mealsStatus;
  @override
  List<PetMeal> get meals;

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealsStateImplCopyWith<_$MealsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
