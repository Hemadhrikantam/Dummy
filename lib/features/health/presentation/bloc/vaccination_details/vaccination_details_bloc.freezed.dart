// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccination_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$VaccinationDetailsEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) init,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? init,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? init,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of VaccinationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VaccinationDetailsEventCopyWith<VaccinationDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccinationDetailsEventCopyWith<$Res> {
  factory $VaccinationDetailsEventCopyWith(
    VaccinationDetailsEvent value,
    $Res Function(VaccinationDetailsEvent) then,
  ) = _$VaccinationDetailsEventCopyWithImpl<$Res, VaccinationDetailsEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$VaccinationDetailsEventCopyWithImpl<
  $Res,
  $Val extends VaccinationDetailsEvent
>
    implements $VaccinationDetailsEventCopyWith<$Res> {
  _$VaccinationDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VaccinationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res>
    implements $VaccinationDetailsEventCopyWith<$Res> {
  factory _$$InitImplCopyWith(
    _$InitImpl value,
    $Res Function(_$InitImpl) then,
  ) = __$$InitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$VaccinationDetailsEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of VaccinationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$InitImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'VaccinationDetailsEvent.init(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of VaccinationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) init,
  }) {
    return init(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? init,
  }) {
    return init?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements VaccinationDetailsEvent {
  const factory _Init(final int id) = _$InitImpl;

  @override
  int get id;

  /// Create a copy of VaccinationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VaccinationDetailsState {
  Status get initStatus => throw _privateConstructorUsedError;
  PetVaccination? get vaccination => throw _privateConstructorUsedError;

  /// Create a copy of VaccinationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VaccinationDetailsStateCopyWith<VaccinationDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccinationDetailsStateCopyWith<$Res> {
  factory $VaccinationDetailsStateCopyWith(
    VaccinationDetailsState value,
    $Res Function(VaccinationDetailsState) then,
  ) = _$VaccinationDetailsStateCopyWithImpl<$Res, VaccinationDetailsState>;
  @useResult
  $Res call({Status initStatus, PetVaccination? vaccination});
}

/// @nodoc
class _$VaccinationDetailsStateCopyWithImpl<
  $Res,
  $Val extends VaccinationDetailsState
>
    implements $VaccinationDetailsStateCopyWith<$Res> {
  _$VaccinationDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VaccinationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? initStatus = null, Object? vaccination = freezed}) {
    return _then(
      _value.copyWith(
            initStatus:
                null == initStatus
                    ? _value.initStatus
                    : initStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            vaccination:
                freezed == vaccination
                    ? _value.vaccination
                    : vaccination // ignore: cast_nullable_to_non_nullable
                        as PetVaccination?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VaccinationDetailsStateImplCopyWith<$Res>
    implements $VaccinationDetailsStateCopyWith<$Res> {
  factory _$$VaccinationDetailsStateImplCopyWith(
    _$VaccinationDetailsStateImpl value,
    $Res Function(_$VaccinationDetailsStateImpl) then,
  ) = __$$VaccinationDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status initStatus, PetVaccination? vaccination});
}

/// @nodoc
class __$$VaccinationDetailsStateImplCopyWithImpl<$Res>
    extends
        _$VaccinationDetailsStateCopyWithImpl<
          $Res,
          _$VaccinationDetailsStateImpl
        >
    implements _$$VaccinationDetailsStateImplCopyWith<$Res> {
  __$$VaccinationDetailsStateImplCopyWithImpl(
    _$VaccinationDetailsStateImpl _value,
    $Res Function(_$VaccinationDetailsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VaccinationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? initStatus = null, Object? vaccination = freezed}) {
    return _then(
      _$VaccinationDetailsStateImpl(
        initStatus:
            null == initStatus
                ? _value.initStatus
                : initStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        vaccination:
            freezed == vaccination
                ? _value.vaccination
                : vaccination // ignore: cast_nullable_to_non_nullable
                    as PetVaccination?,
      ),
    );
  }
}

/// @nodoc

class _$VaccinationDetailsStateImpl implements _VaccinationDetailsState {
  const _$VaccinationDetailsStateImpl({
    this.initStatus = Status.init,
    this.vaccination = null,
  });

  @override
  @JsonKey()
  final Status initStatus;
  @override
  @JsonKey()
  final PetVaccination? vaccination;

  @override
  String toString() {
    return 'VaccinationDetailsState(initStatus: $initStatus, vaccination: $vaccination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaccinationDetailsStateImpl &&
            (identical(other.initStatus, initStatus) ||
                other.initStatus == initStatus) &&
            (identical(other.vaccination, vaccination) ||
                other.vaccination == vaccination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initStatus, vaccination);

  /// Create a copy of VaccinationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VaccinationDetailsStateImplCopyWith<_$VaccinationDetailsStateImpl>
  get copyWith => __$$VaccinationDetailsStateImplCopyWithImpl<
    _$VaccinationDetailsStateImpl
  >(this, _$identity);
}

abstract class _VaccinationDetailsState implements VaccinationDetailsState {
  const factory _VaccinationDetailsState({
    final Status initStatus,
    final PetVaccination? vaccination,
  }) = _$VaccinationDetailsStateImpl;

  @override
  Status get initStatus;
  @override
  PetVaccination? get vaccination;

  /// Create a copy of VaccinationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VaccinationDetailsStateImplCopyWith<_$VaccinationDetailsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
