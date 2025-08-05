// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MedicationDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) init,
    required TResult Function(DateTime date) getDate,
    required TResult Function(MedicationDate value) updateDate,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? init,
    TResult? Function(DateTime date)? getDate,
    TResult? Function(MedicationDate value)? updateDate,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? init,
    TResult Function(DateTime date)? getDate,
    TResult Function(MedicationDate value)? updateDate,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_GetDate value) getDate,
    required TResult Function(_UpdateDate value) updateDate,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_GetDate value)? getDate,
    TResult? Function(_UpdateDate value)? updateDate,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_GetDate value)? getDate,
    TResult Function(_UpdateDate value)? updateDate,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationDetailsEventCopyWith<$Res> {
  factory $MedicationDetailsEventCopyWith(
    MedicationDetailsEvent value,
    $Res Function(MedicationDetailsEvent) then,
  ) = _$MedicationDetailsEventCopyWithImpl<$Res, MedicationDetailsEvent>;
}

/// @nodoc
class _$MedicationDetailsEventCopyWithImpl<
  $Res,
  $Val extends MedicationDetailsEvent
>
    implements $MedicationDetailsEventCopyWith<$Res> {
  _$MedicationDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
    _$InitImpl value,
    $Res Function(_$InitImpl) then,
  ) = __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$MedicationDetailsEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of MedicationDetailsEvent
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
    return 'MedicationDetailsEvent.init(id: $id)';
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

  /// Create a copy of MedicationDetailsEvent
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
    required TResult Function(DateTime date) getDate,
    required TResult Function(MedicationDate value) updateDate,
  }) {
    return init(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? init,
    TResult? Function(DateTime date)? getDate,
    TResult? Function(MedicationDate value)? updateDate,
  }) {
    return init?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? init,
    TResult Function(DateTime date)? getDate,
    TResult Function(MedicationDate value)? updateDate,
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
    required TResult Function(_GetDate value) getDate,
    required TResult Function(_UpdateDate value) updateDate,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_GetDate value)? getDate,
    TResult? Function(_UpdateDate value)? updateDate,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_GetDate value)? getDate,
    TResult Function(_UpdateDate value)? updateDate,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements MedicationDetailsEvent {
  const factory _Init(final int id) = _$InitImpl;

  int get id;

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDateImplCopyWith<$Res> {
  factory _$$GetDateImplCopyWith(
    _$GetDateImpl value,
    $Res Function(_$GetDateImpl) then,
  ) = __$$GetDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$GetDateImplCopyWithImpl<$Res>
    extends _$MedicationDetailsEventCopyWithImpl<$Res, _$GetDateImpl>
    implements _$$GetDateImplCopyWith<$Res> {
  __$$GetDateImplCopyWithImpl(
    _$GetDateImpl _value,
    $Res Function(_$GetDateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null}) {
    return _then(
      _$GetDateImpl(
        null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$GetDateImpl implements _GetDate {
  const _$GetDateImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'MedicationDetailsEvent.getDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDateImplCopyWith<_$GetDateImpl> get copyWith =>
      __$$GetDateImplCopyWithImpl<_$GetDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) init,
    required TResult Function(DateTime date) getDate,
    required TResult Function(MedicationDate value) updateDate,
  }) {
    return getDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? init,
    TResult? Function(DateTime date)? getDate,
    TResult? Function(MedicationDate value)? updateDate,
  }) {
    return getDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? init,
    TResult Function(DateTime date)? getDate,
    TResult Function(MedicationDate value)? updateDate,
    required TResult orElse(),
  }) {
    if (getDate != null) {
      return getDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_GetDate value) getDate,
    required TResult Function(_UpdateDate value) updateDate,
  }) {
    return getDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_GetDate value)? getDate,
    TResult? Function(_UpdateDate value)? updateDate,
  }) {
    return getDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_GetDate value)? getDate,
    TResult Function(_UpdateDate value)? updateDate,
    required TResult orElse(),
  }) {
    if (getDate != null) {
      return getDate(this);
    }
    return orElse();
  }
}

abstract class _GetDate implements MedicationDetailsEvent {
  const factory _GetDate(final DateTime date) = _$GetDateImpl;

  DateTime get date;

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDateImplCopyWith<_$GetDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDateImplCopyWith<$Res> {
  factory _$$UpdateDateImplCopyWith(
    _$UpdateDateImpl value,
    $Res Function(_$UpdateDateImpl) then,
  ) = __$$UpdateDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MedicationDate value});
}

/// @nodoc
class __$$UpdateDateImplCopyWithImpl<$Res>
    extends _$MedicationDetailsEventCopyWithImpl<$Res, _$UpdateDateImpl>
    implements _$$UpdateDateImplCopyWith<$Res> {
  __$$UpdateDateImplCopyWithImpl(
    _$UpdateDateImpl _value,
    $Res Function(_$UpdateDateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$UpdateDateImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as MedicationDate,
      ),
    );
  }
}

/// @nodoc

class _$UpdateDateImpl implements _UpdateDate {
  const _$UpdateDateImpl(this.value);

  @override
  final MedicationDate value;

  @override
  String toString() {
    return 'MedicationDetailsEvent.updateDate(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDateImplCopyWith<_$UpdateDateImpl> get copyWith =>
      __$$UpdateDateImplCopyWithImpl<_$UpdateDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) init,
    required TResult Function(DateTime date) getDate,
    required TResult Function(MedicationDate value) updateDate,
  }) {
    return updateDate(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? init,
    TResult? Function(DateTime date)? getDate,
    TResult? Function(MedicationDate value)? updateDate,
  }) {
    return updateDate?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? init,
    TResult Function(DateTime date)? getDate,
    TResult Function(MedicationDate value)? updateDate,
    required TResult orElse(),
  }) {
    if (updateDate != null) {
      return updateDate(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_GetDate value) getDate,
    required TResult Function(_UpdateDate value) updateDate,
  }) {
    return updateDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_GetDate value)? getDate,
    TResult? Function(_UpdateDate value)? updateDate,
  }) {
    return updateDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_GetDate value)? getDate,
    TResult Function(_UpdateDate value)? updateDate,
    required TResult orElse(),
  }) {
    if (updateDate != null) {
      return updateDate(this);
    }
    return orElse();
  }
}

abstract class _UpdateDate implements MedicationDetailsEvent {
  const factory _UpdateDate(final MedicationDate value) = _$UpdateDateImpl;

  MedicationDate get value;

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDateImplCopyWith<_$UpdateDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MedicationDetailsState {
  Status get initStatus => throw _privateConstructorUsedError;
  PetMedication? get medication => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<MedicationDate> get dates => throw _privateConstructorUsedError;

  /// Create a copy of MedicationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationDetailsStateCopyWith<MedicationDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationDetailsStateCopyWith<$Res> {
  factory $MedicationDetailsStateCopyWith(
    MedicationDetailsState value,
    $Res Function(MedicationDetailsState) then,
  ) = _$MedicationDetailsStateCopyWithImpl<$Res, MedicationDetailsState>;
  @useResult
  $Res call({
    Status initStatus,
    PetMedication? medication,
    int id,
    List<MedicationDate> dates,
  });
}

/// @nodoc
class _$MedicationDetailsStateCopyWithImpl<
  $Res,
  $Val extends MedicationDetailsState
>
    implements $MedicationDetailsStateCopyWith<$Res> {
  _$MedicationDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? medication = freezed,
    Object? id = null,
    Object? dates = null,
  }) {
    return _then(
      _value.copyWith(
            initStatus:
                null == initStatus
                    ? _value.initStatus
                    : initStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            medication:
                freezed == medication
                    ? _value.medication
                    : medication // ignore: cast_nullable_to_non_nullable
                        as PetMedication?,
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            dates:
                null == dates
                    ? _value.dates
                    : dates // ignore: cast_nullable_to_non_nullable
                        as List<MedicationDate>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MedicationDetailsStateImplCopyWith<$Res>
    implements $MedicationDetailsStateCopyWith<$Res> {
  factory _$$MedicationDetailsStateImplCopyWith(
    _$MedicationDetailsStateImpl value,
    $Res Function(_$MedicationDetailsStateImpl) then,
  ) = __$$MedicationDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status initStatus,
    PetMedication? medication,
    int id,
    List<MedicationDate> dates,
  });
}

/// @nodoc
class __$$MedicationDetailsStateImplCopyWithImpl<$Res>
    extends
        _$MedicationDetailsStateCopyWithImpl<$Res, _$MedicationDetailsStateImpl>
    implements _$$MedicationDetailsStateImplCopyWith<$Res> {
  __$$MedicationDetailsStateImplCopyWithImpl(
    _$MedicationDetailsStateImpl _value,
    $Res Function(_$MedicationDetailsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MedicationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? medication = freezed,
    Object? id = null,
    Object? dates = null,
  }) {
    return _then(
      _$MedicationDetailsStateImpl(
        initStatus:
            null == initStatus
                ? _value.initStatus
                : initStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        medication:
            freezed == medication
                ? _value.medication
                : medication // ignore: cast_nullable_to_non_nullable
                    as PetMedication?,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        dates:
            null == dates
                ? _value._dates
                : dates // ignore: cast_nullable_to_non_nullable
                    as List<MedicationDate>,
      ),
    );
  }
}

/// @nodoc

class _$MedicationDetailsStateImpl implements _MedicationDetailsState {
  const _$MedicationDetailsStateImpl({
    this.initStatus = Status.init,
    this.medication = null,
    this.id = 0,
    final List<MedicationDate> dates = const [],
  }) : _dates = dates;

  @override
  @JsonKey()
  final Status initStatus;
  @override
  @JsonKey()
  final PetMedication? medication;
  @override
  @JsonKey()
  final int id;
  final List<MedicationDate> _dates;
  @override
  @JsonKey()
  List<MedicationDate> get dates {
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  @override
  String toString() {
    return 'MedicationDetailsState(initStatus: $initStatus, medication: $medication, id: $id, dates: $dates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationDetailsStateImpl &&
            (identical(other.initStatus, initStatus) ||
                other.initStatus == initStatus) &&
            (identical(other.medication, medication) ||
                other.medication == medication) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._dates, _dates));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    initStatus,
    medication,
    id,
    const DeepCollectionEquality().hash(_dates),
  );

  /// Create a copy of MedicationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationDetailsStateImplCopyWith<_$MedicationDetailsStateImpl>
  get copyWith =>
      __$$MedicationDetailsStateImplCopyWithImpl<_$MedicationDetailsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _MedicationDetailsState implements MedicationDetailsState {
  const factory _MedicationDetailsState({
    final Status initStatus,
    final PetMedication? medication,
    final int id,
    final List<MedicationDate> dates,
  }) = _$MedicationDetailsStateImpl;

  @override
  Status get initStatus;
  @override
  PetMedication? get medication;
  @override
  int get id;
  @override
  List<MedicationDate> get dates;

  /// Create a copy of MedicationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationDetailsStateImplCopyWith<_$MedicationDetailsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
