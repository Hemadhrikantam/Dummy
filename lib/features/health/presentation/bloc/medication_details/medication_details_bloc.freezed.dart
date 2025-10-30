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
    required TResult Function(String id) init,
    required TResult Function() loadLogs,
    required TResult Function(MedicationLog value) updateLog,
    required TResult Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )
    updateMedicationLog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? init,
    TResult? Function()? loadLogs,
    TResult? Function(MedicationLog value)? updateLog,
    TResult? Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )?
    updateMedicationLog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? init,
    TResult Function()? loadLogs,
    TResult Function(MedicationLog value)? updateLog,
    TResult Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )?
    updateMedicationLog,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadLogs value) loadLogs,
    required TResult Function(_UpdateLog value) updateLog,
    required TResult Function(_UpdateMedicationLog value) updateMedicationLog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadLogs value)? loadLogs,
    TResult? Function(_UpdateLog value)? updateLog,
    TResult? Function(_UpdateMedicationLog value)? updateMedicationLog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadLogs value)? loadLogs,
    TResult Function(_UpdateLog value)? updateLog,
    TResult Function(_UpdateMedicationLog value)? updateMedicationLog,
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
  $Res call({String id});
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
                as String,
      ),
    );
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.id);

  @override
  final String id;

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
    required TResult Function(String id) init,
    required TResult Function() loadLogs,
    required TResult Function(MedicationLog value) updateLog,
    required TResult Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )
    updateMedicationLog,
  }) {
    return init(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? init,
    TResult? Function()? loadLogs,
    TResult? Function(MedicationLog value)? updateLog,
    TResult? Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )?
    updateMedicationLog,
  }) {
    return init?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? init,
    TResult Function()? loadLogs,
    TResult Function(MedicationLog value)? updateLog,
    TResult Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )?
    updateMedicationLog,
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
    required TResult Function(_LoadLogs value) loadLogs,
    required TResult Function(_UpdateLog value) updateLog,
    required TResult Function(_UpdateMedicationLog value) updateMedicationLog,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadLogs value)? loadLogs,
    TResult? Function(_UpdateLog value)? updateLog,
    TResult? Function(_UpdateMedicationLog value)? updateMedicationLog,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadLogs value)? loadLogs,
    TResult Function(_UpdateLog value)? updateLog,
    TResult Function(_UpdateMedicationLog value)? updateMedicationLog,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements MedicationDetailsEvent {
  const factory _Init(final String id) = _$InitImpl;

  String get id;

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadLogsImplCopyWith<$Res> {
  factory _$$LoadLogsImplCopyWith(
    _$LoadLogsImpl value,
    $Res Function(_$LoadLogsImpl) then,
  ) = __$$LoadLogsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadLogsImplCopyWithImpl<$Res>
    extends _$MedicationDetailsEventCopyWithImpl<$Res, _$LoadLogsImpl>
    implements _$$LoadLogsImplCopyWith<$Res> {
  __$$LoadLogsImplCopyWithImpl(
    _$LoadLogsImpl _value,
    $Res Function(_$LoadLogsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadLogsImpl implements _LoadLogs {
  const _$LoadLogsImpl();

  @override
  String toString() {
    return 'MedicationDetailsEvent.loadLogs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadLogsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) init,
    required TResult Function() loadLogs,
    required TResult Function(MedicationLog value) updateLog,
    required TResult Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )
    updateMedicationLog,
  }) {
    return loadLogs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? init,
    TResult? Function()? loadLogs,
    TResult? Function(MedicationLog value)? updateLog,
    TResult? Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )?
    updateMedicationLog,
  }) {
    return loadLogs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? init,
    TResult Function()? loadLogs,
    TResult Function(MedicationLog value)? updateLog,
    TResult Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )?
    updateMedicationLog,
    required TResult orElse(),
  }) {
    if (loadLogs != null) {
      return loadLogs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadLogs value) loadLogs,
    required TResult Function(_UpdateLog value) updateLog,
    required TResult Function(_UpdateMedicationLog value) updateMedicationLog,
  }) {
    return loadLogs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadLogs value)? loadLogs,
    TResult? Function(_UpdateLog value)? updateLog,
    TResult? Function(_UpdateMedicationLog value)? updateMedicationLog,
  }) {
    return loadLogs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadLogs value)? loadLogs,
    TResult Function(_UpdateLog value)? updateLog,
    TResult Function(_UpdateMedicationLog value)? updateMedicationLog,
    required TResult orElse(),
  }) {
    if (loadLogs != null) {
      return loadLogs(this);
    }
    return orElse();
  }
}

abstract class _LoadLogs implements MedicationDetailsEvent {
  const factory _LoadLogs() = _$LoadLogsImpl;
}

/// @nodoc
abstract class _$$UpdateLogImplCopyWith<$Res> {
  factory _$$UpdateLogImplCopyWith(
    _$UpdateLogImpl value,
    $Res Function(_$UpdateLogImpl) then,
  ) = __$$UpdateLogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MedicationLog value});
}

/// @nodoc
class __$$UpdateLogImplCopyWithImpl<$Res>
    extends _$MedicationDetailsEventCopyWithImpl<$Res, _$UpdateLogImpl>
    implements _$$UpdateLogImplCopyWith<$Res> {
  __$$UpdateLogImplCopyWithImpl(
    _$UpdateLogImpl _value,
    $Res Function(_$UpdateLogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$UpdateLogImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as MedicationLog,
      ),
    );
  }
}

/// @nodoc

class _$UpdateLogImpl implements _UpdateLog {
  const _$UpdateLogImpl(this.value);

  @override
  final MedicationLog value;

  @override
  String toString() {
    return 'MedicationDetailsEvent.updateLog(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLogImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLogImplCopyWith<_$UpdateLogImpl> get copyWith =>
      __$$UpdateLogImplCopyWithImpl<_$UpdateLogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) init,
    required TResult Function() loadLogs,
    required TResult Function(MedicationLog value) updateLog,
    required TResult Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )
    updateMedicationLog,
  }) {
    return updateLog(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? init,
    TResult? Function()? loadLogs,
    TResult? Function(MedicationLog value)? updateLog,
    TResult? Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )?
    updateMedicationLog,
  }) {
    return updateLog?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? init,
    TResult Function()? loadLogs,
    TResult Function(MedicationLog value)? updateLog,
    TResult Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )?
    updateMedicationLog,
    required TResult orElse(),
  }) {
    if (updateLog != null) {
      return updateLog(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadLogs value) loadLogs,
    required TResult Function(_UpdateLog value) updateLog,
    required TResult Function(_UpdateMedicationLog value) updateMedicationLog,
  }) {
    return updateLog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadLogs value)? loadLogs,
    TResult? Function(_UpdateLog value)? updateLog,
    TResult? Function(_UpdateMedicationLog value)? updateMedicationLog,
  }) {
    return updateLog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadLogs value)? loadLogs,
    TResult Function(_UpdateLog value)? updateLog,
    TResult Function(_UpdateMedicationLog value)? updateMedicationLog,
    required TResult orElse(),
  }) {
    if (updateLog != null) {
      return updateLog(this);
    }
    return orElse();
  }
}

abstract class _UpdateLog implements MedicationDetailsEvent {
  const factory _UpdateLog(final MedicationLog value) = _$UpdateLogImpl;

  MedicationLog get value;

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateLogImplCopyWith<_$UpdateLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateMedicationLogImplCopyWith<$Res> {
  factory _$$UpdateMedicationLogImplCopyWith(
    _$UpdateMedicationLogImpl value,
    $Res Function(_$UpdateMedicationLogImpl) then,
  ) = __$$UpdateMedicationLogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String medicationId, String logId, bool check, DateTime date});
}

/// @nodoc
class __$$UpdateMedicationLogImplCopyWithImpl<$Res>
    extends
        _$MedicationDetailsEventCopyWithImpl<$Res, _$UpdateMedicationLogImpl>
    implements _$$UpdateMedicationLogImplCopyWith<$Res> {
  __$$UpdateMedicationLogImplCopyWithImpl(
    _$UpdateMedicationLogImpl _value,
    $Res Function(_$UpdateMedicationLogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicationId = null,
    Object? logId = null,
    Object? check = null,
    Object? date = null,
  }) {
    return _then(
      _$UpdateMedicationLogImpl(
        medicationId:
            null == medicationId
                ? _value.medicationId
                : medicationId // ignore: cast_nullable_to_non_nullable
                    as String,
        logId:
            null == logId
                ? _value.logId
                : logId // ignore: cast_nullable_to_non_nullable
                    as String,
        check:
            null == check
                ? _value.check
                : check // ignore: cast_nullable_to_non_nullable
                    as bool,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$UpdateMedicationLogImpl implements _UpdateMedicationLog {
  const _$UpdateMedicationLogImpl({
    required this.medicationId,
    required this.logId,
    required this.check,
    required this.date,
  });

  @override
  final String medicationId;
  @override
  final String logId;
  @override
  final bool check;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'MedicationDetailsEvent.updateMedicationLog(medicationId: $medicationId, logId: $logId, check: $check, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMedicationLogImpl &&
            (identical(other.medicationId, medicationId) ||
                other.medicationId == medicationId) &&
            (identical(other.logId, logId) || other.logId == logId) &&
            (identical(other.check, check) || other.check == check) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, medicationId, logId, check, date);

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMedicationLogImplCopyWith<_$UpdateMedicationLogImpl> get copyWith =>
      __$$UpdateMedicationLogImplCopyWithImpl<_$UpdateMedicationLogImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) init,
    required TResult Function() loadLogs,
    required TResult Function(MedicationLog value) updateLog,
    required TResult Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )
    updateMedicationLog,
  }) {
    return updateMedicationLog(medicationId, logId, check, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? init,
    TResult? Function()? loadLogs,
    TResult? Function(MedicationLog value)? updateLog,
    TResult? Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )?
    updateMedicationLog,
  }) {
    return updateMedicationLog?.call(medicationId, logId, check, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? init,
    TResult Function()? loadLogs,
    TResult Function(MedicationLog value)? updateLog,
    TResult Function(
      String medicationId,
      String logId,
      bool check,
      DateTime date,
    )?
    updateMedicationLog,
    required TResult orElse(),
  }) {
    if (updateMedicationLog != null) {
      return updateMedicationLog(medicationId, logId, check, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadLogs value) loadLogs,
    required TResult Function(_UpdateLog value) updateLog,
    required TResult Function(_UpdateMedicationLog value) updateMedicationLog,
  }) {
    return updateMedicationLog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadLogs value)? loadLogs,
    TResult? Function(_UpdateLog value)? updateLog,
    TResult? Function(_UpdateMedicationLog value)? updateMedicationLog,
  }) {
    return updateMedicationLog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadLogs value)? loadLogs,
    TResult Function(_UpdateLog value)? updateLog,
    TResult Function(_UpdateMedicationLog value)? updateMedicationLog,
    required TResult orElse(),
  }) {
    if (updateMedicationLog != null) {
      return updateMedicationLog(this);
    }
    return orElse();
  }
}

abstract class _UpdateMedicationLog implements MedicationDetailsEvent {
  const factory _UpdateMedicationLog({
    required final String medicationId,
    required final String logId,
    required final bool check,
    required final DateTime date,
  }) = _$UpdateMedicationLogImpl;

  String get medicationId;
  String get logId;
  bool get check;
  DateTime get date;

  /// Create a copy of MedicationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMedicationLogImplCopyWith<_$UpdateMedicationLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MedicationDetailsState {
  Status get initStatus => throw _privateConstructorUsedError;
  PetMedication? get medication => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  List<MedicationDate> get dates => throw _privateConstructorUsedError;
  List<MedicationLog> get logs => throw _privateConstructorUsedError;

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
    String id,
    List<MedicationDate> dates,
    List<MedicationLog> logs,
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
    Object? logs = null,
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
                        as String,
            dates:
                null == dates
                    ? _value.dates
                    : dates // ignore: cast_nullable_to_non_nullable
                        as List<MedicationDate>,
            logs:
                null == logs
                    ? _value.logs
                    : logs // ignore: cast_nullable_to_non_nullable
                        as List<MedicationLog>,
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
    String id,
    List<MedicationDate> dates,
    List<MedicationLog> logs,
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
    Object? logs = null,
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
                    as String,
        dates:
            null == dates
                ? _value._dates
                : dates // ignore: cast_nullable_to_non_nullable
                    as List<MedicationDate>,
        logs:
            null == logs
                ? _value._logs
                : logs // ignore: cast_nullable_to_non_nullable
                    as List<MedicationLog>,
      ),
    );
  }
}

/// @nodoc

class _$MedicationDetailsStateImpl implements _MedicationDetailsState {
  const _$MedicationDetailsStateImpl({
    this.initStatus = Status.init,
    this.medication = null,
    this.id = '',
    final List<MedicationDate> dates = const [],
    final List<MedicationLog> logs = const [],
  }) : _dates = dates,
       _logs = logs;

  @override
  @JsonKey()
  final Status initStatus;
  @override
  @JsonKey()
  final PetMedication? medication;
  @override
  @JsonKey()
  final String id;
  final List<MedicationDate> _dates;
  @override
  @JsonKey()
  List<MedicationDate> get dates {
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  final List<MedicationLog> _logs;
  @override
  @JsonKey()
  List<MedicationLog> get logs {
    if (_logs is EqualUnmodifiableListView) return _logs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logs);
  }

  @override
  String toString() {
    return 'MedicationDetailsState(initStatus: $initStatus, medication: $medication, id: $id, dates: $dates, logs: $logs)';
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
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            const DeepCollectionEquality().equals(other._logs, _logs));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    initStatus,
    medication,
    id,
    const DeepCollectionEquality().hash(_dates),
    const DeepCollectionEquality().hash(_logs),
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
    final String id,
    final List<MedicationDate> dates,
    final List<MedicationLog> logs,
  }) = _$MedicationDetailsStateImpl;

  @override
  Status get initStatus;
  @override
  PetMedication? get medication;
  @override
  String get id;
  @override
  List<MedicationDate> get dates;
  @override
  List<MedicationLog> get logs;

  /// Create a copy of MedicationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationDetailsStateImplCopyWith<_$MedicationDetailsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
