// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccination_log_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$VaccinationLogFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )
    init,
    required TResult Function(bool value) isGiven,
    required TResult Function(String value) notesChanged,
    required TResult Function(DateTime value) dateChanged,
    required TResult Function() submit,
    required TResult Function(bool value) finalDoseCompleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult? Function(bool value)? isGiven,
    TResult? Function(String value)? notesChanged,
    TResult? Function(DateTime value)? dateChanged,
    TResult? Function()? submit,
    TResult? Function(bool value)? finalDoseCompleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult Function(bool value)? isGiven,
    TResult Function(String value)? notesChanged,
    TResult Function(DateTime value)? dateChanged,
    TResult Function()? submit,
    TResult Function(bool value)? finalDoseCompleted,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_IsGiven value) isGiven,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_FinalDoseCompleted value) finalDoseCompleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_IsGiven value)? isGiven,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_FinalDoseCompleted value)? finalDoseCompleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_IsGiven value)? isGiven,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_FinalDoseCompleted value)? finalDoseCompleted,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccinationLogFormEventCopyWith<$Res> {
  factory $VaccinationLogFormEventCopyWith(
    VaccinationLogFormEvent value,
    $Res Function(VaccinationLogFormEvent) then,
  ) = _$VaccinationLogFormEventCopyWithImpl<$Res, VaccinationLogFormEvent>;
}

/// @nodoc
class _$VaccinationLogFormEventCopyWithImpl<
  $Res,
  $Val extends VaccinationLogFormEvent
>
    implements $VaccinationLogFormEventCopyWith<$Res> {
  _$VaccinationLogFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
    _$InitImpl value,
    $Res Function(_$InitImpl) then,
  ) = __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String vaccinationId, bool? check, DateTime? date, String? notes});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$VaccinationLogFormEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccinationId = null,
    Object? check = freezed,
    Object? date = freezed,
    Object? notes = freezed,
  }) {
    return _then(
      _$InitImpl(
        vaccinationId:
            null == vaccinationId
                ? _value.vaccinationId
                : vaccinationId // ignore: cast_nullable_to_non_nullable
                    as String,
        check:
            freezed == check
                ? _value.check
                : check // ignore: cast_nullable_to_non_nullable
                    as bool?,
        date:
            freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        notes:
            freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl({
    required this.vaccinationId,
    this.check,
    this.date,
    this.notes,
  });

  @override
  final String vaccinationId;
  @override
  final bool? check;
  @override
  final DateTime? date;
  @override
  final String? notes;

  @override
  String toString() {
    return 'VaccinationLogFormEvent.init(vaccinationId: $vaccinationId, check: $check, date: $date, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.vaccinationId, vaccinationId) ||
                other.vaccinationId == vaccinationId) &&
            (identical(other.check, check) || other.check == check) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, vaccinationId, check, date, notes);

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )
    init,
    required TResult Function(bool value) isGiven,
    required TResult Function(String value) notesChanged,
    required TResult Function(DateTime value) dateChanged,
    required TResult Function() submit,
    required TResult Function(bool value) finalDoseCompleted,
  }) {
    return init(vaccinationId, check, date, notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult? Function(bool value)? isGiven,
    TResult? Function(String value)? notesChanged,
    TResult? Function(DateTime value)? dateChanged,
    TResult? Function()? submit,
    TResult? Function(bool value)? finalDoseCompleted,
  }) {
    return init?.call(vaccinationId, check, date, notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult Function(bool value)? isGiven,
    TResult Function(String value)? notesChanged,
    TResult Function(DateTime value)? dateChanged,
    TResult Function()? submit,
    TResult Function(bool value)? finalDoseCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(vaccinationId, check, date, notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_IsGiven value) isGiven,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_FinalDoseCompleted value) finalDoseCompleted,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_IsGiven value)? isGiven,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_FinalDoseCompleted value)? finalDoseCompleted,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_IsGiven value)? isGiven,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_FinalDoseCompleted value)? finalDoseCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements VaccinationLogFormEvent {
  const factory _Init({
    required final String vaccinationId,
    final bool? check,
    final DateTime? date,
    final String? notes,
  }) = _$InitImpl;

  String get vaccinationId;
  bool? get check;
  DateTime? get date;
  String? get notes;

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsGivenImplCopyWith<$Res> {
  factory _$$IsGivenImplCopyWith(
    _$IsGivenImpl value,
    $Res Function(_$IsGivenImpl) then,
  ) = __$$IsGivenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$IsGivenImplCopyWithImpl<$Res>
    extends _$VaccinationLogFormEventCopyWithImpl<$Res, _$IsGivenImpl>
    implements _$$IsGivenImplCopyWith<$Res> {
  __$$IsGivenImplCopyWithImpl(
    _$IsGivenImpl _value,
    $Res Function(_$IsGivenImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$IsGivenImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as bool,
      ),
    );
  }
}

/// @nodoc

class _$IsGivenImpl implements _IsGiven {
  const _$IsGivenImpl(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'VaccinationLogFormEvent.isGiven(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsGivenImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsGivenImplCopyWith<_$IsGivenImpl> get copyWith =>
      __$$IsGivenImplCopyWithImpl<_$IsGivenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )
    init,
    required TResult Function(bool value) isGiven,
    required TResult Function(String value) notesChanged,
    required TResult Function(DateTime value) dateChanged,
    required TResult Function() submit,
    required TResult Function(bool value) finalDoseCompleted,
  }) {
    return isGiven(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult? Function(bool value)? isGiven,
    TResult? Function(String value)? notesChanged,
    TResult? Function(DateTime value)? dateChanged,
    TResult? Function()? submit,
    TResult? Function(bool value)? finalDoseCompleted,
  }) {
    return isGiven?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult Function(bool value)? isGiven,
    TResult Function(String value)? notesChanged,
    TResult Function(DateTime value)? dateChanged,
    TResult Function()? submit,
    TResult Function(bool value)? finalDoseCompleted,
    required TResult orElse(),
  }) {
    if (isGiven != null) {
      return isGiven(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_IsGiven value) isGiven,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_FinalDoseCompleted value) finalDoseCompleted,
  }) {
    return isGiven(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_IsGiven value)? isGiven,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_FinalDoseCompleted value)? finalDoseCompleted,
  }) {
    return isGiven?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_IsGiven value)? isGiven,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_FinalDoseCompleted value)? finalDoseCompleted,
    required TResult orElse(),
  }) {
    if (isGiven != null) {
      return isGiven(this);
    }
    return orElse();
  }
}

abstract class _IsGiven implements VaccinationLogFormEvent {
  const factory _IsGiven(final bool value) = _$IsGivenImpl;

  bool get value;

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsGivenImplCopyWith<_$IsGivenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotesChangedImplCopyWith<$Res> {
  factory _$$NotesChangedImplCopyWith(
    _$NotesChangedImpl value,
    $Res Function(_$NotesChangedImpl) then,
  ) = __$$NotesChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$NotesChangedImplCopyWithImpl<$Res>
    extends _$VaccinationLogFormEventCopyWithImpl<$Res, _$NotesChangedImpl>
    implements _$$NotesChangedImplCopyWith<$Res> {
  __$$NotesChangedImplCopyWithImpl(
    _$NotesChangedImpl _value,
    $Res Function(_$NotesChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$NotesChangedImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$NotesChangedImpl implements _NotesChanged {
  const _$NotesChangedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'VaccinationLogFormEvent.notesChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesChangedImplCopyWith<_$NotesChangedImpl> get copyWith =>
      __$$NotesChangedImplCopyWithImpl<_$NotesChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )
    init,
    required TResult Function(bool value) isGiven,
    required TResult Function(String value) notesChanged,
    required TResult Function(DateTime value) dateChanged,
    required TResult Function() submit,
    required TResult Function(bool value) finalDoseCompleted,
  }) {
    return notesChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult? Function(bool value)? isGiven,
    TResult? Function(String value)? notesChanged,
    TResult? Function(DateTime value)? dateChanged,
    TResult? Function()? submit,
    TResult? Function(bool value)? finalDoseCompleted,
  }) {
    return notesChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult Function(bool value)? isGiven,
    TResult Function(String value)? notesChanged,
    TResult Function(DateTime value)? dateChanged,
    TResult Function()? submit,
    TResult Function(bool value)? finalDoseCompleted,
    required TResult orElse(),
  }) {
    if (notesChanged != null) {
      return notesChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_IsGiven value) isGiven,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_FinalDoseCompleted value) finalDoseCompleted,
  }) {
    return notesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_IsGiven value)? isGiven,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_FinalDoseCompleted value)? finalDoseCompleted,
  }) {
    return notesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_IsGiven value)? isGiven,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_FinalDoseCompleted value)? finalDoseCompleted,
    required TResult orElse(),
  }) {
    if (notesChanged != null) {
      return notesChanged(this);
    }
    return orElse();
  }
}

abstract class _NotesChanged implements VaccinationLogFormEvent {
  const factory _NotesChanged(final String value) = _$NotesChangedImpl;

  String get value;

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotesChangedImplCopyWith<_$NotesChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateChangedImplCopyWith<$Res> {
  factory _$$DateChangedImplCopyWith(
    _$DateChangedImpl value,
    $Res Function(_$DateChangedImpl) then,
  ) = __$$DateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime value});
}

/// @nodoc
class __$$DateChangedImplCopyWithImpl<$Res>
    extends _$VaccinationLogFormEventCopyWithImpl<$Res, _$DateChangedImpl>
    implements _$$DateChangedImplCopyWith<$Res> {
  __$$DateChangedImplCopyWithImpl(
    _$DateChangedImpl _value,
    $Res Function(_$DateChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$DateChangedImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$DateChangedImpl implements _DateChanged {
  const _$DateChangedImpl(this.value);

  @override
  final DateTime value;

  @override
  String toString() {
    return 'VaccinationLogFormEvent.dateChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
      __$$DateChangedImplCopyWithImpl<_$DateChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )
    init,
    required TResult Function(bool value) isGiven,
    required TResult Function(String value) notesChanged,
    required TResult Function(DateTime value) dateChanged,
    required TResult Function() submit,
    required TResult Function(bool value) finalDoseCompleted,
  }) {
    return dateChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult? Function(bool value)? isGiven,
    TResult? Function(String value)? notesChanged,
    TResult? Function(DateTime value)? dateChanged,
    TResult? Function()? submit,
    TResult? Function(bool value)? finalDoseCompleted,
  }) {
    return dateChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult Function(bool value)? isGiven,
    TResult Function(String value)? notesChanged,
    TResult Function(DateTime value)? dateChanged,
    TResult Function()? submit,
    TResult Function(bool value)? finalDoseCompleted,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_IsGiven value) isGiven,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_FinalDoseCompleted value) finalDoseCompleted,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_IsGiven value)? isGiven,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_FinalDoseCompleted value)? finalDoseCompleted,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_IsGiven value)? isGiven,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_FinalDoseCompleted value)? finalDoseCompleted,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements VaccinationLogFormEvent {
  const factory _DateChanged(final DateTime value) = _$DateChangedImpl;

  DateTime get value;

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
    _$SubmitImpl value,
    $Res Function(_$SubmitImpl) then,
  ) = __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$VaccinationLogFormEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
    _$SubmitImpl _value,
    $Res Function(_$SubmitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'VaccinationLogFormEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )
    init,
    required TResult Function(bool value) isGiven,
    required TResult Function(String value) notesChanged,
    required TResult Function(DateTime value) dateChanged,
    required TResult Function() submit,
    required TResult Function(bool value) finalDoseCompleted,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult? Function(bool value)? isGiven,
    TResult? Function(String value)? notesChanged,
    TResult? Function(DateTime value)? dateChanged,
    TResult? Function()? submit,
    TResult? Function(bool value)? finalDoseCompleted,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult Function(bool value)? isGiven,
    TResult Function(String value)? notesChanged,
    TResult Function(DateTime value)? dateChanged,
    TResult Function()? submit,
    TResult Function(bool value)? finalDoseCompleted,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_IsGiven value) isGiven,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_FinalDoseCompleted value) finalDoseCompleted,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_IsGiven value)? isGiven,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_FinalDoseCompleted value)? finalDoseCompleted,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_IsGiven value)? isGiven,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_FinalDoseCompleted value)? finalDoseCompleted,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements VaccinationLogFormEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
abstract class _$$FinalDoseCompletedImplCopyWith<$Res> {
  factory _$$FinalDoseCompletedImplCopyWith(
    _$FinalDoseCompletedImpl value,
    $Res Function(_$FinalDoseCompletedImpl) then,
  ) = __$$FinalDoseCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$FinalDoseCompletedImplCopyWithImpl<$Res>
    extends
        _$VaccinationLogFormEventCopyWithImpl<$Res, _$FinalDoseCompletedImpl>
    implements _$$FinalDoseCompletedImplCopyWith<$Res> {
  __$$FinalDoseCompletedImplCopyWithImpl(
    _$FinalDoseCompletedImpl _value,
    $Res Function(_$FinalDoseCompletedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$FinalDoseCompletedImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as bool,
      ),
    );
  }
}

/// @nodoc

class _$FinalDoseCompletedImpl implements _FinalDoseCompleted {
  const _$FinalDoseCompletedImpl(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'VaccinationLogFormEvent.finalDoseCompleted(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinalDoseCompletedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinalDoseCompletedImplCopyWith<_$FinalDoseCompletedImpl> get copyWith =>
      __$$FinalDoseCompletedImplCopyWithImpl<_$FinalDoseCompletedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )
    init,
    required TResult Function(bool value) isGiven,
    required TResult Function(String value) notesChanged,
    required TResult Function(DateTime value) dateChanged,
    required TResult Function() submit,
    required TResult Function(bool value) finalDoseCompleted,
  }) {
    return finalDoseCompleted(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult? Function(bool value)? isGiven,
    TResult? Function(String value)? notesChanged,
    TResult? Function(DateTime value)? dateChanged,
    TResult? Function()? submit,
    TResult? Function(bool value)? finalDoseCompleted,
  }) {
    return finalDoseCompleted?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String vaccinationId,
      bool? check,
      DateTime? date,
      String? notes,
    )?
    init,
    TResult Function(bool value)? isGiven,
    TResult Function(String value)? notesChanged,
    TResult Function(DateTime value)? dateChanged,
    TResult Function()? submit,
    TResult Function(bool value)? finalDoseCompleted,
    required TResult orElse(),
  }) {
    if (finalDoseCompleted != null) {
      return finalDoseCompleted(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_IsGiven value) isGiven,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_FinalDoseCompleted value) finalDoseCompleted,
  }) {
    return finalDoseCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_IsGiven value)? isGiven,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_FinalDoseCompleted value)? finalDoseCompleted,
  }) {
    return finalDoseCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_IsGiven value)? isGiven,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_FinalDoseCompleted value)? finalDoseCompleted,
    required TResult orElse(),
  }) {
    if (finalDoseCompleted != null) {
      return finalDoseCompleted(this);
    }
    return orElse();
  }
}

abstract class _FinalDoseCompleted implements VaccinationLogFormEvent {
  const factory _FinalDoseCompleted(final bool value) =
      _$FinalDoseCompletedImpl;

  bool get value;

  /// Create a copy of VaccinationLogFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinalDoseCompletedImplCopyWith<_$FinalDoseCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VaccinationLogFormState {
  String? get vaccinationId => throw _privateConstructorUsedError;
  bool get check => throw _privateConstructorUsedError;
  bool get isFinalDoseCompleted => throw _privateConstructorUsedError;
  NotEmpty get notes => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  Status get submitStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get validation => throw _privateConstructorUsedError;

  /// Create a copy of VaccinationLogFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VaccinationLogFormStateCopyWith<VaccinationLogFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccinationLogFormStateCopyWith<$Res> {
  factory $VaccinationLogFormStateCopyWith(
    VaccinationLogFormState value,
    $Res Function(VaccinationLogFormState) then,
  ) = _$VaccinationLogFormStateCopyWithImpl<$Res, VaccinationLogFormState>;
  @useResult
  $Res call({
    String? vaccinationId,
    bool check,
    bool isFinalDoseCompleted,
    NotEmpty notes,
    DateTime? date,
    Status submitStatus,
    String? errorMessage,
    bool validation,
  });
}

/// @nodoc
class _$VaccinationLogFormStateCopyWithImpl<
  $Res,
  $Val extends VaccinationLogFormState
>
    implements $VaccinationLogFormStateCopyWith<$Res> {
  _$VaccinationLogFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VaccinationLogFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccinationId = freezed,
    Object? check = null,
    Object? isFinalDoseCompleted = null,
    Object? notes = null,
    Object? date = freezed,
    Object? submitStatus = null,
    Object? errorMessage = freezed,
    Object? validation = null,
  }) {
    return _then(
      _value.copyWith(
            vaccinationId:
                freezed == vaccinationId
                    ? _value.vaccinationId
                    : vaccinationId // ignore: cast_nullable_to_non_nullable
                        as String?,
            check:
                null == check
                    ? _value.check
                    : check // ignore: cast_nullable_to_non_nullable
                        as bool,
            isFinalDoseCompleted:
                null == isFinalDoseCompleted
                    ? _value.isFinalDoseCompleted
                    : isFinalDoseCompleted // ignore: cast_nullable_to_non_nullable
                        as bool,
            notes:
                null == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            date:
                freezed == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            submitStatus:
                null == submitStatus
                    ? _value.submitStatus
                    : submitStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
            validation:
                null == validation
                    ? _value.validation
                    : validation // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VaccinationLogFormStateImplCopyWith<$Res>
    implements $VaccinationLogFormStateCopyWith<$Res> {
  factory _$$VaccinationLogFormStateImplCopyWith(
    _$VaccinationLogFormStateImpl value,
    $Res Function(_$VaccinationLogFormStateImpl) then,
  ) = __$$VaccinationLogFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? vaccinationId,
    bool check,
    bool isFinalDoseCompleted,
    NotEmpty notes,
    DateTime? date,
    Status submitStatus,
    String? errorMessage,
    bool validation,
  });
}

/// @nodoc
class __$$VaccinationLogFormStateImplCopyWithImpl<$Res>
    extends
        _$VaccinationLogFormStateCopyWithImpl<
          $Res,
          _$VaccinationLogFormStateImpl
        >
    implements _$$VaccinationLogFormStateImplCopyWith<$Res> {
  __$$VaccinationLogFormStateImplCopyWithImpl(
    _$VaccinationLogFormStateImpl _value,
    $Res Function(_$VaccinationLogFormStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VaccinationLogFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccinationId = freezed,
    Object? check = null,
    Object? isFinalDoseCompleted = null,
    Object? notes = null,
    Object? date = freezed,
    Object? submitStatus = null,
    Object? errorMessage = freezed,
    Object? validation = null,
  }) {
    return _then(
      _$VaccinationLogFormStateImpl(
        vaccinationId:
            freezed == vaccinationId
                ? _value.vaccinationId
                : vaccinationId // ignore: cast_nullable_to_non_nullable
                    as String?,
        check:
            null == check
                ? _value.check
                : check // ignore: cast_nullable_to_non_nullable
                    as bool,
        isFinalDoseCompleted:
            null == isFinalDoseCompleted
                ? _value.isFinalDoseCompleted
                : isFinalDoseCompleted // ignore: cast_nullable_to_non_nullable
                    as bool,
        notes:
            null == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        date:
            freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        submitStatus:
            null == submitStatus
                ? _value.submitStatus
                : submitStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
        validation:
            null == validation
                ? _value.validation
                : validation // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$VaccinationLogFormStateImpl implements _VaccinationLogFormState {
  const _$VaccinationLogFormStateImpl({
    this.vaccinationId,
    this.check = false,
    this.isFinalDoseCompleted = false,
    this.notes = const NotEmpty.pure(),
    this.date,
    this.submitStatus = Status.init,
    this.errorMessage,
    this.validation = false,
  });

  @override
  final String? vaccinationId;
  @override
  @JsonKey()
  final bool check;
  @override
  @JsonKey()
  final bool isFinalDoseCompleted;
  @override
  @JsonKey()
  final NotEmpty notes;
  @override
  final DateTime? date;
  @override
  @JsonKey()
  final Status submitStatus;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool validation;

  @override
  String toString() {
    return 'VaccinationLogFormState(vaccinationId: $vaccinationId, check: $check, isFinalDoseCompleted: $isFinalDoseCompleted, notes: $notes, date: $date, submitStatus: $submitStatus, errorMessage: $errorMessage, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaccinationLogFormStateImpl &&
            (identical(other.vaccinationId, vaccinationId) ||
                other.vaccinationId == vaccinationId) &&
            (identical(other.check, check) || other.check == check) &&
            (identical(other.isFinalDoseCompleted, isFinalDoseCompleted) ||
                other.isFinalDoseCompleted == isFinalDoseCompleted) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.validation, validation) ||
                other.validation == validation));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    vaccinationId,
    check,
    isFinalDoseCompleted,
    notes,
    date,
    submitStatus,
    errorMessage,
    validation,
  );

  /// Create a copy of VaccinationLogFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VaccinationLogFormStateImplCopyWith<_$VaccinationLogFormStateImpl>
  get copyWith => __$$VaccinationLogFormStateImplCopyWithImpl<
    _$VaccinationLogFormStateImpl
  >(this, _$identity);
}

abstract class _VaccinationLogFormState implements VaccinationLogFormState {
  const factory _VaccinationLogFormState({
    final String? vaccinationId,
    final bool check,
    final bool isFinalDoseCompleted,
    final NotEmpty notes,
    final DateTime? date,
    final Status submitStatus,
    final String? errorMessage,
    final bool validation,
  }) = _$VaccinationLogFormStateImpl;

  @override
  String? get vaccinationId;
  @override
  bool get check;
  @override
  bool get isFinalDoseCompleted;
  @override
  NotEmpty get notes;
  @override
  DateTime? get date;
  @override
  Status get submitStatus;
  @override
  String? get errorMessage;
  @override
  bool get validation;

  /// Create a copy of VaccinationLogFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VaccinationLogFormStateImplCopyWith<_$VaccinationLogFormStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
