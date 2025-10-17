// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ngo_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NgoHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({required TResult Function() init}) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({TResult? Function()? init}) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
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
}

/// @nodoc
abstract class $NgoHomeEventCopyWith<$Res> {
  factory $NgoHomeEventCopyWith(
    NgoHomeEvent value,
    $Res Function(NgoHomeEvent) then,
  ) = _$NgoHomeEventCopyWithImpl<$Res, NgoHomeEvent>;
}

/// @nodoc
class _$NgoHomeEventCopyWithImpl<$Res, $Val extends NgoHomeEvent>
    implements $NgoHomeEventCopyWith<$Res> {
  _$NgoHomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NgoHomeEvent
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
    extends _$NgoHomeEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of NgoHomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'NgoHomeEvent.init()';
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
  TResult when<TResult extends Object?>({required TResult Function() init}) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({TResult? Function()? init}) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
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

abstract class _Init implements NgoHomeEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
mixin _$NgoHomeState {
  Status get initStatus => throw _privateConstructorUsedError;
  NgoProfile? get profile => throw _privateConstructorUsedError;
  CountListing? get count => throw _privateConstructorUsedError;
  List<Listing> get listing => throw _privateConstructorUsedError;

  /// Create a copy of NgoHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NgoHomeStateCopyWith<NgoHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NgoHomeStateCopyWith<$Res> {
  factory $NgoHomeStateCopyWith(
    NgoHomeState value,
    $Res Function(NgoHomeState) then,
  ) = _$NgoHomeStateCopyWithImpl<$Res, NgoHomeState>;
  @useResult
  $Res call({
    Status initStatus,
    NgoProfile? profile,
    CountListing? count,
    List<Listing> listing,
  });
}

/// @nodoc
class _$NgoHomeStateCopyWithImpl<$Res, $Val extends NgoHomeState>
    implements $NgoHomeStateCopyWith<$Res> {
  _$NgoHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NgoHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? profile = freezed,
    Object? count = freezed,
    Object? listing = null,
  }) {
    return _then(
      _value.copyWith(
            initStatus:
                null == initStatus
                    ? _value.initStatus
                    : initStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            profile:
                freezed == profile
                    ? _value.profile
                    : profile // ignore: cast_nullable_to_non_nullable
                        as NgoProfile?,
            count:
                freezed == count
                    ? _value.count
                    : count // ignore: cast_nullable_to_non_nullable
                        as CountListing?,
            listing:
                null == listing
                    ? _value.listing
                    : listing // ignore: cast_nullable_to_non_nullable
                        as List<Listing>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NgoHomeStateImplCopyWith<$Res>
    implements $NgoHomeStateCopyWith<$Res> {
  factory _$$NgoHomeStateImplCopyWith(
    _$NgoHomeStateImpl value,
    $Res Function(_$NgoHomeStateImpl) then,
  ) = __$$NgoHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status initStatus,
    NgoProfile? profile,
    CountListing? count,
    List<Listing> listing,
  });
}

/// @nodoc
class __$$NgoHomeStateImplCopyWithImpl<$Res>
    extends _$NgoHomeStateCopyWithImpl<$Res, _$NgoHomeStateImpl>
    implements _$$NgoHomeStateImplCopyWith<$Res> {
  __$$NgoHomeStateImplCopyWithImpl(
    _$NgoHomeStateImpl _value,
    $Res Function(_$NgoHomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NgoHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? profile = freezed,
    Object? count = freezed,
    Object? listing = null,
  }) {
    return _then(
      _$NgoHomeStateImpl(
        initStatus:
            null == initStatus
                ? _value.initStatus
                : initStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        profile:
            freezed == profile
                ? _value.profile
                : profile // ignore: cast_nullable_to_non_nullable
                    as NgoProfile?,
        count:
            freezed == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as CountListing?,
        listing:
            null == listing
                ? _value._listing
                : listing // ignore: cast_nullable_to_non_nullable
                    as List<Listing>,
      ),
    );
  }
}

/// @nodoc

class _$NgoHomeStateImpl implements _NgoHomeState {
  const _$NgoHomeStateImpl({
    this.initStatus = Status.init,
    this.profile = null,
    this.count = null,
    final List<Listing> listing = const [],
  }) : _listing = listing;

  @override
  @JsonKey()
  final Status initStatus;
  @override
  @JsonKey()
  final NgoProfile? profile;
  @override
  @JsonKey()
  final CountListing? count;
  final List<Listing> _listing;
  @override
  @JsonKey()
  List<Listing> get listing {
    if (_listing is EqualUnmodifiableListView) return _listing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listing);
  }

  @override
  String toString() {
    return 'NgoHomeState(initStatus: $initStatus, profile: $profile, count: $count, listing: $listing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NgoHomeStateImpl &&
            (identical(other.initStatus, initStatus) ||
                other.initStatus == initStatus) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._listing, _listing));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    initStatus,
    profile,
    count,
    const DeepCollectionEquality().hash(_listing),
  );

  /// Create a copy of NgoHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NgoHomeStateImplCopyWith<_$NgoHomeStateImpl> get copyWith =>
      __$$NgoHomeStateImplCopyWithImpl<_$NgoHomeStateImpl>(this, _$identity);
}

abstract class _NgoHomeState implements NgoHomeState {
  const factory _NgoHomeState({
    final Status initStatus,
    final NgoProfile? profile,
    final CountListing? count,
    final List<Listing> listing,
  }) = _$NgoHomeStateImpl;

  @override
  Status get initStatus;
  @override
  NgoProfile? get profile;
  @override
  CountListing? get count;
  @override
  List<Listing> get listing;

  /// Create a copy of NgoHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NgoHomeStateImplCopyWith<_$NgoHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
