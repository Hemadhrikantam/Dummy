// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MealFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId) init,
    required TResult Function(String value) date,
    required TResult Function(String value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTime,
    required TResult Function() submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(String value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTime,
    TResult? Function()? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(String value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTime,
    TResult Function()? submit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_MealType value) mealType,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Media value) media,
    required TResult Function(_MealTime value) mealTime,
    required TResult Function(_Submit value) submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_MealType value)? mealType,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_MealTime value)? mealTime,
    TResult? Function(_Submit value)? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_MealType value)? mealType,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_MealTime value)? mealTime,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealFormEventCopyWith<$Res> {
  factory $MealFormEventCopyWith(
    MealFormEvent value,
    $Res Function(MealFormEvent) then,
  ) = _$MealFormEventCopyWithImpl<$Res, MealFormEvent>;
}

/// @nodoc
class _$MealFormEventCopyWithImpl<$Res, $Val extends MealFormEvent>
    implements $MealFormEventCopyWith<$Res> {
  _$MealFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
    _$InitImpl value,
    $Res Function(_$InitImpl) then,
  ) = __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int petId});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$MealFormEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? petId = null}) {
    return _then(
      _$InitImpl(
        null == petId
            ? _value.petId
            : petId // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.petId);

  @override
  final int petId;

  @override
  String toString() {
    return 'MealFormEvent.init(petId: $petId)';
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

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId) init,
    required TResult Function(String value) date,
    required TResult Function(String value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTime,
    required TResult Function() submit,
  }) {
    return init(petId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(String value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTime,
    TResult? Function()? submit,
  }) {
    return init?.call(petId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(String value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTime,
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
    required TResult Function(_MealType value) mealType,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Media value) media,
    required TResult Function(_MealTime value) mealTime,
    required TResult Function(_Submit value) submit,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_MealType value)? mealType,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_MealTime value)? mealTime,
    TResult? Function(_Submit value)? submit,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_MealType value)? mealType,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_MealTime value)? mealTime,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements MealFormEvent {
  const factory _Init(final int petId) = _$InitImpl;

  int get petId;

  /// Create a copy of MealFormEvent
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
    extends _$MealFormEventCopyWithImpl<$Res, _$DateImpl>
    implements _$$DateImplCopyWith<$Res> {
  __$$DateImplCopyWithImpl(_$DateImpl _value, $Res Function(_$DateImpl) _then)
    : super(_value, _then);

  /// Create a copy of MealFormEvent
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
    return 'MealFormEvent.date(value: $value)';
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

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      __$$DateImplCopyWithImpl<_$DateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId) init,
    required TResult Function(String value) date,
    required TResult Function(String value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTime,
    required TResult Function() submit,
  }) {
    return date(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(String value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTime,
    TResult? Function()? submit,
  }) {
    return date?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(String value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTime,
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
    required TResult Function(_MealType value) mealType,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Media value) media,
    required TResult Function(_MealTime value) mealTime,
    required TResult Function(_Submit value) submit,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_MealType value)? mealType,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_MealTime value)? mealTime,
    TResult? Function(_Submit value)? submit,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_MealType value)? mealType,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_MealTime value)? mealTime,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }
}

abstract class _Date implements MealFormEvent {
  const factory _Date(final String value) = _$DateImpl;

  String get value;

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MealTypeImplCopyWith<$Res> {
  factory _$$MealTypeImplCopyWith(
    _$MealTypeImpl value,
    $Res Function(_$MealTypeImpl) then,
  ) = __$$MealTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$MealTypeImplCopyWithImpl<$Res>
    extends _$MealFormEventCopyWithImpl<$Res, _$MealTypeImpl>
    implements _$$MealTypeImplCopyWith<$Res> {
  __$$MealTypeImplCopyWithImpl(
    _$MealTypeImpl _value,
    $Res Function(_$MealTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$MealTypeImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$MealTypeImpl implements _MealType {
  const _$MealTypeImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'MealFormEvent.mealType(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealTypeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealTypeImplCopyWith<_$MealTypeImpl> get copyWith =>
      __$$MealTypeImplCopyWithImpl<_$MealTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId) init,
    required TResult Function(String value) date,
    required TResult Function(String value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTime,
    required TResult Function() submit,
  }) {
    return mealType(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(String value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTime,
    TResult? Function()? submit,
  }) {
    return mealType?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(String value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTime,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (mealType != null) {
      return mealType(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_MealType value) mealType,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Media value) media,
    required TResult Function(_MealTime value) mealTime,
    required TResult Function(_Submit value) submit,
  }) {
    return mealType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_MealType value)? mealType,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_MealTime value)? mealTime,
    TResult? Function(_Submit value)? submit,
  }) {
    return mealType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_MealType value)? mealType,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_MealTime value)? mealTime,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (mealType != null) {
      return mealType(this);
    }
    return orElse();
  }
}

abstract class _MealType implements MealFormEvent {
  const factory _MealType(final String value) = _$MealTypeImpl;

  String get value;

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealTypeImplCopyWith<_$MealTypeImpl> get copyWith =>
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
    extends _$MealFormEventCopyWithImpl<$Res, _$NotesImpl>
    implements _$$NotesImplCopyWith<$Res> {
  __$$NotesImplCopyWithImpl(
    _$NotesImpl _value,
    $Res Function(_$NotesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MealFormEvent
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
    return 'MealFormEvent.notes(value: $value)';
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

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesImplCopyWith<_$NotesImpl> get copyWith =>
      __$$NotesImplCopyWithImpl<_$NotesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId) init,
    required TResult Function(String value) date,
    required TResult Function(String value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTime,
    required TResult Function() submit,
  }) {
    return notes(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(String value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTime,
    TResult? Function()? submit,
  }) {
    return notes?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(String value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTime,
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
    required TResult Function(_MealType value) mealType,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Media value) media,
    required TResult Function(_MealTime value) mealTime,
    required TResult Function(_Submit value) submit,
  }) {
    return notes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_MealType value)? mealType,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_MealTime value)? mealTime,
    TResult? Function(_Submit value)? submit,
  }) {
    return notes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_MealType value)? mealType,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_MealTime value)? mealTime,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (notes != null) {
      return notes(this);
    }
    return orElse();
  }
}

abstract class _Notes implements MealFormEvent {
  const factory _Notes(final String value) = _$NotesImpl;

  String get value;

  /// Create a copy of MealFormEvent
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
    extends _$MealFormEventCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
    _$MediaImpl _value,
    $Res Function(_$MediaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MealFormEvent
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
    return 'MealFormEvent.media(value: $value)';
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

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      __$$MediaImplCopyWithImpl<_$MediaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId) init,
    required TResult Function(String value) date,
    required TResult Function(String value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTime,
    required TResult Function() submit,
  }) {
    return media(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(String value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTime,
    TResult? Function()? submit,
  }) {
    return media?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(String value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTime,
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
    required TResult Function(_MealType value) mealType,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Media value) media,
    required TResult Function(_MealTime value) mealTime,
    required TResult Function(_Submit value) submit,
  }) {
    return media(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_MealType value)? mealType,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_MealTime value)? mealTime,
    TResult? Function(_Submit value)? submit,
  }) {
    return media?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_MealType value)? mealType,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_MealTime value)? mealTime,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (media != null) {
      return media(this);
    }
    return orElse();
  }
}

abstract class _Media implements MealFormEvent {
  const factory _Media(final String value) = _$MediaImpl;

  String get value;

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MealTimeImplCopyWith<$Res> {
  factory _$$MealTimeImplCopyWith(
    _$MealTimeImpl value,
    $Res Function(_$MealTimeImpl) then,
  ) = __$$MealTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DropItem value});
}

/// @nodoc
class __$$MealTimeImplCopyWithImpl<$Res>
    extends _$MealFormEventCopyWithImpl<$Res, _$MealTimeImpl>
    implements _$$MealTimeImplCopyWith<$Res> {
  __$$MealTimeImplCopyWithImpl(
    _$MealTimeImpl _value,
    $Res Function(_$MealTimeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$MealTimeImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as DropItem,
      ),
    );
  }
}

/// @nodoc

class _$MealTimeImpl implements _MealTime {
  const _$MealTimeImpl(this.value);

  @override
  final DropItem value;

  @override
  String toString() {
    return 'MealFormEvent.mealTime(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealTimeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealTimeImplCopyWith<_$MealTimeImpl> get copyWith =>
      __$$MealTimeImplCopyWithImpl<_$MealTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId) init,
    required TResult Function(String value) date,
    required TResult Function(String value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTime,
    required TResult Function() submit,
  }) {
    return mealTime(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(String value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTime,
    TResult? Function()? submit,
  }) {
    return mealTime?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(String value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTime,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (mealTime != null) {
      return mealTime(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_MealType value) mealType,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Media value) media,
    required TResult Function(_MealTime value) mealTime,
    required TResult Function(_Submit value) submit,
  }) {
    return mealTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_MealType value)? mealType,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_MealTime value)? mealTime,
    TResult? Function(_Submit value)? submit,
  }) {
    return mealTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_MealType value)? mealType,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_MealTime value)? mealTime,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (mealTime != null) {
      return mealTime(this);
    }
    return orElse();
  }
}

abstract class _MealTime implements MealFormEvent {
  const factory _MealTime(final DropItem value) = _$MealTimeImpl;

  DropItem get value;

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealTimeImplCopyWith<_$MealTimeImpl> get copyWith =>
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
    extends _$MealFormEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
    _$SubmitImpl _value,
    $Res Function(_$SubmitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'MealFormEvent.submit()';
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
    required TResult Function(int petId) init,
    required TResult Function(String value) date,
    required TResult Function(String value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTime,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(String value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTime,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(String value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTime,
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
    required TResult Function(_MealType value) mealType,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Media value) media,
    required TResult Function(_MealTime value) mealTime,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_MealType value)? mealType,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_MealTime value)? mealTime,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_MealType value)? mealType,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_MealTime value)? mealTime,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements MealFormEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
mixin _$MealFormState {
  Status get submitStatus => throw _privateConstructorUsedError;
  List<DropItem> get mealTimes => throw _privateConstructorUsedError;
  DropdownValue get mealTime => throw _privateConstructorUsedError;
  NotEmpty get date => throw _privateConstructorUsedError;
  NotEmpty get mealType => throw _privateConstructorUsedError;
  NotEmpty get notes => throw _privateConstructorUsedError;
  NotEmpty get media => throw _privateConstructorUsedError;
  bool get validation => throw _privateConstructorUsedError;
  int get petId => throw _privateConstructorUsedError;

  /// Create a copy of MealFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealFormStateCopyWith<MealFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealFormStateCopyWith<$Res> {
  factory $MealFormStateCopyWith(
    MealFormState value,
    $Res Function(MealFormState) then,
  ) = _$MealFormStateCopyWithImpl<$Res, MealFormState>;
  @useResult
  $Res call({
    Status submitStatus,
    List<DropItem> mealTimes,
    DropdownValue mealTime,
    NotEmpty date,
    NotEmpty mealType,
    NotEmpty notes,
    NotEmpty media,
    bool validation,
    int petId,
  });
}

/// @nodoc
class _$MealFormStateCopyWithImpl<$Res, $Val extends MealFormState>
    implements $MealFormStateCopyWith<$Res> {
  _$MealFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitStatus = null,
    Object? mealTimes = null,
    Object? mealTime = null,
    Object? date = null,
    Object? mealType = null,
    Object? notes = null,
    Object? media = null,
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
            mealTimes:
                null == mealTimes
                    ? _value.mealTimes
                    : mealTimes // ignore: cast_nullable_to_non_nullable
                        as List<DropItem>,
            mealTime:
                null == mealTime
                    ? _value.mealTime
                    : mealTime // ignore: cast_nullable_to_non_nullable
                        as DropdownValue,
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            mealType:
                null == mealType
                    ? _value.mealType
                    : mealType // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
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
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MealFormStateImplCopyWith<$Res>
    implements $MealFormStateCopyWith<$Res> {
  factory _$$MealFormStateImplCopyWith(
    _$MealFormStateImpl value,
    $Res Function(_$MealFormStateImpl) then,
  ) = __$$MealFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status submitStatus,
    List<DropItem> mealTimes,
    DropdownValue mealTime,
    NotEmpty date,
    NotEmpty mealType,
    NotEmpty notes,
    NotEmpty media,
    bool validation,
    int petId,
  });
}

/// @nodoc
class __$$MealFormStateImplCopyWithImpl<$Res>
    extends _$MealFormStateCopyWithImpl<$Res, _$MealFormStateImpl>
    implements _$$MealFormStateImplCopyWith<$Res> {
  __$$MealFormStateImplCopyWithImpl(
    _$MealFormStateImpl _value,
    $Res Function(_$MealFormStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MealFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitStatus = null,
    Object? mealTimes = null,
    Object? mealTime = null,
    Object? date = null,
    Object? mealType = null,
    Object? notes = null,
    Object? media = null,
    Object? validation = null,
    Object? petId = null,
  }) {
    return _then(
      _$MealFormStateImpl(
        submitStatus:
            null == submitStatus
                ? _value.submitStatus
                : submitStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        mealTimes:
            null == mealTimes
                ? _value._mealTimes
                : mealTimes // ignore: cast_nullable_to_non_nullable
                    as List<DropItem>,
        mealTime:
            null == mealTime
                ? _value.mealTime
                : mealTime // ignore: cast_nullable_to_non_nullable
                    as DropdownValue,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        mealType:
            null == mealType
                ? _value.mealType
                : mealType // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
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
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$MealFormStateImpl implements _MealFormState {
  const _$MealFormStateImpl({
    this.submitStatus = Status.init,
    final List<DropItem> mealTimes = const [],
    this.mealTime = const DropdownValue.pure(),
    this.date = const NotEmpty.pure(),
    this.mealType = const NotEmpty.pure(),
    this.notes = const NotEmpty.pure(),
    this.media = const NotEmpty.pure(),
    this.validation = false,
    this.petId = 0,
  }) : _mealTimes = mealTimes;

  @override
  @JsonKey()
  final Status submitStatus;
  final List<DropItem> _mealTimes;
  @override
  @JsonKey()
  List<DropItem> get mealTimes {
    if (_mealTimes is EqualUnmodifiableListView) return _mealTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealTimes);
  }

  @override
  @JsonKey()
  final DropdownValue mealTime;
  @override
  @JsonKey()
  final NotEmpty date;
  @override
  @JsonKey()
  final NotEmpty mealType;
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
  final int petId;

  @override
  String toString() {
    return 'MealFormState(submitStatus: $submitStatus, mealTimes: $mealTimes, mealTime: $mealTime, date: $date, mealType: $mealType, notes: $notes, media: $media, validation: $validation, petId: $petId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealFormStateImpl &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            const DeepCollectionEquality().equals(
              other._mealTimes,
              _mealTimes,
            ) &&
            (identical(other.mealTime, mealTime) ||
                other.mealTime == mealTime) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.petId, petId) || other.petId == petId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    submitStatus,
    const DeepCollectionEquality().hash(_mealTimes),
    mealTime,
    date,
    mealType,
    notes,
    media,
    validation,
    petId,
  );

  /// Create a copy of MealFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealFormStateImplCopyWith<_$MealFormStateImpl> get copyWith =>
      __$$MealFormStateImplCopyWithImpl<_$MealFormStateImpl>(this, _$identity);
}

abstract class _MealFormState implements MealFormState {
  const factory _MealFormState({
    final Status submitStatus,
    final List<DropItem> mealTimes,
    final DropdownValue mealTime,
    final NotEmpty date,
    final NotEmpty mealType,
    final NotEmpty notes,
    final NotEmpty media,
    final bool validation,
    final int petId,
  }) = _$MealFormStateImpl;

  @override
  Status get submitStatus;
  @override
  List<DropItem> get mealTimes;
  @override
  DropdownValue get mealTime;
  @override
  NotEmpty get date;
  @override
  NotEmpty get mealType;
  @override
  NotEmpty get notes;
  @override
  NotEmpty get media;
  @override
  bool get validation;
  @override
  int get petId;

  /// Create a copy of MealFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealFormStateImplCopyWith<_$MealFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
