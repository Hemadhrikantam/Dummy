// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groomings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GroomingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime? date) groomings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? groomings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? groomings,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Groomings value) groomings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Groomings value)? groomings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Groomings value)? groomings,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroomingsEventCopyWith<$Res> {
  factory $GroomingsEventCopyWith(
    GroomingsEvent value,
    $Res Function(GroomingsEvent) then,
  ) = _$GroomingsEventCopyWithImpl<$Res, GroomingsEvent>;
}

/// @nodoc
class _$GroomingsEventCopyWithImpl<$Res, $Val extends GroomingsEvent>
    implements $GroomingsEventCopyWith<$Res> {
  _$GroomingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroomingsEvent
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
    extends _$GroomingsEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of GroomingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'GroomingsEvent.init()';
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
    required TResult Function(DateTime? date) groomings,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? groomings,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? groomings,
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
    required TResult Function(_Groomings value) groomings,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Groomings value)? groomings,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Groomings value)? groomings,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements GroomingsEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$GroomingsImplCopyWith<$Res> {
  factory _$$GroomingsImplCopyWith(
    _$GroomingsImpl value,
    $Res Function(_$GroomingsImpl) then,
  ) = __$$GroomingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? date});
}

/// @nodoc
class __$$GroomingsImplCopyWithImpl<$Res>
    extends _$GroomingsEventCopyWithImpl<$Res, _$GroomingsImpl>
    implements _$$GroomingsImplCopyWith<$Res> {
  __$$GroomingsImplCopyWithImpl(
    _$GroomingsImpl _value,
    $Res Function(_$GroomingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroomingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = freezed}) {
    return _then(
      _$GroomingsImpl(
        freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$GroomingsImpl implements _Groomings {
  const _$GroomingsImpl(this.date);

  @override
  final DateTime? date;

  @override
  String toString() {
    return 'GroomingsEvent.groomings(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroomingsImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of GroomingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroomingsImplCopyWith<_$GroomingsImpl> get copyWith =>
      __$$GroomingsImplCopyWithImpl<_$GroomingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime? date) groomings,
  }) {
    return groomings(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? groomings,
  }) {
    return groomings?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? groomings,
    required TResult orElse(),
  }) {
    if (groomings != null) {
      return groomings(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Groomings value) groomings,
  }) {
    return groomings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Groomings value)? groomings,
  }) {
    return groomings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Groomings value)? groomings,
    required TResult orElse(),
  }) {
    if (groomings != null) {
      return groomings(this);
    }
    return orElse();
  }
}

abstract class _Groomings implements GroomingsEvent {
  const factory _Groomings(final DateTime? date) = _$GroomingsImpl;

  DateTime? get date;

  /// Create a copy of GroomingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroomingsImplCopyWith<_$GroomingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroomingsState {
  Status get groomingsStatus => throw _privateConstructorUsedError;
  List<PetGrooming> get groomings => throw _privateConstructorUsedError;

  /// Create a copy of GroomingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroomingsStateCopyWith<GroomingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroomingsStateCopyWith<$Res> {
  factory $GroomingsStateCopyWith(
    GroomingsState value,
    $Res Function(GroomingsState) then,
  ) = _$GroomingsStateCopyWithImpl<$Res, GroomingsState>;
  @useResult
  $Res call({Status groomingsStatus, List<PetGrooming> groomings});
}

/// @nodoc
class _$GroomingsStateCopyWithImpl<$Res, $Val extends GroomingsState>
    implements $GroomingsStateCopyWith<$Res> {
  _$GroomingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroomingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? groomingsStatus = null, Object? groomings = null}) {
    return _then(
      _value.copyWith(
            groomingsStatus:
                null == groomingsStatus
                    ? _value.groomingsStatus
                    : groomingsStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            groomings:
                null == groomings
                    ? _value.groomings
                    : groomings // ignore: cast_nullable_to_non_nullable
                        as List<PetGrooming>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GroomingsStateImplCopyWith<$Res>
    implements $GroomingsStateCopyWith<$Res> {
  factory _$$GroomingsStateImplCopyWith(
    _$GroomingsStateImpl value,
    $Res Function(_$GroomingsStateImpl) then,
  ) = __$$GroomingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status groomingsStatus, List<PetGrooming> groomings});
}

/// @nodoc
class __$$GroomingsStateImplCopyWithImpl<$Res>
    extends _$GroomingsStateCopyWithImpl<$Res, _$GroomingsStateImpl>
    implements _$$GroomingsStateImplCopyWith<$Res> {
  __$$GroomingsStateImplCopyWithImpl(
    _$GroomingsStateImpl _value,
    $Res Function(_$GroomingsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroomingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? groomingsStatus = null, Object? groomings = null}) {
    return _then(
      _$GroomingsStateImpl(
        groomingsStatus:
            null == groomingsStatus
                ? _value.groomingsStatus
                : groomingsStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        groomings:
            null == groomings
                ? _value._groomings
                : groomings // ignore: cast_nullable_to_non_nullable
                    as List<PetGrooming>,
      ),
    );
  }
}

/// @nodoc

class _$GroomingsStateImpl implements _GroomingsState {
  const _$GroomingsStateImpl({
    this.groomingsStatus = Status.init,
    final List<PetGrooming> groomings = const [],
  }) : _groomings = groomings;

  @override
  @JsonKey()
  final Status groomingsStatus;
  final List<PetGrooming> _groomings;
  @override
  @JsonKey()
  List<PetGrooming> get groomings {
    if (_groomings is EqualUnmodifiableListView) return _groomings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groomings);
  }

  @override
  String toString() {
    return 'GroomingsState(groomingsStatus: $groomingsStatus, groomings: $groomings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroomingsStateImpl &&
            (identical(other.groomingsStatus, groomingsStatus) ||
                other.groomingsStatus == groomingsStatus) &&
            const DeepCollectionEquality().equals(
              other._groomings,
              _groomings,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    groomingsStatus,
    const DeepCollectionEquality().hash(_groomings),
  );

  /// Create a copy of GroomingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroomingsStateImplCopyWith<_$GroomingsStateImpl> get copyWith =>
      __$$GroomingsStateImplCopyWithImpl<_$GroomingsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _GroomingsState implements GroomingsState {
  const factory _GroomingsState({
    final Status groomingsStatus,
    final List<PetGrooming> groomings,
  }) = _$GroomingsStateImpl;

  @override
  Status get groomingsStatus;
  @override
  List<PetGrooming> get groomings;

  /// Create a copy of GroomingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroomingsStateImplCopyWith<_$GroomingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
