// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grooming_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GroomingFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) groomingType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? groomingType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? groomingType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function()? submit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_GroomingType value) groomingType,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Media value) media,
    required TResult Function(_Submit value) submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_GroomingType value)? groomingType,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_Submit value)? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_GroomingType value)? groomingType,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroomingFormEventCopyWith<$Res> {
  factory $GroomingFormEventCopyWith(
    GroomingFormEvent value,
    $Res Function(GroomingFormEvent) then,
  ) = _$GroomingFormEventCopyWithImpl<$Res, GroomingFormEvent>;
}

/// @nodoc
class _$GroomingFormEventCopyWithImpl<$Res, $Val extends GroomingFormEvent>
    implements $GroomingFormEventCopyWith<$Res> {
  _$GroomingFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroomingFormEvent
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
    extends _$GroomingFormEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of GroomingFormEvent
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

class _$InitImpl implements _Init {
  const _$InitImpl(this.petId);

  @override
  final String petId;

  @override
  String toString() {
    return 'GroomingFormEvent.init(petId: $petId)';
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

  /// Create a copy of GroomingFormEvent
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
    required TResult Function(DropStringItem value) groomingType,
    required TResult Function(String value) notes,
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
    TResult? Function(DropStringItem value)? groomingType,
    TResult? Function(String value)? notes,
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
    TResult Function(DropStringItem value)? groomingType,
    TResult Function(String value)? notes,
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
    required TResult Function(_GroomingType value) groomingType,
    required TResult Function(_Notes value) notes,
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
    TResult? Function(_GroomingType value)? groomingType,
    TResult? Function(_Notes value)? notes,
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
    TResult Function(_GroomingType value)? groomingType,
    TResult Function(_Notes value)? notes,
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

abstract class _Init implements GroomingFormEvent {
  const factory _Init(final String petId) = _$InitImpl;

  String get petId;

  /// Create a copy of GroomingFormEvent
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
    extends _$GroomingFormEventCopyWithImpl<$Res, _$DateImpl>
    implements _$$DateImplCopyWith<$Res> {
  __$$DateImplCopyWithImpl(_$DateImpl _value, $Res Function(_$DateImpl) _then)
    : super(_value, _then);

  /// Create a copy of GroomingFormEvent
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

class _$DateImpl implements _Date {
  const _$DateImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'GroomingFormEvent.date(value: $value)';
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

  /// Create a copy of GroomingFormEvent
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
    required TResult Function(DropStringItem value) groomingType,
    required TResult Function(String value) notes,
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
    TResult? Function(DropStringItem value)? groomingType,
    TResult? Function(String value)? notes,
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
    TResult Function(DropStringItem value)? groomingType,
    TResult Function(String value)? notes,
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
    required TResult Function(_GroomingType value) groomingType,
    required TResult Function(_Notes value) notes,
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
    TResult? Function(_GroomingType value)? groomingType,
    TResult? Function(_Notes value)? notes,
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
    TResult Function(_GroomingType value)? groomingType,
    TResult Function(_Notes value)? notes,
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

abstract class _Date implements GroomingFormEvent {
  const factory _Date(final String value) = _$DateImpl;

  String get value;

  /// Create a copy of GroomingFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroomingTypeImplCopyWith<$Res> {
  factory _$$GroomingTypeImplCopyWith(
    _$GroomingTypeImpl value,
    $Res Function(_$GroomingTypeImpl) then,
  ) = __$$GroomingTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DropStringItem value});
}

/// @nodoc
class __$$GroomingTypeImplCopyWithImpl<$Res>
    extends _$GroomingFormEventCopyWithImpl<$Res, _$GroomingTypeImpl>
    implements _$$GroomingTypeImplCopyWith<$Res> {
  __$$GroomingTypeImplCopyWithImpl(
    _$GroomingTypeImpl _value,
    $Res Function(_$GroomingTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroomingFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$GroomingTypeImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as DropStringItem,
      ),
    );
  }
}

/// @nodoc

class _$GroomingTypeImpl implements _GroomingType {
  const _$GroomingTypeImpl(this.value);

  @override
  final DropStringItem value;

  @override
  String toString() {
    return 'GroomingFormEvent.groomingType(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroomingTypeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of GroomingFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroomingTypeImplCopyWith<_$GroomingTypeImpl> get copyWith =>
      __$$GroomingTypeImplCopyWithImpl<_$GroomingTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) groomingType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return groomingType(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? groomingType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return groomingType?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? groomingType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (groomingType != null) {
      return groomingType(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_GroomingType value) groomingType,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Media value) media,
    required TResult Function(_Submit value) submit,
  }) {
    return groomingType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_GroomingType value)? groomingType,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_Submit value)? submit,
  }) {
    return groomingType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_GroomingType value)? groomingType,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (groomingType != null) {
      return groomingType(this);
    }
    return orElse();
  }
}

abstract class _GroomingType implements GroomingFormEvent {
  const factory _GroomingType(final DropStringItem value) = _$GroomingTypeImpl;

  DropStringItem get value;

  /// Create a copy of GroomingFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroomingTypeImplCopyWith<_$GroomingTypeImpl> get copyWith =>
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
    extends _$GroomingFormEventCopyWithImpl<$Res, _$NotesImpl>
    implements _$$NotesImplCopyWith<$Res> {
  __$$NotesImplCopyWithImpl(
    _$NotesImpl _value,
    $Res Function(_$NotesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroomingFormEvent
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

class _$NotesImpl implements _Notes {
  const _$NotesImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'GroomingFormEvent.notes(value: $value)';
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

  /// Create a copy of GroomingFormEvent
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
    required TResult Function(DropStringItem value) groomingType,
    required TResult Function(String value) notes,
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
    TResult? Function(DropStringItem value)? groomingType,
    TResult? Function(String value)? notes,
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
    TResult Function(DropStringItem value)? groomingType,
    TResult Function(String value)? notes,
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
    required TResult Function(_GroomingType value) groomingType,
    required TResult Function(_Notes value) notes,
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
    TResult? Function(_GroomingType value)? groomingType,
    TResult? Function(_Notes value)? notes,
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
    TResult Function(_GroomingType value)? groomingType,
    TResult Function(_Notes value)? notes,
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

abstract class _Notes implements GroomingFormEvent {
  const factory _Notes(final String value) = _$NotesImpl;

  String get value;

  /// Create a copy of GroomingFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotesImplCopyWith<_$NotesImpl> get copyWith =>
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
    extends _$GroomingFormEventCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
    _$MediaImpl _value,
    $Res Function(_$MediaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroomingFormEvent
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

class _$MediaImpl implements _Media {
  const _$MediaImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'GroomingFormEvent.media(value: $value)';
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

  /// Create a copy of GroomingFormEvent
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
    required TResult Function(DropStringItem value) groomingType,
    required TResult Function(String value) notes,
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
    TResult? Function(DropStringItem value)? groomingType,
    TResult? Function(String value)? notes,
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
    TResult Function(DropStringItem value)? groomingType,
    TResult Function(String value)? notes,
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
    required TResult Function(_GroomingType value) groomingType,
    required TResult Function(_Notes value) notes,
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
    TResult? Function(_GroomingType value)? groomingType,
    TResult? Function(_Notes value)? notes,
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
    TResult Function(_GroomingType value)? groomingType,
    TResult Function(_Notes value)? notes,
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

abstract class _Media implements GroomingFormEvent {
  const factory _Media(final String value) = _$MediaImpl;

  String get value;

  /// Create a copy of GroomingFormEvent
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
    extends _$GroomingFormEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
    _$SubmitImpl _value,
    $Res Function(_$SubmitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroomingFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'GroomingFormEvent.submit()';
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
    required TResult Function(DropStringItem value) groomingType,
    required TResult Function(String value) notes,
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
    TResult? Function(DropStringItem value)? groomingType,
    TResult? Function(String value)? notes,
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
    TResult Function(DropStringItem value)? groomingType,
    TResult Function(String value)? notes,
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
    required TResult Function(_GroomingType value) groomingType,
    required TResult Function(_Notes value) notes,
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
    TResult? Function(_GroomingType value)? groomingType,
    TResult? Function(_Notes value)? notes,
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
    TResult Function(_GroomingType value)? groomingType,
    TResult Function(_Notes value)? notes,
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

abstract class _Submit implements GroomingFormEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
mixin _$GroomingFormState {
  Status get submitStatus => throw _privateConstructorUsedError;
  NotEmpty get date => throw _privateConstructorUsedError;
  DropdownStringValue get groomingType => throw _privateConstructorUsedError;
  NotEmpty get notes => throw _privateConstructorUsedError;
  NotEmpty get media => throw _privateConstructorUsedError;
  bool get validation => throw _privateConstructorUsedError;
  String get petId => throw _privateConstructorUsedError;
  List<DropStringItem> get groomingTypes => throw _privateConstructorUsedError;
  String get addedGroomingId => throw _privateConstructorUsedError;

  /// Create a copy of GroomingFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroomingFormStateCopyWith<GroomingFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroomingFormStateCopyWith<$Res> {
  factory $GroomingFormStateCopyWith(
    GroomingFormState value,
    $Res Function(GroomingFormState) then,
  ) = _$GroomingFormStateCopyWithImpl<$Res, GroomingFormState>;
  @useResult
  $Res call({
    Status submitStatus,
    NotEmpty date,
    DropdownStringValue groomingType,
    NotEmpty notes,
    NotEmpty media,
    bool validation,
    String petId,
    List<DropStringItem> groomingTypes,
    String addedGroomingId,
  });
}

/// @nodoc
class _$GroomingFormStateCopyWithImpl<$Res, $Val extends GroomingFormState>
    implements $GroomingFormStateCopyWith<$Res> {
  _$GroomingFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroomingFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitStatus = null,
    Object? date = null,
    Object? groomingType = null,
    Object? notes = null,
    Object? media = null,
    Object? validation = null,
    Object? petId = null,
    Object? groomingTypes = null,
    Object? addedGroomingId = null,
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
            groomingType:
                null == groomingType
                    ? _value.groomingType
                    : groomingType // ignore: cast_nullable_to_non_nullable
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
            groomingTypes:
                null == groomingTypes
                    ? _value.groomingTypes
                    : groomingTypes // ignore: cast_nullable_to_non_nullable
                        as List<DropStringItem>,
            addedGroomingId:
                null == addedGroomingId
                    ? _value.addedGroomingId
                    : addedGroomingId // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GroomingFormStateImplCopyWith<$Res>
    implements $GroomingFormStateCopyWith<$Res> {
  factory _$$GroomingFormStateImplCopyWith(
    _$GroomingFormStateImpl value,
    $Res Function(_$GroomingFormStateImpl) then,
  ) = __$$GroomingFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status submitStatus,
    NotEmpty date,
    DropdownStringValue groomingType,
    NotEmpty notes,
    NotEmpty media,
    bool validation,
    String petId,
    List<DropStringItem> groomingTypes,
    String addedGroomingId,
  });
}

/// @nodoc
class __$$GroomingFormStateImplCopyWithImpl<$Res>
    extends _$GroomingFormStateCopyWithImpl<$Res, _$GroomingFormStateImpl>
    implements _$$GroomingFormStateImplCopyWith<$Res> {
  __$$GroomingFormStateImplCopyWithImpl(
    _$GroomingFormStateImpl _value,
    $Res Function(_$GroomingFormStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroomingFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitStatus = null,
    Object? date = null,
    Object? groomingType = null,
    Object? notes = null,
    Object? media = null,
    Object? validation = null,
    Object? petId = null,
    Object? groomingTypes = null,
    Object? addedGroomingId = null,
  }) {
    return _then(
      _$GroomingFormStateImpl(
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
        groomingType:
            null == groomingType
                ? _value.groomingType
                : groomingType // ignore: cast_nullable_to_non_nullable
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
        groomingTypes:
            null == groomingTypes
                ? _value._groomingTypes
                : groomingTypes // ignore: cast_nullable_to_non_nullable
                    as List<DropStringItem>,
        addedGroomingId:
            null == addedGroomingId
                ? _value.addedGroomingId
                : addedGroomingId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$GroomingFormStateImpl implements _GroomingFormState {
  const _$GroomingFormStateImpl({
    this.submitStatus = Status.init,
    this.date = const NotEmpty.pure(),
    this.groomingType = const DropdownStringValue.pure(),
    this.notes = const NotEmpty.pure(),
    this.media = const NotEmpty.pure(),
    this.validation = false,
    this.petId = '',
    final List<DropStringItem> groomingTypes = const [],
    this.addedGroomingId = '',
  }) : _groomingTypes = groomingTypes;

  @override
  @JsonKey()
  final Status submitStatus;
  @override
  @JsonKey()
  final NotEmpty date;
  @override
  @JsonKey()
  final DropdownStringValue groomingType;
  @override
  @JsonKey()
  final NotEmpty notes;
  @override
  @JsonKey()
  final NotEmpty media;
  @override
  @JsonKey()
  final bool validation;
  @override
  @JsonKey()
  final String petId;
  final List<DropStringItem> _groomingTypes;
  @override
  @JsonKey()
  List<DropStringItem> get groomingTypes {
    if (_groomingTypes is EqualUnmodifiableListView) return _groomingTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groomingTypes);
  }

  @override
  @JsonKey()
  final String addedGroomingId;

  @override
  String toString() {
    return 'GroomingFormState(submitStatus: $submitStatus, date: $date, groomingType: $groomingType, notes: $notes, media: $media, validation: $validation, petId: $petId, groomingTypes: $groomingTypes, addedGroomingId: $addedGroomingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroomingFormStateImpl &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.groomingType, groomingType) ||
                other.groomingType == groomingType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.petId, petId) || other.petId == petId) &&
            const DeepCollectionEquality().equals(
              other._groomingTypes,
              _groomingTypes,
            ) &&
            (identical(other.addedGroomingId, addedGroomingId) ||
                other.addedGroomingId == addedGroomingId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    submitStatus,
    date,
    groomingType,
    notes,
    media,
    validation,
    petId,
    const DeepCollectionEquality().hash(_groomingTypes),
    addedGroomingId,
  );

  /// Create a copy of GroomingFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroomingFormStateImplCopyWith<_$GroomingFormStateImpl> get copyWith =>
      __$$GroomingFormStateImplCopyWithImpl<_$GroomingFormStateImpl>(
        this,
        _$identity,
      );
}

abstract class _GroomingFormState implements GroomingFormState {
  const factory _GroomingFormState({
    final Status submitStatus,
    final NotEmpty date,
    final DropdownStringValue groomingType,
    final NotEmpty notes,
    final NotEmpty media,
    final bool validation,
    final String petId,
    final List<DropStringItem> groomingTypes,
    final String addedGroomingId,
  }) = _$GroomingFormStateImpl;

  @override
  Status get submitStatus;
  @override
  NotEmpty get date;
  @override
  DropdownStringValue get groomingType;
  @override
  NotEmpty get notes;
  @override
  NotEmpty get media;
  @override
  bool get validation;
  @override
  String get petId;
  @override
  List<DropStringItem> get groomingTypes;
  @override
  String get addedGroomingId;

  /// Create a copy of GroomingFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroomingFormStateImplCopyWith<_$GroomingFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
