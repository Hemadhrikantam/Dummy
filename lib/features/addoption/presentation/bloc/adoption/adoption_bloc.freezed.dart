// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adoption_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AdoptionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() adoptions,
    required TResult Function() allPets,
    required TResult Function(String id, String status) markStatus,
    required TResult Function(String id) deletePet,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? adoptions,
    TResult? Function()? allPets,
    TResult? Function(String id, String status)? markStatus,
    TResult? Function(String id)? deletePet,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? adoptions,
    TResult Function()? allPets,
    TResult Function(String id, String status)? markStatus,
    TResult Function(String id)? deletePet,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Adoptions value) adoptions,
    required TResult Function(_AllPets value) allPets,
    required TResult Function(_MarkStatus value) markStatus,
    required TResult Function(_DeletePet value) deletePet,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Adoptions value)? adoptions,
    TResult? Function(_AllPets value)? allPets,
    TResult? Function(_MarkStatus value)? markStatus,
    TResult? Function(_DeletePet value)? deletePet,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Adoptions value)? adoptions,
    TResult Function(_AllPets value)? allPets,
    TResult Function(_MarkStatus value)? markStatus,
    TResult Function(_DeletePet value)? deletePet,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdoptionEventCopyWith<$Res> {
  factory $AdoptionEventCopyWith(
    AdoptionEvent value,
    $Res Function(AdoptionEvent) then,
  ) = _$AdoptionEventCopyWithImpl<$Res, AdoptionEvent>;
}

/// @nodoc
class _$AdoptionEventCopyWithImpl<$Res, $Val extends AdoptionEvent>
    implements $AdoptionEventCopyWith<$Res> {
  _$AdoptionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdoptionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AdoptionsImplCopyWith<$Res> {
  factory _$$AdoptionsImplCopyWith(
    _$AdoptionsImpl value,
    $Res Function(_$AdoptionsImpl) then,
  ) = __$$AdoptionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdoptionsImplCopyWithImpl<$Res>
    extends _$AdoptionEventCopyWithImpl<$Res, _$AdoptionsImpl>
    implements _$$AdoptionsImplCopyWith<$Res> {
  __$$AdoptionsImplCopyWithImpl(
    _$AdoptionsImpl _value,
    $Res Function(_$AdoptionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdoptionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AdoptionsImpl implements _Adoptions {
  const _$AdoptionsImpl();

  @override
  String toString() {
    return 'AdoptionEvent.adoptions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AdoptionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() adoptions,
    required TResult Function() allPets,
    required TResult Function(String id, String status) markStatus,
    required TResult Function(String id) deletePet,
  }) {
    return adoptions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? adoptions,
    TResult? Function()? allPets,
    TResult? Function(String id, String status)? markStatus,
    TResult? Function(String id)? deletePet,
  }) {
    return adoptions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? adoptions,
    TResult Function()? allPets,
    TResult Function(String id, String status)? markStatus,
    TResult Function(String id)? deletePet,
    required TResult orElse(),
  }) {
    if (adoptions != null) {
      return adoptions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Adoptions value) adoptions,
    required TResult Function(_AllPets value) allPets,
    required TResult Function(_MarkStatus value) markStatus,
    required TResult Function(_DeletePet value) deletePet,
  }) {
    return adoptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Adoptions value)? adoptions,
    TResult? Function(_AllPets value)? allPets,
    TResult? Function(_MarkStatus value)? markStatus,
    TResult? Function(_DeletePet value)? deletePet,
  }) {
    return adoptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Adoptions value)? adoptions,
    TResult Function(_AllPets value)? allPets,
    TResult Function(_MarkStatus value)? markStatus,
    TResult Function(_DeletePet value)? deletePet,
    required TResult orElse(),
  }) {
    if (adoptions != null) {
      return adoptions(this);
    }
    return orElse();
  }
}

abstract class _Adoptions implements AdoptionEvent {
  const factory _Adoptions() = _$AdoptionsImpl;
}

/// @nodoc
abstract class _$$AllPetsImplCopyWith<$Res> {
  factory _$$AllPetsImplCopyWith(
    _$AllPetsImpl value,
    $Res Function(_$AllPetsImpl) then,
  ) = __$$AllPetsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllPetsImplCopyWithImpl<$Res>
    extends _$AdoptionEventCopyWithImpl<$Res, _$AllPetsImpl>
    implements _$$AllPetsImplCopyWith<$Res> {
  __$$AllPetsImplCopyWithImpl(
    _$AllPetsImpl _value,
    $Res Function(_$AllPetsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdoptionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AllPetsImpl implements _AllPets {
  const _$AllPetsImpl();

  @override
  String toString() {
    return 'AdoptionEvent.allPets()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AllPetsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() adoptions,
    required TResult Function() allPets,
    required TResult Function(String id, String status) markStatus,
    required TResult Function(String id) deletePet,
  }) {
    return allPets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? adoptions,
    TResult? Function()? allPets,
    TResult? Function(String id, String status)? markStatus,
    TResult? Function(String id)? deletePet,
  }) {
    return allPets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? adoptions,
    TResult Function()? allPets,
    TResult Function(String id, String status)? markStatus,
    TResult Function(String id)? deletePet,
    required TResult orElse(),
  }) {
    if (allPets != null) {
      return allPets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Adoptions value) adoptions,
    required TResult Function(_AllPets value) allPets,
    required TResult Function(_MarkStatus value) markStatus,
    required TResult Function(_DeletePet value) deletePet,
  }) {
    return allPets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Adoptions value)? adoptions,
    TResult? Function(_AllPets value)? allPets,
    TResult? Function(_MarkStatus value)? markStatus,
    TResult? Function(_DeletePet value)? deletePet,
  }) {
    return allPets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Adoptions value)? adoptions,
    TResult Function(_AllPets value)? allPets,
    TResult Function(_MarkStatus value)? markStatus,
    TResult Function(_DeletePet value)? deletePet,
    required TResult orElse(),
  }) {
    if (allPets != null) {
      return allPets(this);
    }
    return orElse();
  }
}

abstract class _AllPets implements AdoptionEvent {
  const factory _AllPets() = _$AllPetsImpl;
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
    extends _$AdoptionEventCopyWithImpl<$Res, _$MarkStatusImpl>
    implements _$$MarkStatusImplCopyWith<$Res> {
  __$$MarkStatusImplCopyWithImpl(
    _$MarkStatusImpl _value,
    $Res Function(_$MarkStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdoptionEvent
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
    return 'AdoptionEvent.markStatus(id: $id, status: $status)';
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

  /// Create a copy of AdoptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkStatusImplCopyWith<_$MarkStatusImpl> get copyWith =>
      __$$MarkStatusImplCopyWithImpl<_$MarkStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() adoptions,
    required TResult Function() allPets,
    required TResult Function(String id, String status) markStatus,
    required TResult Function(String id) deletePet,
  }) {
    return markStatus(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? adoptions,
    TResult? Function()? allPets,
    TResult? Function(String id, String status)? markStatus,
    TResult? Function(String id)? deletePet,
  }) {
    return markStatus?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? adoptions,
    TResult Function()? allPets,
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
    required TResult Function(_Adoptions value) adoptions,
    required TResult Function(_AllPets value) allPets,
    required TResult Function(_MarkStatus value) markStatus,
    required TResult Function(_DeletePet value) deletePet,
  }) {
    return markStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Adoptions value)? adoptions,
    TResult? Function(_AllPets value)? allPets,
    TResult? Function(_MarkStatus value)? markStatus,
    TResult? Function(_DeletePet value)? deletePet,
  }) {
    return markStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Adoptions value)? adoptions,
    TResult Function(_AllPets value)? allPets,
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

abstract class _MarkStatus implements AdoptionEvent {
  const factory _MarkStatus({
    required final String id,
    required final String status,
  }) = _$MarkStatusImpl;

  String get id;
  String get status;

  /// Create a copy of AdoptionEvent
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
    extends _$AdoptionEventCopyWithImpl<$Res, _$DeletePetImpl>
    implements _$$DeletePetImplCopyWith<$Res> {
  __$$DeletePetImplCopyWithImpl(
    _$DeletePetImpl _value,
    $Res Function(_$DeletePetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdoptionEvent
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
    return 'AdoptionEvent.deletePet(id: $id)';
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

  /// Create a copy of AdoptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePetImplCopyWith<_$DeletePetImpl> get copyWith =>
      __$$DeletePetImplCopyWithImpl<_$DeletePetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() adoptions,
    required TResult Function() allPets,
    required TResult Function(String id, String status) markStatus,
    required TResult Function(String id) deletePet,
  }) {
    return deletePet(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? adoptions,
    TResult? Function()? allPets,
    TResult? Function(String id, String status)? markStatus,
    TResult? Function(String id)? deletePet,
  }) {
    return deletePet?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? adoptions,
    TResult Function()? allPets,
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
    required TResult Function(_Adoptions value) adoptions,
    required TResult Function(_AllPets value) allPets,
    required TResult Function(_MarkStatus value) markStatus,
    required TResult Function(_DeletePet value) deletePet,
  }) {
    return deletePet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Adoptions value)? adoptions,
    TResult? Function(_AllPets value)? allPets,
    TResult? Function(_MarkStatus value)? markStatus,
    TResult? Function(_DeletePet value)? deletePet,
  }) {
    return deletePet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Adoptions value)? adoptions,
    TResult Function(_AllPets value)? allPets,
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

abstract class _DeletePet implements AdoptionEvent {
  const factory _DeletePet({required final String id}) = _$DeletePetImpl;

  String get id;

  /// Create a copy of AdoptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletePetImplCopyWith<_$DeletePetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdoptionState {
  Status get adoptionStatus => throw _privateConstructorUsedError;
  List<Listing> get adoptions => throw _privateConstructorUsedError;
  List<Listing> get allPets => throw _privateConstructorUsedError;
  Status get deleteAdoptionStatus => throw _privateConstructorUsedError;

  /// Create a copy of AdoptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdoptionStateCopyWith<AdoptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdoptionStateCopyWith<$Res> {
  factory $AdoptionStateCopyWith(
    AdoptionState value,
    $Res Function(AdoptionState) then,
  ) = _$AdoptionStateCopyWithImpl<$Res, AdoptionState>;
  @useResult
  $Res call({
    Status adoptionStatus,
    List<Listing> adoptions,
    List<Listing> allPets,
    Status deleteAdoptionStatus,
  });
}

/// @nodoc
class _$AdoptionStateCopyWithImpl<$Res, $Val extends AdoptionState>
    implements $AdoptionStateCopyWith<$Res> {
  _$AdoptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdoptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adoptionStatus = null,
    Object? adoptions = null,
    Object? allPets = null,
    Object? deleteAdoptionStatus = null,
  }) {
    return _then(
      _value.copyWith(
            adoptionStatus:
                null == adoptionStatus
                    ? _value.adoptionStatus
                    : adoptionStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            adoptions:
                null == adoptions
                    ? _value.adoptions
                    : adoptions // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AdoptionStateImplCopyWith<$Res>
    implements $AdoptionStateCopyWith<$Res> {
  factory _$$AdoptionStateImplCopyWith(
    _$AdoptionStateImpl value,
    $Res Function(_$AdoptionStateImpl) then,
  ) = __$$AdoptionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status adoptionStatus,
    List<Listing> adoptions,
    List<Listing> allPets,
    Status deleteAdoptionStatus,
  });
}

/// @nodoc
class __$$AdoptionStateImplCopyWithImpl<$Res>
    extends _$AdoptionStateCopyWithImpl<$Res, _$AdoptionStateImpl>
    implements _$$AdoptionStateImplCopyWith<$Res> {
  __$$AdoptionStateImplCopyWithImpl(
    _$AdoptionStateImpl _value,
    $Res Function(_$AdoptionStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdoptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adoptionStatus = null,
    Object? adoptions = null,
    Object? allPets = null,
    Object? deleteAdoptionStatus = null,
  }) {
    return _then(
      _$AdoptionStateImpl(
        adoptionStatus:
            null == adoptionStatus
                ? _value.adoptionStatus
                : adoptionStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        adoptions:
            null == adoptions
                ? _value._adoptions
                : adoptions // ignore: cast_nullable_to_non_nullable
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

class _$AdoptionStateImpl implements _AdoptionState {
  const _$AdoptionStateImpl({
    this.adoptionStatus = Status.init,
    final List<Listing> adoptions = const [],
    final List<Listing> allPets = const [],
    this.deleteAdoptionStatus = Status.init,
  }) : _adoptions = adoptions,
       _allPets = allPets;

  @override
  @JsonKey()
  final Status adoptionStatus;
  final List<Listing> _adoptions;
  @override
  @JsonKey()
  List<Listing> get adoptions {
    if (_adoptions is EqualUnmodifiableListView) return _adoptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adoptions);
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
    return 'AdoptionState(adoptionStatus: $adoptionStatus, adoptions: $adoptions, allPets: $allPets, deleteAdoptionStatus: $deleteAdoptionStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdoptionStateImpl &&
            (identical(other.adoptionStatus, adoptionStatus) ||
                other.adoptionStatus == adoptionStatus) &&
            const DeepCollectionEquality().equals(
              other._adoptions,
              _adoptions,
            ) &&
            const DeepCollectionEquality().equals(other._allPets, _allPets) &&
            (identical(other.deleteAdoptionStatus, deleteAdoptionStatus) ||
                other.deleteAdoptionStatus == deleteAdoptionStatus));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    adoptionStatus,
    const DeepCollectionEquality().hash(_adoptions),
    const DeepCollectionEquality().hash(_allPets),
    deleteAdoptionStatus,
  );

  /// Create a copy of AdoptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdoptionStateImplCopyWith<_$AdoptionStateImpl> get copyWith =>
      __$$AdoptionStateImplCopyWithImpl<_$AdoptionStateImpl>(this, _$identity);
}

abstract class _AdoptionState implements AdoptionState {
  const factory _AdoptionState({
    final Status adoptionStatus,
    final List<Listing> adoptions,
    final List<Listing> allPets,
    final Status deleteAdoptionStatus,
  }) = _$AdoptionStateImpl;

  @override
  Status get adoptionStatus;
  @override
  List<Listing> get adoptions;
  @override
  List<Listing> get allPets;
  @override
  Status get deleteAdoptionStatus;

  /// Create a copy of AdoptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdoptionStateImplCopyWith<_$AdoptionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
