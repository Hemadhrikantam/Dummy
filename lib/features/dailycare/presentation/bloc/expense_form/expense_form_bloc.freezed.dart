// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ExpenseFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) category,
    required TResult Function(String value) notes,
    required TResult Function(String value) amount,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? category,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? amount,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? category,
    TResult Function(String value)? notes,
    TResult Function(String value)? amount,
    TResult Function(String value)? media,
    TResult Function()? submit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_Category value) category,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Amount value) amount,
    required TResult Function(_Media value) media,
    required TResult Function(_Submit value) submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_Category value)? category,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Amount value)? amount,
    TResult? Function(_Media value)? media,
    TResult? Function(_Submit value)? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_Category value)? category,
    TResult Function(_Notes value)? notes,
    TResult Function(_Amount value)? amount,
    TResult Function(_Media value)? media,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseFormEventCopyWith<$Res> {
  factory $ExpenseFormEventCopyWith(
    ExpenseFormEvent value,
    $Res Function(ExpenseFormEvent) then,
  ) = _$ExpenseFormEventCopyWithImpl<$Res, ExpenseFormEvent>;
}

/// @nodoc
class _$ExpenseFormEventCopyWithImpl<$Res, $Val extends ExpenseFormEvent>
    implements $ExpenseFormEventCopyWith<$Res> {
  _$ExpenseFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
    _$InitImpl value,
    $Res Function(_$InitImpl) then,
  ) = __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String petId});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? petId = null}) {
    return _then(
      _$InitImpl(
        null == petId
            ? _value.petId
            : petId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$InitImpl with DiagnosticableTreeMixin implements _Init {
  const _$InitImpl(this.petId);

  @override
  final String petId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExpenseFormEvent.init(petId: $petId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExpenseFormEvent.init'))
      ..add(DiagnosticsProperty('petId', petId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.petId, petId) || other.petId == petId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, petId);

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) category,
    required TResult Function(String value) notes,
    required TResult Function(String value) amount,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return init(petId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? category,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? amount,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return init?.call(petId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? category,
    TResult Function(String value)? notes,
    TResult Function(String value)? amount,
    TResult Function(String value)? media,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(petId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_Category value) category,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Amount value) amount,
    required TResult Function(_Media value) media,
    required TResult Function(_Submit value) submit,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_Category value)? category,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Amount value)? amount,
    TResult? Function(_Media value)? media,
    TResult? Function(_Submit value)? submit,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_Category value)? category,
    TResult Function(_Notes value)? notes,
    TResult Function(_Amount value)? amount,
    TResult Function(_Media value)? media,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ExpenseFormEvent {
  const factory _Init(final String petId) = _$InitImpl;

  String get petId;

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateImplCopyWith<$Res> {
  factory _$$DateImplCopyWith(
    _$DateImpl value,
    $Res Function(_$DateImpl) then,
  ) = __$$DateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$DateImplCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$DateImpl>
    implements _$$DateImplCopyWith<$Res> {
  __$$DateImplCopyWithImpl(_$DateImpl _value, $Res Function(_$DateImpl) _then)
    : super(_value, _then);

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$DateImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DateImpl with DiagnosticableTreeMixin implements _Date {
  const _$DateImpl(this.value);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExpenseFormEvent.date(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExpenseFormEvent.date'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      __$$DateImplCopyWithImpl<_$DateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) category,
    required TResult Function(String value) notes,
    required TResult Function(String value) amount,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return date(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? category,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? amount,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return date?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? category,
    TResult Function(String value)? notes,
    TResult Function(String value)? amount,
    TResult Function(String value)? media,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_Category value) category,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Amount value) amount,
    required TResult Function(_Media value) media,
    required TResult Function(_Submit value) submit,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_Category value)? category,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Amount value)? amount,
    TResult? Function(_Media value)? media,
    TResult? Function(_Submit value)? submit,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_Category value)? category,
    TResult Function(_Notes value)? notes,
    TResult Function(_Amount value)? amount,
    TResult Function(_Media value)? media,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }
}

abstract class _Date implements ExpenseFormEvent {
  const factory _Date(final String value) = _$DateImpl;

  String get value;

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
    _$CategoryImpl value,
    $Res Function(_$CategoryImpl) then,
  ) = __$$CategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DropStringItem value});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
    _$CategoryImpl _value,
    $Res Function(_$CategoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$CategoryImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as DropStringItem,
      ),
    );
  }
}

/// @nodoc

class _$CategoryImpl with DiagnosticableTreeMixin implements _Category {
  const _$CategoryImpl(this.value);

  @override
  final DropStringItem value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExpenseFormEvent.category(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExpenseFormEvent.category'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) category,
    required TResult Function(String value) notes,
    required TResult Function(String value) amount,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return category(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? category,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? amount,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return category?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? category,
    TResult Function(String value)? notes,
    TResult Function(String value)? amount,
    TResult Function(String value)? media,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (category != null) {
      return category(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_Category value) category,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Amount value) amount,
    required TResult Function(_Media value) media,
    required TResult Function(_Submit value) submit,
  }) {
    return category(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_Category value)? category,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Amount value)? amount,
    TResult? Function(_Media value)? media,
    TResult? Function(_Submit value)? submit,
  }) {
    return category?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_Category value)? category,
    TResult Function(_Notes value)? notes,
    TResult Function(_Amount value)? amount,
    TResult Function(_Media value)? media,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (category != null) {
      return category(this);
    }
    return orElse();
  }
}

abstract class _Category implements ExpenseFormEvent {
  const factory _Category(final DropStringItem value) = _$CategoryImpl;

  DropStringItem get value;

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotesImplCopyWith<$Res> {
  factory _$$NotesImplCopyWith(
    _$NotesImpl value,
    $Res Function(_$NotesImpl) then,
  ) = __$$NotesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$NotesImplCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$NotesImpl>
    implements _$$NotesImplCopyWith<$Res> {
  __$$NotesImplCopyWithImpl(
    _$NotesImpl _value,
    $Res Function(_$NotesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$NotesImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$NotesImpl with DiagnosticableTreeMixin implements _Notes {
  const _$NotesImpl(this.value);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExpenseFormEvent.notes(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExpenseFormEvent.notes'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesImplCopyWith<_$NotesImpl> get copyWith =>
      __$$NotesImplCopyWithImpl<_$NotesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) category,
    required TResult Function(String value) notes,
    required TResult Function(String value) amount,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return notes(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? category,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? amount,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return notes?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? category,
    TResult Function(String value)? notes,
    TResult Function(String value)? amount,
    TResult Function(String value)? media,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (notes != null) {
      return notes(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_Category value) category,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Amount value) amount,
    required TResult Function(_Media value) media,
    required TResult Function(_Submit value) submit,
  }) {
    return notes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_Category value)? category,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Amount value)? amount,
    TResult? Function(_Media value)? media,
    TResult? Function(_Submit value)? submit,
  }) {
    return notes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_Category value)? category,
    TResult Function(_Notes value)? notes,
    TResult Function(_Amount value)? amount,
    TResult Function(_Media value)? media,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (notes != null) {
      return notes(this);
    }
    return orElse();
  }
}

abstract class _Notes implements ExpenseFormEvent {
  const factory _Notes(final String value) = _$NotesImpl;

  String get value;

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotesImplCopyWith<_$NotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AmountImplCopyWith<$Res> {
  factory _$$AmountImplCopyWith(
    _$AmountImpl value,
    $Res Function(_$AmountImpl) then,
  ) = __$$AmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$AmountImplCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$AmountImpl>
    implements _$$AmountImplCopyWith<$Res> {
  __$$AmountImplCopyWithImpl(
    _$AmountImpl _value,
    $Res Function(_$AmountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$AmountImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$AmountImpl with DiagnosticableTreeMixin implements _Amount {
  const _$AmountImpl(this.value);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExpenseFormEvent.amount(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExpenseFormEvent.amount'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountImplCopyWith<_$AmountImpl> get copyWith =>
      __$$AmountImplCopyWithImpl<_$AmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) category,
    required TResult Function(String value) notes,
    required TResult Function(String value) amount,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return amount(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? category,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? amount,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return amount?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? category,
    TResult Function(String value)? notes,
    TResult Function(String value)? amount,
    TResult Function(String value)? media,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (amount != null) {
      return amount(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_Category value) category,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Amount value) amount,
    required TResult Function(_Media value) media,
    required TResult Function(_Submit value) submit,
  }) {
    return amount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_Category value)? category,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Amount value)? amount,
    TResult? Function(_Media value)? media,
    TResult? Function(_Submit value)? submit,
  }) {
    return amount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_Category value)? category,
    TResult Function(_Notes value)? notes,
    TResult Function(_Amount value)? amount,
    TResult Function(_Media value)? media,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (amount != null) {
      return amount(this);
    }
    return orElse();
  }
}

abstract class _Amount implements ExpenseFormEvent {
  const factory _Amount(final String value) = _$AmountImpl;

  String get value;

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AmountImplCopyWith<_$AmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaImplCopyWith<$Res> {
  factory _$$MediaImplCopyWith(
    _$MediaImpl value,
    $Res Function(_$MediaImpl) then,
  ) = __$$MediaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$MediaImplCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
    _$MediaImpl _value,
    $Res Function(_$MediaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$MediaImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$MediaImpl with DiagnosticableTreeMixin implements _Media {
  const _$MediaImpl(this.value);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExpenseFormEvent.media(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExpenseFormEvent.media'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      __$$MediaImplCopyWithImpl<_$MediaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) category,
    required TResult Function(String value) notes,
    required TResult Function(String value) amount,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return media(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? category,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? amount,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return media?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? category,
    TResult Function(String value)? notes,
    TResult Function(String value)? amount,
    TResult Function(String value)? media,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (media != null) {
      return media(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_Category value) category,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Amount value) amount,
    required TResult Function(_Media value) media,
    required TResult Function(_Submit value) submit,
  }) {
    return media(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_Category value)? category,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Amount value)? amount,
    TResult? Function(_Media value)? media,
    TResult? Function(_Submit value)? submit,
  }) {
    return media?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_Category value)? category,
    TResult Function(_Notes value)? notes,
    TResult Function(_Amount value)? amount,
    TResult Function(_Media value)? media,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (media != null) {
      return media(this);
    }
    return orElse();
  }
}

abstract class _Media implements ExpenseFormEvent {
  const factory _Media(final String value) = _$MediaImpl;

  String get value;

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
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
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
    _$SubmitImpl _value,
    $Res Function(_$SubmitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExpenseFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl with DiagnosticableTreeMixin implements _Submit {
  const _$SubmitImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExpenseFormEvent.submit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ExpenseFormEvent.submit'));
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
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) category,
    required TResult Function(String value) notes,
    required TResult Function(String value) amount,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? category,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? amount,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? category,
    TResult Function(String value)? notes,
    TResult Function(String value)? amount,
    TResult Function(String value)? media,
    TResult Function()? submit,
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
    required TResult Function(_Date value) date,
    required TResult Function(_Category value) category,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Amount value) amount,
    required TResult Function(_Media value) media,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_Category value)? category,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Amount value)? amount,
    TResult? Function(_Media value)? media,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_Category value)? category,
    TResult Function(_Notes value)? notes,
    TResult Function(_Amount value)? amount,
    TResult Function(_Media value)? media,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements ExpenseFormEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
mixin _$ExpenseFormState {
  Status get submitStatus => throw _privateConstructorUsedError;
  NotEmpty get date => throw _privateConstructorUsedError;
  NotEmpty get amount => throw _privateConstructorUsedError;
  DropdownStringValue get category => throw _privateConstructorUsedError;
  NotEmpty get notes => throw _privateConstructorUsedError;
  NotEmpty get media => throw _privateConstructorUsedError;
  List<DropStringItem> get categories => throw _privateConstructorUsedError;
  bool get validation => throw _privateConstructorUsedError;
  String get petId => throw _privateConstructorUsedError;

  /// Create a copy of ExpenseFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpenseFormStateCopyWith<ExpenseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseFormStateCopyWith<$Res> {
  factory $ExpenseFormStateCopyWith(
    ExpenseFormState value,
    $Res Function(ExpenseFormState) then,
  ) = _$ExpenseFormStateCopyWithImpl<$Res, ExpenseFormState>;
  @useResult
  $Res call({
    Status submitStatus,
    NotEmpty date,
    NotEmpty amount,
    DropdownStringValue category,
    NotEmpty notes,
    NotEmpty media,
    List<DropStringItem> categories,
    bool validation,
    String petId,
  });
}

/// @nodoc
class _$ExpenseFormStateCopyWithImpl<$Res, $Val extends ExpenseFormState>
    implements $ExpenseFormStateCopyWith<$Res> {
  _$ExpenseFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpenseFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitStatus = null,
    Object? date = null,
    Object? amount = null,
    Object? category = null,
    Object? notes = null,
    Object? media = null,
    Object? categories = null,
    Object? validation = null,
    Object? petId = null,
  }) {
    return _then(
      _value.copyWith(
            submitStatus:
                null == submitStatus
                    ? _value.submitStatus
                    : submitStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            category:
                null == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as DropdownStringValue,
            notes:
                null == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            media:
                null == media
                    ? _value.media
                    : media // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            categories:
                null == categories
                    ? _value.categories
                    : categories // ignore: cast_nullable_to_non_nullable
                        as List<DropStringItem>,
            validation:
                null == validation
                    ? _value.validation
                    : validation // ignore: cast_nullable_to_non_nullable
                        as bool,
            petId:
                null == petId
                    ? _value.petId
                    : petId // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExpenseFormStateImplCopyWith<$Res>
    implements $ExpenseFormStateCopyWith<$Res> {
  factory _$$ExpenseFormStateImplCopyWith(
    _$ExpenseFormStateImpl value,
    $Res Function(_$ExpenseFormStateImpl) then,
  ) = __$$ExpenseFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status submitStatus,
    NotEmpty date,
    NotEmpty amount,
    DropdownStringValue category,
    NotEmpty notes,
    NotEmpty media,
    List<DropStringItem> categories,
    bool validation,
    String petId,
  });
}

/// @nodoc
class __$$ExpenseFormStateImplCopyWithImpl<$Res>
    extends _$ExpenseFormStateCopyWithImpl<$Res, _$ExpenseFormStateImpl>
    implements _$$ExpenseFormStateImplCopyWith<$Res> {
  __$$ExpenseFormStateImplCopyWithImpl(
    _$ExpenseFormStateImpl _value,
    $Res Function(_$ExpenseFormStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExpenseFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitStatus = null,
    Object? date = null,
    Object? amount = null,
    Object? category = null,
    Object? notes = null,
    Object? media = null,
    Object? categories = null,
    Object? validation = null,
    Object? petId = null,
  }) {
    return _then(
      _$ExpenseFormStateImpl(
        submitStatus:
            null == submitStatus
                ? _value.submitStatus
                : submitStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        category:
            null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as DropdownStringValue,
        notes:
            null == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        media:
            null == media
                ? _value.media
                : media // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        categories:
            null == categories
                ? _value._categories
                : categories // ignore: cast_nullable_to_non_nullable
                    as List<DropStringItem>,
        validation:
            null == validation
                ? _value.validation
                : validation // ignore: cast_nullable_to_non_nullable
                    as bool,
        petId:
            null == petId
                ? _value.petId
                : petId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ExpenseFormStateImpl
    with DiagnosticableTreeMixin
    implements _ExpenseFormState {
  const _$ExpenseFormStateImpl({
    this.submitStatus = Status.init,
    this.date = const NotEmpty.pure(),
    this.amount = const NotEmpty.pure(),
    this.category = const DropdownStringValue.pure(),
    this.notes = const NotEmpty.pure(),
    this.media = const NotEmpty.pure(),
    final List<DropStringItem> categories = const [],
    this.validation = false,
    this.petId = '',
  }) : _categories = categories;

  @override
  @JsonKey()
  final Status submitStatus;
  @override
  @JsonKey()
  final NotEmpty date;
  @override
  @JsonKey()
  final NotEmpty amount;
  @override
  @JsonKey()
  final DropdownStringValue category;
  @override
  @JsonKey()
  final NotEmpty notes;
  @override
  @JsonKey()
  final NotEmpty media;
  final List<DropStringItem> _categories;
  @override
  @JsonKey()
  List<DropStringItem> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final bool validation;
  @override
  @JsonKey()
  final String petId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExpenseFormState(submitStatus: $submitStatus, date: $date, amount: $amount, category: $category, notes: $notes, media: $media, categories: $categories, validation: $validation, petId: $petId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExpenseFormState'))
      ..add(DiagnosticsProperty('submitStatus', submitStatus))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('media', media))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('validation', validation))
      ..add(DiagnosticsProperty('petId', petId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseFormStateImpl &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.media, media) || other.media == media) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.petId, petId) || other.petId == petId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    submitStatus,
    date,
    amount,
    category,
    notes,
    media,
    const DeepCollectionEquality().hash(_categories),
    validation,
    petId,
  );

  /// Create a copy of ExpenseFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseFormStateImplCopyWith<_$ExpenseFormStateImpl> get copyWith =>
      __$$ExpenseFormStateImplCopyWithImpl<_$ExpenseFormStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ExpenseFormState implements ExpenseFormState {
  const factory _ExpenseFormState({
    final Status submitStatus,
    final NotEmpty date,
    final NotEmpty amount,
    final DropdownStringValue category,
    final NotEmpty notes,
    final NotEmpty media,
    final List<DropStringItem> categories,
    final bool validation,
    final String petId,
  }) = _$ExpenseFormStateImpl;

  @override
  Status get submitStatus;
  @override
  NotEmpty get date;
  @override
  NotEmpty get amount;
  @override
  DropdownStringValue get category;
  @override
  NotEmpty get notes;
  @override
  NotEmpty get media;
  @override
  List<DropStringItem> get categories;
  @override
  bool get validation;
  @override
  String get petId;

  /// Create a copy of ExpenseFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpenseFormStateImplCopyWith<_$ExpenseFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
