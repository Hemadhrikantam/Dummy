// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MedicationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String? key) medications,
    required TResult Function(String id) delete,
    required TResult Function(String startDate, String endDate) filter,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? key)? medications,
    TResult? Function(String id)? delete,
    TResult? Function(String startDate, String endDate)? filter,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? key)? medications,
    TResult Function(String id)? delete,
    TResult Function(String startDate, String endDate)? filter,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Medications value) medications,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Filter value) filter,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Medications value)? medications,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_Filter value)? filter,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Medications value)? medications,
    TResult Function(_Delete value)? delete,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationsEventCopyWith<$Res> {
  factory $MedicationsEventCopyWith(
    MedicationsEvent value,
    $Res Function(MedicationsEvent) then,
  ) = _$MedicationsEventCopyWithImpl<$Res, MedicationsEvent>;
}

/// @nodoc
class _$MedicationsEventCopyWithImpl<$Res, $Val extends MedicationsEvent>
    implements $MedicationsEventCopyWith<$Res> {
  _$MedicationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationsEvent
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
    extends _$MedicationsEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of MedicationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'MedicationsEvent.init()';
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
    required TResult Function(String? key) medications,
    required TResult Function(String id) delete,
    required TResult Function(String startDate, String endDate) filter,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? key)? medications,
    TResult? Function(String id)? delete,
    TResult? Function(String startDate, String endDate)? filter,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? key)? medications,
    TResult Function(String id)? delete,
    TResult Function(String startDate, String endDate)? filter,
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
    required TResult Function(_Medications value) medications,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Filter value) filter,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Medications value)? medications,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_Filter value)? filter,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Medications value)? medications,
    TResult Function(_Delete value)? delete,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements MedicationsEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$MedicationsImplCopyWith<$Res> {
  factory _$$MedicationsImplCopyWith(
    _$MedicationsImpl value,
    $Res Function(_$MedicationsImpl) then,
  ) = __$$MedicationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? key});
}

/// @nodoc
class __$$MedicationsImplCopyWithImpl<$Res>
    extends _$MedicationsEventCopyWithImpl<$Res, _$MedicationsImpl>
    implements _$$MedicationsImplCopyWith<$Res> {
  __$$MedicationsImplCopyWithImpl(
    _$MedicationsImpl _value,
    $Res Function(_$MedicationsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MedicationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? key = freezed}) {
    return _then(
      _$MedicationsImpl(
        freezed == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc

class _$MedicationsImpl implements _Medications {
  const _$MedicationsImpl(this.key);

  @override
  final String? key;

  @override
  String toString() {
    return 'MedicationsEvent.medications(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationsImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  /// Create a copy of MedicationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationsImplCopyWith<_$MedicationsImpl> get copyWith =>
      __$$MedicationsImplCopyWithImpl<_$MedicationsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String? key) medications,
    required TResult Function(String id) delete,
    required TResult Function(String startDate, String endDate) filter,
  }) {
    return medications(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? key)? medications,
    TResult? Function(String id)? delete,
    TResult? Function(String startDate, String endDate)? filter,
  }) {
    return medications?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? key)? medications,
    TResult Function(String id)? delete,
    TResult Function(String startDate, String endDate)? filter,
    required TResult orElse(),
  }) {
    if (medications != null) {
      return medications(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Medications value) medications,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Filter value) filter,
  }) {
    return medications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Medications value)? medications,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_Filter value)? filter,
  }) {
    return medications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Medications value)? medications,
    TResult Function(_Delete value)? delete,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) {
    if (medications != null) {
      return medications(this);
    }
    return orElse();
  }
}

abstract class _Medications implements MedicationsEvent {
  const factory _Medications(final String? key) = _$MedicationsImpl;

  String? get key;

  /// Create a copy of MedicationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationsImplCopyWith<_$MedicationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
    _$DeleteImpl value,
    $Res Function(_$DeleteImpl) then,
  ) = __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$MedicationsEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
    _$DeleteImpl _value,
    $Res Function(_$DeleteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MedicationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MedicationsEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MedicationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String? key) medications,
    required TResult Function(String id) delete,
    required TResult Function(String startDate, String endDate) filter,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? key)? medications,
    TResult? Function(String id)? delete,
    TResult? Function(String startDate, String endDate)? filter,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? key)? medications,
    TResult Function(String id)? delete,
    TResult Function(String startDate, String endDate)? filter,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Medications value) medications,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Filter value) filter,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Medications value)? medications,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_Filter value)? filter,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Medications value)? medications,
    TResult Function(_Delete value)? delete,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements MedicationsEvent {
  const factory _Delete(final String id) = _$DeleteImpl;

  String get id;

  /// Create a copy of MedicationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterImplCopyWith<$Res> {
  factory _$$FilterImplCopyWith(
    _$FilterImpl value,
    $Res Function(_$FilterImpl) then,
  ) = __$$FilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String startDate, String endDate});
}

/// @nodoc
class __$$FilterImplCopyWithImpl<$Res>
    extends _$MedicationsEventCopyWithImpl<$Res, _$FilterImpl>
    implements _$$FilterImplCopyWith<$Res> {
  __$$FilterImplCopyWithImpl(
    _$FilterImpl _value,
    $Res Function(_$FilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MedicationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? startDate = null, Object? endDate = null}) {
    return _then(
      _$FilterImpl(
        null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                as String,
        null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$FilterImpl implements _Filter {
  const _$FilterImpl(this.startDate, this.endDate);

  @override
  final String startDate;
  @override
  final String endDate;

  @override
  String toString() {
    return 'MedicationsEvent.filter(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  /// Create a copy of MedicationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      __$$FilterImplCopyWithImpl<_$FilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String? key) medications,
    required TResult Function(String id) delete,
    required TResult Function(String startDate, String endDate) filter,
  }) {
    return filter(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? key)? medications,
    TResult? Function(String id)? delete,
    TResult? Function(String startDate, String endDate)? filter,
  }) {
    return filter?.call(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? key)? medications,
    TResult Function(String id)? delete,
    TResult Function(String startDate, String endDate)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Medications value) medications,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Filter value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Medications value)? medications,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_Filter value)? filter,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Medications value)? medications,
    TResult Function(_Delete value)? delete,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _Filter implements MedicationsEvent {
  const factory _Filter(final String startDate, final String endDate) =
      _$FilterImpl;

  String get startDate;
  String get endDate;

  /// Create a copy of MedicationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MedicationsState {
  Status get medicationsStatus => throw _privateConstructorUsedError;
  List<PetMedication> get medications => throw _privateConstructorUsedError;
  NotEmpty get startDate => throw _privateConstructorUsedError;
  NotEmpty get endDate => throw _privateConstructorUsedError;

  /// Create a copy of MedicationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationsStateCopyWith<MedicationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationsStateCopyWith<$Res> {
  factory $MedicationsStateCopyWith(
    MedicationsState value,
    $Res Function(MedicationsState) then,
  ) = _$MedicationsStateCopyWithImpl<$Res, MedicationsState>;
  @useResult
  $Res call({
    Status medicationsStatus,
    List<PetMedication> medications,
    NotEmpty startDate,
    NotEmpty endDate,
  });
}

/// @nodoc
class _$MedicationsStateCopyWithImpl<$Res, $Val extends MedicationsState>
    implements $MedicationsStateCopyWith<$Res> {
  _$MedicationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicationsStatus = null,
    Object? medications = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(
      _value.copyWith(
            medicationsStatus:
                null == medicationsStatus
                    ? _value.medicationsStatus
                    : medicationsStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            medications:
                null == medications
                    ? _value.medications
                    : medications // ignore: cast_nullable_to_non_nullable
                        as List<PetMedication>,
            startDate:
                null == startDate
                    ? _value.startDate
                    : startDate // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            endDate:
                null == endDate
                    ? _value.endDate
                    : endDate // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MedicationsStateImplCopyWith<$Res>
    implements $MedicationsStateCopyWith<$Res> {
  factory _$$MedicationsStateImplCopyWith(
    _$MedicationsStateImpl value,
    $Res Function(_$MedicationsStateImpl) then,
  ) = __$$MedicationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status medicationsStatus,
    List<PetMedication> medications,
    NotEmpty startDate,
    NotEmpty endDate,
  });
}

/// @nodoc
class __$$MedicationsStateImplCopyWithImpl<$Res>
    extends _$MedicationsStateCopyWithImpl<$Res, _$MedicationsStateImpl>
    implements _$$MedicationsStateImplCopyWith<$Res> {
  __$$MedicationsStateImplCopyWithImpl(
    _$MedicationsStateImpl _value,
    $Res Function(_$MedicationsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MedicationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicationsStatus = null,
    Object? medications = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(
      _$MedicationsStateImpl(
        medicationsStatus:
            null == medicationsStatus
                ? _value.medicationsStatus
                : medicationsStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        medications:
            null == medications
                ? _value._medications
                : medications // ignore: cast_nullable_to_non_nullable
                    as List<PetMedication>,
        startDate:
            null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        endDate:
            null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
      ),
    );
  }
}

/// @nodoc

class _$MedicationsStateImpl implements _MedicationsState {
  const _$MedicationsStateImpl({
    this.medicationsStatus = Status.init,
    final List<PetMedication> medications = const [],
    this.startDate = const NotEmpty.pure(),
    this.endDate = const NotEmpty.pure(),
  }) : _medications = medications;

  @override
  @JsonKey()
  final Status medicationsStatus;
  final List<PetMedication> _medications;
  @override
  @JsonKey()
  List<PetMedication> get medications {
    if (_medications is EqualUnmodifiableListView) return _medications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medications);
  }

  @override
  @JsonKey()
  final NotEmpty startDate;
  @override
  @JsonKey()
  final NotEmpty endDate;

  @override
  String toString() {
    return 'MedicationsState(medicationsStatus: $medicationsStatus, medications: $medications, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationsStateImpl &&
            (identical(other.medicationsStatus, medicationsStatus) ||
                other.medicationsStatus == medicationsStatus) &&
            const DeepCollectionEquality().equals(
              other._medications,
              _medications,
            ) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    medicationsStatus,
    const DeepCollectionEquality().hash(_medications),
    startDate,
    endDate,
  );

  /// Create a copy of MedicationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationsStateImplCopyWith<_$MedicationsStateImpl> get copyWith =>
      __$$MedicationsStateImplCopyWithImpl<_$MedicationsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _MedicationsState implements MedicationsState {
  const factory _MedicationsState({
    final Status medicationsStatus,
    final List<PetMedication> medications,
    final NotEmpty startDate,
    final NotEmpty endDate,
  }) = _$MedicationsStateImpl;

  @override
  Status get medicationsStatus;
  @override
  List<PetMedication> get medications;
  @override
  NotEmpty get startDate;
  @override
  NotEmpty get endDate;

  /// Create a copy of MedicationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationsStateImplCopyWith<_$MedicationsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
