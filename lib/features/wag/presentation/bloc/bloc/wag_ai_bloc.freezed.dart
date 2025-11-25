// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wag_ai_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WagAiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialization value) initialization,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialization value)? initialization,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialization value)? initialization,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WagAiEventCopyWith<$Res> {
  factory $WagAiEventCopyWith(
    WagAiEvent value,
    $Res Function(WagAiEvent) then,
  ) = _$WagAiEventCopyWithImpl<$Res, WagAiEvent>;
}

/// @nodoc
class _$WagAiEventCopyWithImpl<$Res, $Val extends WagAiEvent>
    implements $WagAiEventCopyWith<$Res> {
  _$WagAiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializationImplCopyWith<$Res> {
  factory _$$InitializationImplCopyWith(
    _$InitializationImpl value,
    $Res Function(_$InitializationImpl) then,
  ) = __$$InitializationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializationImplCopyWithImpl<$Res>
    extends _$WagAiEventCopyWithImpl<$Res, _$InitializationImpl>
    implements _$$InitializationImplCopyWith<$Res> {
  __$$InitializationImplCopyWithImpl(
    _$InitializationImpl _value,
    $Res Function(_$InitializationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializationImpl implements _Initialization {
  const _$InitializationImpl();

  @override
  String toString() {
    return 'WagAiEvent.initialization()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
  }) {
    return initialization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
  }) {
    return initialization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialization value) initialization,
  }) {
    return initialization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialization value)? initialization,
  }) {
    return initialization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialization value)? initialization,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization(this);
    }
    return orElse();
  }
}

abstract class _Initialization implements WagAiEvent {
  const factory _Initialization() = _$InitializationImpl;
}

/// @nodoc
mixin _$WagAiState {
  Status get initStatus => throw _privateConstructorUsedError;

  /// Create a copy of WagAiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WagAiStateCopyWith<WagAiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WagAiStateCopyWith<$Res> {
  factory $WagAiStateCopyWith(
    WagAiState value,
    $Res Function(WagAiState) then,
  ) = _$WagAiStateCopyWithImpl<$Res, WagAiState>;
  @useResult
  $Res call({Status initStatus});
}

/// @nodoc
class _$WagAiStateCopyWithImpl<$Res, $Val extends WagAiState>
    implements $WagAiStateCopyWith<$Res> {
  _$WagAiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WagAiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? initStatus = null}) {
    return _then(
      _value.copyWith(
            initStatus:
                null == initStatus
                    ? _value.initStatus
                    : initStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WagAiStateImplCopyWith<$Res>
    implements $WagAiStateCopyWith<$Res> {
  factory _$$WagAiStateImplCopyWith(
    _$WagAiStateImpl value,
    $Res Function(_$WagAiStateImpl) then,
  ) = __$$WagAiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status initStatus});
}

/// @nodoc
class __$$WagAiStateImplCopyWithImpl<$Res>
    extends _$WagAiStateCopyWithImpl<$Res, _$WagAiStateImpl>
    implements _$$WagAiStateImplCopyWith<$Res> {
  __$$WagAiStateImplCopyWithImpl(
    _$WagAiStateImpl _value,
    $Res Function(_$WagAiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WagAiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? initStatus = null}) {
    return _then(
      _$WagAiStateImpl(
        initStatus:
            null == initStatus
                ? _value.initStatus
                : initStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
      ),
    );
  }
}

/// @nodoc

class _$WagAiStateImpl implements _WagAiState {
  _$WagAiStateImpl({this.initStatus = Status.init});

  @override
  @JsonKey()
  final Status initStatus;

  @override
  String toString() {
    return 'WagAiState(initStatus: $initStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WagAiStateImpl &&
            (identical(other.initStatus, initStatus) ||
                other.initStatus == initStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initStatus);

  /// Create a copy of WagAiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WagAiStateImplCopyWith<_$WagAiStateImpl> get copyWith =>
      __$$WagAiStateImplCopyWithImpl<_$WagAiStateImpl>(this, _$identity);
}

abstract class _WagAiState implements WagAiState {
  factory _WagAiState({final Status initStatus}) = _$WagAiStateImpl;

  @override
  Status get initStatus;

  /// Create a copy of WagAiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WagAiStateImplCopyWith<_$WagAiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
