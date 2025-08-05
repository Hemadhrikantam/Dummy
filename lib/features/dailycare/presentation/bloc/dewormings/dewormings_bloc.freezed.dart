// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dewormings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DewormingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime? date) dewormings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? dewormings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? dewormings,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Dewormings value) dewormings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Dewormings value)? dewormings,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Dewormings value)? dewormings,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DewormingsEventCopyWith<$Res> {
  factory $DewormingsEventCopyWith(
    DewormingsEvent value,
    $Res Function(DewormingsEvent) then,
  ) = _$DewormingsEventCopyWithImpl<$Res, DewormingsEvent>;
}

/// @nodoc
class _$DewormingsEventCopyWithImpl<$Res, $Val extends DewormingsEvent>
    implements $DewormingsEventCopyWith<$Res> {
  _$DewormingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DewormingsEvent
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
    extends _$DewormingsEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of DewormingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'DewormingsEvent.init()';
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
    required TResult Function(DateTime? date) dewormings,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? dewormings,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? dewormings,
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
    required TResult Function(_Dewormings value) dewormings,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Dewormings value)? dewormings,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Dewormings value)? dewormings,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements DewormingsEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$DewormingsImplCopyWith<$Res> {
  factory _$$DewormingsImplCopyWith(
    _$DewormingsImpl value,
    $Res Function(_$DewormingsImpl) then,
  ) = __$$DewormingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? date});
}

/// @nodoc
class __$$DewormingsImplCopyWithImpl<$Res>
    extends _$DewormingsEventCopyWithImpl<$Res, _$DewormingsImpl>
    implements _$$DewormingsImplCopyWith<$Res> {
  __$$DewormingsImplCopyWithImpl(
    _$DewormingsImpl _value,
    $Res Function(_$DewormingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DewormingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = freezed}) {
    return _then(
      _$DewormingsImpl(
        freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$DewormingsImpl implements _Dewormings {
  const _$DewormingsImpl(this.date);

  @override
  final DateTime? date;

  @override
  String toString() {
    return 'DewormingsEvent.dewormings(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DewormingsImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of DewormingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DewormingsImplCopyWith<_$DewormingsImpl> get copyWith =>
      __$$DewormingsImplCopyWithImpl<_$DewormingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime? date) dewormings,
  }) {
    return dewormings(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? dewormings,
  }) {
    return dewormings?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? dewormings,
    required TResult orElse(),
  }) {
    if (dewormings != null) {
      return dewormings(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Dewormings value) dewormings,
  }) {
    return dewormings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Dewormings value)? dewormings,
  }) {
    return dewormings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Dewormings value)? dewormings,
    required TResult orElse(),
  }) {
    if (dewormings != null) {
      return dewormings(this);
    }
    return orElse();
  }
}

abstract class _Dewormings implements DewormingsEvent {
  const factory _Dewormings(final DateTime? date) = _$DewormingsImpl;

  DateTime? get date;

  /// Create a copy of DewormingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DewormingsImplCopyWith<_$DewormingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DewormingsState {
  Status get dewormingsStatus => throw _privateConstructorUsedError;
  List<PetDeworming> get dewormings => throw _privateConstructorUsedError;

  /// Create a copy of DewormingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DewormingsStateCopyWith<DewormingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DewormingsStateCopyWith<$Res> {
  factory $DewormingsStateCopyWith(
    DewormingsState value,
    $Res Function(DewormingsState) then,
  ) = _$DewormingsStateCopyWithImpl<$Res, DewormingsState>;
  @useResult
  $Res call({Status dewormingsStatus, List<PetDeworming> dewormings});
}

/// @nodoc
class _$DewormingsStateCopyWithImpl<$Res, $Val extends DewormingsState>
    implements $DewormingsStateCopyWith<$Res> {
  _$DewormingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DewormingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? dewormingsStatus = null, Object? dewormings = null}) {
    return _then(
      _value.copyWith(
            dewormingsStatus:
                null == dewormingsStatus
                    ? _value.dewormingsStatus
                    : dewormingsStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            dewormings:
                null == dewormings
                    ? _value.dewormings
                    : dewormings // ignore: cast_nullable_to_non_nullable
                        as List<PetDeworming>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DewormingsStateImplCopyWith<$Res>
    implements $DewormingsStateCopyWith<$Res> {
  factory _$$DewormingsStateImplCopyWith(
    _$DewormingsStateImpl value,
    $Res Function(_$DewormingsStateImpl) then,
  ) = __$$DewormingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status dewormingsStatus, List<PetDeworming> dewormings});
}

/// @nodoc
class __$$DewormingsStateImplCopyWithImpl<$Res>
    extends _$DewormingsStateCopyWithImpl<$Res, _$DewormingsStateImpl>
    implements _$$DewormingsStateImplCopyWith<$Res> {
  __$$DewormingsStateImplCopyWithImpl(
    _$DewormingsStateImpl _value,
    $Res Function(_$DewormingsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DewormingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? dewormingsStatus = null, Object? dewormings = null}) {
    return _then(
      _$DewormingsStateImpl(
        dewormingsStatus:
            null == dewormingsStatus
                ? _value.dewormingsStatus
                : dewormingsStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        dewormings:
            null == dewormings
                ? _value._dewormings
                : dewormings // ignore: cast_nullable_to_non_nullable
                    as List<PetDeworming>,
      ),
    );
  }
}

/// @nodoc

class _$DewormingsStateImpl implements _DewormingsState {
  const _$DewormingsStateImpl({
    this.dewormingsStatus = Status.init,
    final List<PetDeworming> dewormings = const [],
  }) : _dewormings = dewormings;

  @override
  @JsonKey()
  final Status dewormingsStatus;
  final List<PetDeworming> _dewormings;
  @override
  @JsonKey()
  List<PetDeworming> get dewormings {
    if (_dewormings is EqualUnmodifiableListView) return _dewormings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dewormings);
  }

  @override
  String toString() {
    return 'DewormingsState(dewormingsStatus: $dewormingsStatus, dewormings: $dewormings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DewormingsStateImpl &&
            (identical(other.dewormingsStatus, dewormingsStatus) ||
                other.dewormingsStatus == dewormingsStatus) &&
            const DeepCollectionEquality().equals(
              other._dewormings,
              _dewormings,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    dewormingsStatus,
    const DeepCollectionEquality().hash(_dewormings),
  );

  /// Create a copy of DewormingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DewormingsStateImplCopyWith<_$DewormingsStateImpl> get copyWith =>
      __$$DewormingsStateImplCopyWithImpl<_$DewormingsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DewormingsState implements DewormingsState {
  const factory _DewormingsState({
    final Status dewormingsStatus,
    final List<PetDeworming> dewormings,
  }) = _$DewormingsStateImpl;

  @override
  Status get dewormingsStatus;
  @override
  List<PetDeworming> get dewormings;

  /// Create a copy of DewormingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DewormingsStateImplCopyWith<_$DewormingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
