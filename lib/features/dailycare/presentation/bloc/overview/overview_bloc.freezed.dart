// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String petId) overview,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String petId)? overview,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String petId)? overview,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Overview value) overview,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Overview value)? overview,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Overview value)? overview,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewEventCopyWith<$Res> {
  factory $OverviewEventCopyWith(
    OverviewEvent value,
    $Res Function(OverviewEvent) then,
  ) = _$OverviewEventCopyWithImpl<$Res, OverviewEvent>;
}

/// @nodoc
class _$OverviewEventCopyWithImpl<$Res, $Val extends OverviewEvent>
    implements $OverviewEventCopyWith<$Res> {
  _$OverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$OverviewEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'OverviewEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String petId) overview,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String petId)? overview,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String petId)? overview,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Overview value) overview,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Overview value)? overview,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Overview value)? overview,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OverviewEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OverviewImplCopyWith<$Res> {
  factory _$$OverviewImplCopyWith(
    _$OverviewImpl value,
    $Res Function(_$OverviewImpl) then,
  ) = __$$OverviewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String petId});
}

/// @nodoc
class __$$OverviewImplCopyWithImpl<$Res>
    extends _$OverviewEventCopyWithImpl<$Res, _$OverviewImpl>
    implements _$$OverviewImplCopyWith<$Res> {
  __$$OverviewImplCopyWithImpl(
    _$OverviewImpl _value,
    $Res Function(_$OverviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? petId = null}) {
    return _then(
      _$OverviewImpl(
        null == petId
            ? _value.petId
            : petId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$OverviewImpl implements _Overview {
  const _$OverviewImpl(this.petId);

  @override
  final String petId;

  @override
  String toString() {
    return 'OverviewEvent.overview(petId: $petId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewImpl &&
            (identical(other.petId, petId) || other.petId == petId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, petId);

  /// Create a copy of OverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewImplCopyWith<_$OverviewImpl> get copyWith =>
      __$$OverviewImplCopyWithImpl<_$OverviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String petId) overview,
  }) {
    return overview(petId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String petId)? overview,
  }) {
    return overview?.call(petId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String petId)? overview,
    required TResult orElse(),
  }) {
    if (overview != null) {
      return overview(petId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Overview value) overview,
  }) {
    return overview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Overview value)? overview,
  }) {
    return overview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Overview value)? overview,
    required TResult orElse(),
  }) {
    if (overview != null) {
      return overview(this);
    }
    return orElse();
  }
}

abstract class _Overview implements OverviewEvent {
  const factory _Overview(final String petId) = _$OverviewImpl;

  String get petId;

  /// Create a copy of OverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverviewImplCopyWith<_$OverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OverviewState {
  Status get initStatus => throw _privateConstructorUsedError;
  Overview? get overview => throw _privateConstructorUsedError;

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverviewStateCopyWith<OverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewStateCopyWith<$Res> {
  factory $OverviewStateCopyWith(
    OverviewState value,
    $Res Function(OverviewState) then,
  ) = _$OverviewStateCopyWithImpl<$Res, OverviewState>;
  @useResult
  $Res call({Status initStatus, Overview? overview});
}

/// @nodoc
class _$OverviewStateCopyWithImpl<$Res, $Val extends OverviewState>
    implements $OverviewStateCopyWith<$Res> {
  _$OverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? initStatus = null, Object? overview = freezed}) {
    return _then(
      _value.copyWith(
            initStatus:
                null == initStatus
                    ? _value.initStatus
                    : initStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            overview:
                freezed == overview
                    ? _value.overview
                    : overview // ignore: cast_nullable_to_non_nullable
                        as Overview?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OverviewStateImplCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$$OverviewStateImplCopyWith(
    _$OverviewStateImpl value,
    $Res Function(_$OverviewStateImpl) then,
  ) = __$$OverviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status initStatus, Overview? overview});
}

/// @nodoc
class __$$OverviewStateImplCopyWithImpl<$Res>
    extends _$OverviewStateCopyWithImpl<$Res, _$OverviewStateImpl>
    implements _$$OverviewStateImplCopyWith<$Res> {
  __$$OverviewStateImplCopyWithImpl(
    _$OverviewStateImpl _value,
    $Res Function(_$OverviewStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? initStatus = null, Object? overview = freezed}) {
    return _then(
      _$OverviewStateImpl(
        initStatus:
            null == initStatus
                ? _value.initStatus
                : initStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        overview:
            freezed == overview
                ? _value.overview
                : overview // ignore: cast_nullable_to_non_nullable
                    as Overview?,
      ),
    );
  }
}

/// @nodoc

class _$OverviewStateImpl implements _OverviewState {
  const _$OverviewStateImpl({
    this.initStatus = Status.init,
    this.overview = null,
  });

  @override
  @JsonKey()
  final Status initStatus;
  @override
  @JsonKey()
  final Overview? overview;

  @override
  String toString() {
    return 'OverviewState(initStatus: $initStatus, overview: $overview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewStateImpl &&
            (identical(other.initStatus, initStatus) ||
                other.initStatus == initStatus) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initStatus, overview);

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewStateImplCopyWith<_$OverviewStateImpl> get copyWith =>
      __$$OverviewStateImplCopyWithImpl<_$OverviewStateImpl>(this, _$identity);
}

abstract class _OverviewState implements OverviewState {
  const factory _OverviewState({
    final Status initStatus,
    final Overview? overview,
  }) = _$OverviewStateImpl;

  @override
  Status get initStatus;
  @override
  Overview? get overview;

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverviewStateImplCopyWith<_$OverviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
