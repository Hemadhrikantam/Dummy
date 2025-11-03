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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) init,
    required TResult Function() loadVaccinationLogs,
    required TResult Function(bool check, String notes, DateTime date)
    addVaccinationLog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? init,
    TResult? Function()? loadVaccinationLogs,
    TResult? Function(bool check, String notes, DateTime date)?
    addVaccinationLog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? init,
    TResult Function()? loadVaccinationLogs,
    TResult Function(bool check, String notes, DateTime date)?
    addVaccinationLog,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadVaccinationLogs value) loadVaccinationLogs,
    required TResult Function(_AddVaccinationLog value) addVaccinationLog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadVaccinationLogs value)? loadVaccinationLogs,
    TResult? Function(_AddVaccinationLog value)? addVaccinationLog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadVaccinationLogs value)? loadVaccinationLogs,
    TResult Function(_AddVaccinationLog value)? addVaccinationLog,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccinationDetailsEventCopyWith<$Res> {
  factory $VaccinationDetailsEventCopyWith(
    VaccinationDetailsEvent value,
    $Res Function(VaccinationDetailsEvent) then,
  ) = _$VaccinationDetailsEventCopyWithImpl<$Res, VaccinationDetailsEvent>;
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
    required TResult Function(String id) init,
    required TResult Function() loadVaccinationLogs,
    required TResult Function(bool check, String notes, DateTime date)
    addVaccinationLog,
  }) {
    return init(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? init,
    TResult? Function()? loadVaccinationLogs,
    TResult? Function(bool check, String notes, DateTime date)?
    addVaccinationLog,
  }) {
    return init?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? init,
    TResult Function()? loadVaccinationLogs,
    TResult Function(bool check, String notes, DateTime date)?
    addVaccinationLog,
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
    required TResult Function(_LoadVaccinationLogs value) loadVaccinationLogs,
    required TResult Function(_AddVaccinationLog value) addVaccinationLog,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadVaccinationLogs value)? loadVaccinationLogs,
    TResult? Function(_AddVaccinationLog value)? addVaccinationLog,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadVaccinationLogs value)? loadVaccinationLogs,
    TResult Function(_AddVaccinationLog value)? addVaccinationLog,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements VaccinationDetailsEvent {
  const factory _Init(final String id) = _$InitImpl;

  String get id;

  /// Create a copy of VaccinationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadVaccinationLogsImplCopyWith<$Res> {
  factory _$$LoadVaccinationLogsImplCopyWith(
    _$LoadVaccinationLogsImpl value,
    $Res Function(_$LoadVaccinationLogsImpl) then,
  ) = __$$LoadVaccinationLogsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadVaccinationLogsImplCopyWithImpl<$Res>
    extends
        _$VaccinationDetailsEventCopyWithImpl<$Res, _$LoadVaccinationLogsImpl>
    implements _$$LoadVaccinationLogsImplCopyWith<$Res> {
  __$$LoadVaccinationLogsImplCopyWithImpl(
    _$LoadVaccinationLogsImpl _value,
    $Res Function(_$LoadVaccinationLogsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VaccinationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadVaccinationLogsImpl implements _LoadVaccinationLogs {
  const _$LoadVaccinationLogsImpl();

  @override
  String toString() {
    return 'VaccinationDetailsEvent.loadVaccinationLogs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadVaccinationLogsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) init,
    required TResult Function() loadVaccinationLogs,
    required TResult Function(bool check, String notes, DateTime date)
    addVaccinationLog,
  }) {
    return loadVaccinationLogs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? init,
    TResult? Function()? loadVaccinationLogs,
    TResult? Function(bool check, String notes, DateTime date)?
    addVaccinationLog,
  }) {
    return loadVaccinationLogs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? init,
    TResult Function()? loadVaccinationLogs,
    TResult Function(bool check, String notes, DateTime date)?
    addVaccinationLog,
    required TResult orElse(),
  }) {
    if (loadVaccinationLogs != null) {
      return loadVaccinationLogs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadVaccinationLogs value) loadVaccinationLogs,
    required TResult Function(_AddVaccinationLog value) addVaccinationLog,
  }) {
    return loadVaccinationLogs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadVaccinationLogs value)? loadVaccinationLogs,
    TResult? Function(_AddVaccinationLog value)? addVaccinationLog,
  }) {
    return loadVaccinationLogs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadVaccinationLogs value)? loadVaccinationLogs,
    TResult Function(_AddVaccinationLog value)? addVaccinationLog,
    required TResult orElse(),
  }) {
    if (loadVaccinationLogs != null) {
      return loadVaccinationLogs(this);
    }
    return orElse();
  }
}

abstract class _LoadVaccinationLogs implements VaccinationDetailsEvent {
  const factory _LoadVaccinationLogs() = _$LoadVaccinationLogsImpl;
}

/// @nodoc
abstract class _$$AddVaccinationLogImplCopyWith<$Res> {
  factory _$$AddVaccinationLogImplCopyWith(
    _$AddVaccinationLogImpl value,
    $Res Function(_$AddVaccinationLogImpl) then,
  ) = __$$AddVaccinationLogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool check, String notes, DateTime date});
}

/// @nodoc
class __$$AddVaccinationLogImplCopyWithImpl<$Res>
    extends _$VaccinationDetailsEventCopyWithImpl<$Res, _$AddVaccinationLogImpl>
    implements _$$AddVaccinationLogImplCopyWith<$Res> {
  __$$AddVaccinationLogImplCopyWithImpl(
    _$AddVaccinationLogImpl _value,
    $Res Function(_$AddVaccinationLogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VaccinationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? check = null, Object? notes = null, Object? date = null}) {
    return _then(
      _$AddVaccinationLogImpl(
        check:
            null == check
                ? _value.check
                : check // ignore: cast_nullable_to_non_nullable
                    as bool,
        notes:
            null == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as String,
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

class _$AddVaccinationLogImpl implements _AddVaccinationLog {
  const _$AddVaccinationLogImpl({
    required this.check,
    required this.notes,
    required this.date,
  });

  @override
  final bool check;
  @override
  final String notes;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'VaccinationDetailsEvent.addVaccinationLog(check: $check, notes: $notes, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddVaccinationLogImpl &&
            (identical(other.check, check) || other.check == check) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, check, notes, date);

  /// Create a copy of VaccinationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddVaccinationLogImplCopyWith<_$AddVaccinationLogImpl> get copyWith =>
      __$$AddVaccinationLogImplCopyWithImpl<_$AddVaccinationLogImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) init,
    required TResult Function() loadVaccinationLogs,
    required TResult Function(bool check, String notes, DateTime date)
    addVaccinationLog,
  }) {
    return addVaccinationLog(check, notes, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? init,
    TResult? Function()? loadVaccinationLogs,
    TResult? Function(bool check, String notes, DateTime date)?
    addVaccinationLog,
  }) {
    return addVaccinationLog?.call(check, notes, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? init,
    TResult Function()? loadVaccinationLogs,
    TResult Function(bool check, String notes, DateTime date)?
    addVaccinationLog,
    required TResult orElse(),
  }) {
    if (addVaccinationLog != null) {
      return addVaccinationLog(check, notes, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadVaccinationLogs value) loadVaccinationLogs,
    required TResult Function(_AddVaccinationLog value) addVaccinationLog,
  }) {
    return addVaccinationLog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadVaccinationLogs value)? loadVaccinationLogs,
    TResult? Function(_AddVaccinationLog value)? addVaccinationLog,
  }) {
    return addVaccinationLog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadVaccinationLogs value)? loadVaccinationLogs,
    TResult Function(_AddVaccinationLog value)? addVaccinationLog,
    required TResult orElse(),
  }) {
    if (addVaccinationLog != null) {
      return addVaccinationLog(this);
    }
    return orElse();
  }
}

abstract class _AddVaccinationLog implements VaccinationDetailsEvent {
  const factory _AddVaccinationLog({
    required final bool check,
    required final String notes,
    required final DateTime date,
  }) = _$AddVaccinationLogImpl;

  bool get check;
  String get notes;
  DateTime get date;

  /// Create a copy of VaccinationDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddVaccinationLogImplCopyWith<_$AddVaccinationLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VaccinationDetailsState {
  Status get initStatus => throw _privateConstructorUsedError;
  Status get addLogStatus => throw _privateConstructorUsedError;
  PetVaccination? get vaccination => throw _privateConstructorUsedError;
  Status get logsStatus => throw _privateConstructorUsedError;
  VaccinationLogView? get vaccinationLog => throw _privateConstructorUsedError;

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
  $Res call({
    Status initStatus,
    Status addLogStatus,
    PetVaccination? vaccination,
    Status logsStatus,
    VaccinationLogView? vaccinationLog,
  });
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
  $Res call({
    Object? initStatus = null,
    Object? addLogStatus = null,
    Object? vaccination = freezed,
    Object? logsStatus = null,
    Object? vaccinationLog = freezed,
  }) {
    return _then(
      _value.copyWith(
            initStatus:
                null == initStatus
                    ? _value.initStatus
                    : initStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            addLogStatus:
                null == addLogStatus
                    ? _value.addLogStatus
                    : addLogStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            vaccination:
                freezed == vaccination
                    ? _value.vaccination
                    : vaccination // ignore: cast_nullable_to_non_nullable
                        as PetVaccination?,
            logsStatus:
                null == logsStatus
                    ? _value.logsStatus
                    : logsStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            vaccinationLog:
                freezed == vaccinationLog
                    ? _value.vaccinationLog
                    : vaccinationLog // ignore: cast_nullable_to_non_nullable
                        as VaccinationLogView?,
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
  $Res call({
    Status initStatus,
    Status addLogStatus,
    PetVaccination? vaccination,
    Status logsStatus,
    VaccinationLogView? vaccinationLog,
  });
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
  $Res call({
    Object? initStatus = null,
    Object? addLogStatus = null,
    Object? vaccination = freezed,
    Object? logsStatus = null,
    Object? vaccinationLog = freezed,
  }) {
    return _then(
      _$VaccinationDetailsStateImpl(
        initStatus:
            null == initStatus
                ? _value.initStatus
                : initStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        addLogStatus:
            null == addLogStatus
                ? _value.addLogStatus
                : addLogStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        vaccination:
            freezed == vaccination
                ? _value.vaccination
                : vaccination // ignore: cast_nullable_to_non_nullable
                    as PetVaccination?,
        logsStatus:
            null == logsStatus
                ? _value.logsStatus
                : logsStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        vaccinationLog:
            freezed == vaccinationLog
                ? _value.vaccinationLog
                : vaccinationLog // ignore: cast_nullable_to_non_nullable
                    as VaccinationLogView?,
      ),
    );
  }
}

/// @nodoc

class _$VaccinationDetailsStateImpl implements _VaccinationDetailsState {
  const _$VaccinationDetailsStateImpl({
    this.initStatus = Status.init,
    this.addLogStatus = Status.init,
    this.vaccination = null,
    this.logsStatus = Status.init,
    this.vaccinationLog = null,
  });

  @override
  @JsonKey()
  final Status initStatus;
  @override
  @JsonKey()
  final Status addLogStatus;
  @override
  @JsonKey()
  final PetVaccination? vaccination;
  @override
  @JsonKey()
  final Status logsStatus;
  @override
  @JsonKey()
  final VaccinationLogView? vaccinationLog;

  @override
  String toString() {
    return 'VaccinationDetailsState(initStatus: $initStatus, addLogStatus: $addLogStatus, vaccination: $vaccination, logsStatus: $logsStatus, vaccinationLog: $vaccinationLog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaccinationDetailsStateImpl &&
            (identical(other.initStatus, initStatus) ||
                other.initStatus == initStatus) &&
            (identical(other.addLogStatus, addLogStatus) ||
                other.addLogStatus == addLogStatus) &&
            (identical(other.vaccination, vaccination) ||
                other.vaccination == vaccination) &&
            (identical(other.logsStatus, logsStatus) ||
                other.logsStatus == logsStatus) &&
            (identical(other.vaccinationLog, vaccinationLog) ||
                other.vaccinationLog == vaccinationLog));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    initStatus,
    addLogStatus,
    vaccination,
    logsStatus,
    vaccinationLog,
  );

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
    final Status addLogStatus,
    final PetVaccination? vaccination,
    final Status logsStatus,
    final VaccinationLogView? vaccinationLog,
  }) = _$VaccinationDetailsStateImpl;

  @override
  Status get initStatus;
  @override
  Status get addLogStatus;
  @override
  PetVaccination? get vaccination;
  @override
  Status get logsStatus;
  @override
  VaccinationLogView? get vaccinationLog;

  /// Create a copy of VaccinationDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VaccinationDetailsStateImplCopyWith<_$VaccinationDetailsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
