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
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String id, String status) markStatus,
    required TResult Function(String id) deletePet,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id, String status)? markStatus,
    TResult? Function(String id)? deletePet,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id, String status)? markStatus,
    TResult Function(String id)? deletePet,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_MarkStatus value) markStatus,
    required TResult Function(_DeletePet value) deletePet,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_MarkStatus value)? markStatus,
    TResult? Function(_DeletePet value)? deletePet,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_MarkStatus value)? markStatus,
    TResult Function(_DeletePet value)? deletePet,
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
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String id, String status) markStatus,
    required TResult Function(String id) deletePet,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id, String status)? markStatus,
    TResult? Function(String id)? deletePet,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id, String status)? markStatus,
    TResult Function(String id)? deletePet,
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
    required TResult Function(_MarkStatus value) markStatus,
    required TResult Function(_DeletePet value) deletePet,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_MarkStatus value)? markStatus,
    TResult? Function(_DeletePet value)? deletePet,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_MarkStatus value)? markStatus,
    TResult Function(_DeletePet value)? deletePet,
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
abstract class _$$MarkStatusImplCopyWith<$Res> {
  factory _$$MarkStatusImplCopyWith(
    _$MarkStatusImpl value,
    $Res Function(_$MarkStatusImpl) then,
  ) = __$$MarkStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String status});
}

/// @nodoc
class __$$MarkStatusImplCopyWithImpl<$Res>
    extends _$NgoHomeEventCopyWithImpl<$Res, _$MarkStatusImpl>
    implements _$$MarkStatusImplCopyWith<$Res> {
  __$$MarkStatusImplCopyWithImpl(
    _$MarkStatusImpl _value,
    $Res Function(_$MarkStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NgoHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? status = null}) {
    return _then(
      _$MarkStatusImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$MarkStatusImpl implements _MarkStatus {
  const _$MarkStatusImpl({required this.id, required this.status});

  @override
  final String id;
  @override
  final String status;

  @override
  String toString() {
    return 'NgoHomeEvent.markStatus(id: $id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  /// Create a copy of NgoHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkStatusImplCopyWith<_$MarkStatusImpl> get copyWith =>
      __$$MarkStatusImplCopyWithImpl<_$MarkStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String id, String status) markStatus,
    required TResult Function(String id) deletePet,
  }) {
    return markStatus(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id, String status)? markStatus,
    TResult? Function(String id)? deletePet,
  }) {
    return markStatus?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id, String status)? markStatus,
    TResult Function(String id)? deletePet,
    required TResult orElse(),
  }) {
    if (markStatus != null) {
      return markStatus(id, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_MarkStatus value) markStatus,
    required TResult Function(_DeletePet value) deletePet,
  }) {
    return markStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_MarkStatus value)? markStatus,
    TResult? Function(_DeletePet value)? deletePet,
  }) {
    return markStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_MarkStatus value)? markStatus,
    TResult Function(_DeletePet value)? deletePet,
    required TResult orElse(),
  }) {
    if (markStatus != null) {
      return markStatus(this);
    }
    return orElse();
  }
}

abstract class _MarkStatus implements NgoHomeEvent {
  const factory _MarkStatus({
    required final String id,
    required final String status,
  }) = _$MarkStatusImpl;

  String get id;
  String get status;

  /// Create a copy of NgoHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkStatusImplCopyWith<_$MarkStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePetImplCopyWith<$Res> {
  factory _$$DeletePetImplCopyWith(
    _$DeletePetImpl value,
    $Res Function(_$DeletePetImpl) then,
  ) = __$$DeletePetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeletePetImplCopyWithImpl<$Res>
    extends _$NgoHomeEventCopyWithImpl<$Res, _$DeletePetImpl>
    implements _$$DeletePetImplCopyWith<$Res> {
  __$$DeletePetImplCopyWithImpl(
    _$DeletePetImpl _value,
    $Res Function(_$DeletePetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NgoHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeletePetImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$DeletePetImpl implements _DeletePet {
  const _$DeletePetImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'NgoHomeEvent.deletePet(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePetImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of NgoHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePetImplCopyWith<_$DeletePetImpl> get copyWith =>
      __$$DeletePetImplCopyWithImpl<_$DeletePetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String id, String status) markStatus,
    required TResult Function(String id) deletePet,
  }) {
    return deletePet(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id, String status)? markStatus,
    TResult? Function(String id)? deletePet,
  }) {
    return deletePet?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id, String status)? markStatus,
    TResult Function(String id)? deletePet,
    required TResult orElse(),
  }) {
    if (deletePet != null) {
      return deletePet(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_MarkStatus value) markStatus,
    required TResult Function(_DeletePet value) deletePet,
  }) {
    return deletePet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_MarkStatus value)? markStatus,
    TResult? Function(_DeletePet value)? deletePet,
  }) {
    return deletePet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_MarkStatus value)? markStatus,
    TResult Function(_DeletePet value)? deletePet,
    required TResult orElse(),
  }) {
    if (deletePet != null) {
      return deletePet(this);
    }
    return orElse();
  }
}

abstract class _DeletePet implements NgoHomeEvent {
  const factory _DeletePet({required final String id}) = _$DeletePetImpl;

  String get id;

  /// Create a copy of NgoHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletePetImplCopyWith<_$DeletePetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NgoHomeState {
  Status get initStatus => throw _privateConstructorUsedError;
  NgoProfile? get profile => throw _privateConstructorUsedError;
  CountListing? get count => throw _privateConstructorUsedError;
  List<Listing> get listing => throw _privateConstructorUsedError;
  List<Listing> get allPets => throw _privateConstructorUsedError;
  Status get deleteAdoptionStatus => throw _privateConstructorUsedError;

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
    List<Listing> allPets,
    Status deleteAdoptionStatus,
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
    Object? allPets = null,
    Object? deleteAdoptionStatus = null,
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
            allPets:
                null == allPets
                    ? _value.allPets
                    : allPets // ignore: cast_nullable_to_non_nullable
                        as List<Listing>,
            deleteAdoptionStatus:
                null == deleteAdoptionStatus
                    ? _value.deleteAdoptionStatus
                    : deleteAdoptionStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
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
    List<Listing> allPets,
    Status deleteAdoptionStatus,
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
    Object? allPets = null,
    Object? deleteAdoptionStatus = null,
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
        allPets:
            null == allPets
                ? _value._allPets
                : allPets // ignore: cast_nullable_to_non_nullable
                    as List<Listing>,
        deleteAdoptionStatus:
            null == deleteAdoptionStatus
                ? _value.deleteAdoptionStatus
                : deleteAdoptionStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
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
    final List<Listing> allPets = const [],
    this.deleteAdoptionStatus = Status.init,
  }) : _listing = listing,
       _allPets = allPets;

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

  final List<Listing> _allPets;
  @override
  @JsonKey()
  List<Listing> get allPets {
    if (_allPets is EqualUnmodifiableListView) return _allPets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allPets);
  }

  @override
  @JsonKey()
  final Status deleteAdoptionStatus;

  @override
  String toString() {
    return 'NgoHomeState(initStatus: $initStatus, profile: $profile, count: $count, listing: $listing, allPets: $allPets, deleteAdoptionStatus: $deleteAdoptionStatus)';
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
            const DeepCollectionEquality().equals(other._listing, _listing) &&
            const DeepCollectionEquality().equals(other._allPets, _allPets) &&
            (identical(other.deleteAdoptionStatus, deleteAdoptionStatus) ||
                other.deleteAdoptionStatus == deleteAdoptionStatus));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    initStatus,
    profile,
    count,
    const DeepCollectionEquality().hash(_listing),
    const DeepCollectionEquality().hash(_allPets),
    deleteAdoptionStatus,
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
    final List<Listing> allPets,
    final Status deleteAdoptionStatus,
  }) = _$NgoHomeStateImpl;

  @override
  Status get initStatus;
  @override
  NgoProfile? get profile;
  @override
  CountListing? get count;
  @override
  List<Listing> get listing;
  @override
  List<Listing> get allPets;
  @override
  Status get deleteAdoptionStatus;

  /// Create a copy of NgoHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NgoHomeStateImplCopyWith<_$NgoHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
