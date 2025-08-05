// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'walks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WalksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime? date) walks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? walks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? walks,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Walks value) walks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Walks value)? walks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Walks value)? walks,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalksEventCopyWith<$Res> {
  factory $WalksEventCopyWith(
    WalksEvent value,
    $Res Function(WalksEvent) then,
  ) = _$WalksEventCopyWithImpl<$Res, WalksEvent>;
}

/// @nodoc
class _$WalksEventCopyWithImpl<$Res, $Val extends WalksEvent>
    implements $WalksEventCopyWith<$Res> {
  _$WalksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalksEvent
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
    extends _$WalksEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of WalksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'WalksEvent.init()';
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
    required TResult Function(DateTime? date) walks,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? walks,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? walks,
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
    required TResult Function(_Walks value) walks,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Walks value)? walks,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Walks value)? walks,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements WalksEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$WalksImplCopyWith<$Res> {
  factory _$$WalksImplCopyWith(
    _$WalksImpl value,
    $Res Function(_$WalksImpl) then,
  ) = __$$WalksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? date});
}

/// @nodoc
class __$$WalksImplCopyWithImpl<$Res>
    extends _$WalksEventCopyWithImpl<$Res, _$WalksImpl>
    implements _$$WalksImplCopyWith<$Res> {
  __$$WalksImplCopyWithImpl(
    _$WalksImpl _value,
    $Res Function(_$WalksImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = freezed}) {
    return _then(
      _$WalksImpl(
        freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$WalksImpl implements _Walks {
  const _$WalksImpl(this.date);

  @override
  final DateTime? date;

  @override
  String toString() {
    return 'WalksEvent.walks(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalksImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of WalksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalksImplCopyWith<_$WalksImpl> get copyWith =>
      __$$WalksImplCopyWithImpl<_$WalksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(DateTime? date) walks,
  }) {
    return walks(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(DateTime? date)? walks,
  }) {
    return walks?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(DateTime? date)? walks,
    required TResult orElse(),
  }) {
    if (walks != null) {
      return walks(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Walks value) walks,
  }) {
    return walks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Walks value)? walks,
  }) {
    return walks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Walks value)? walks,
    required TResult orElse(),
  }) {
    if (walks != null) {
      return walks(this);
    }
    return orElse();
  }
}

abstract class _Walks implements WalksEvent {
  const factory _Walks(final DateTime? date) = _$WalksImpl;

  DateTime? get date;

  /// Create a copy of WalksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalksImplCopyWith<_$WalksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalksState {
  Status get walksStatus => throw _privateConstructorUsedError;
  List<PetWalk> get walks => throw _privateConstructorUsedError;

  /// Create a copy of WalksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalksStateCopyWith<WalksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalksStateCopyWith<$Res> {
  factory $WalksStateCopyWith(
    WalksState value,
    $Res Function(WalksState) then,
  ) = _$WalksStateCopyWithImpl<$Res, WalksState>;
  @useResult
  $Res call({Status walksStatus, List<PetWalk> walks});
}

/// @nodoc
class _$WalksStateCopyWithImpl<$Res, $Val extends WalksState>
    implements $WalksStateCopyWith<$Res> {
  _$WalksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? walksStatus = null, Object? walks = null}) {
    return _then(
      _value.copyWith(
            walksStatus:
                null == walksStatus
                    ? _value.walksStatus
                    : walksStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            walks:
                null == walks
                    ? _value.walks
                    : walks // ignore: cast_nullable_to_non_nullable
                        as List<PetWalk>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WalksStateImplCopyWith<$Res>
    implements $WalksStateCopyWith<$Res> {
  factory _$$WalksStateImplCopyWith(
    _$WalksStateImpl value,
    $Res Function(_$WalksStateImpl) then,
  ) = __$$WalksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status walksStatus, List<PetWalk> walks});
}

/// @nodoc
class __$$WalksStateImplCopyWithImpl<$Res>
    extends _$WalksStateCopyWithImpl<$Res, _$WalksStateImpl>
    implements _$$WalksStateImplCopyWith<$Res> {
  __$$WalksStateImplCopyWithImpl(
    _$WalksStateImpl _value,
    $Res Function(_$WalksStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? walksStatus = null, Object? walks = null}) {
    return _then(
      _$WalksStateImpl(
        walksStatus:
            null == walksStatus
                ? _value.walksStatus
                : walksStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        walks:
            null == walks
                ? _value._walks
                : walks // ignore: cast_nullable_to_non_nullable
                    as List<PetWalk>,
      ),
    );
  }
}

/// @nodoc

class _$WalksStateImpl implements _WalksState {
  const _$WalksStateImpl({
    this.walksStatus = Status.init,
    final List<PetWalk> walks = const [],
  }) : _walks = walks;

  @override
  @JsonKey()
  final Status walksStatus;
  final List<PetWalk> _walks;
  @override
  @JsonKey()
  List<PetWalk> get walks {
    if (_walks is EqualUnmodifiableListView) return _walks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_walks);
  }

  @override
  String toString() {
    return 'WalksState(walksStatus: $walksStatus, walks: $walks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalksStateImpl &&
            (identical(other.walksStatus, walksStatus) ||
                other.walksStatus == walksStatus) &&
            const DeepCollectionEquality().equals(other._walks, _walks));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    walksStatus,
    const DeepCollectionEquality().hash(_walks),
  );

  /// Create a copy of WalksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalksStateImplCopyWith<_$WalksStateImpl> get copyWith =>
      __$$WalksStateImplCopyWithImpl<_$WalksStateImpl>(this, _$identity);
}

abstract class _WalksState implements WalksState {
  const factory _WalksState({
    final Status walksStatus,
    final List<PetWalk> walks,
  }) = _$WalksStateImpl;

  @override
  Status get walksStatus;
  @override
  List<PetWalk> get walks;

  /// Create a copy of WalksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalksStateImplCopyWith<_$WalksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
