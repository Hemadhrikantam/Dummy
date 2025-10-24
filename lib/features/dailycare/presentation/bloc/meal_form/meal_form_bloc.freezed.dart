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
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTimeH,
    required TResult Function(DropItem value) mealTimeM,
    required TResult Function() submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTimeH,
    TResult? Function(DropItem value)? mealTimeM,
    TResult? Function()? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTimeH,
    TResult Function(DropItem value)? mealTimeM,
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
    required TResult Function(_MealTimeH value) mealTimeH,
    required TResult Function(_MealTimeM value) mealTimeM,
    required TResult Function(_Submit value) submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_MealType value)? mealType,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_MealTimeH value)? mealTimeH,
    TResult? Function(_MealTimeM value)? mealTimeM,
    TResult? Function(_Submit value)? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_MealType value)? mealType,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_MealTimeH value)? mealTimeH,
    TResult Function(_MealTimeM value)? mealTimeM,
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
  $Res call({String petId});
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
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTimeH,
    required TResult Function(DropItem value) mealTimeM,
    required TResult Function() submit,
  }) {
    return init(petId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTimeH,
    TResult? Function(DropItem value)? mealTimeM,
    TResult? Function()? submit,
  }) {
    return init?.call(petId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTimeH,
    TResult Function(DropItem value)? mealTimeM,
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
    required TResult Function(_MealTimeH value) mealTimeH,
    required TResult Function(_MealTimeM value) mealTimeM,
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
    TResult? Function(_MealTimeH value)? mealTimeH,
    TResult? Function(_MealTimeM value)? mealTimeM,
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
    TResult Function(_MealTimeH value)? mealTimeH,
    TResult Function(_MealTimeM value)? mealTimeM,
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
  const factory _Init(final String petId) = _$InitImpl;

  String get petId;

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
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTimeH,
    required TResult Function(DropItem value) mealTimeM,
    required TResult Function() submit,
  }) {
    return date(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTimeH,
    TResult? Function(DropItem value)? mealTimeM,
    TResult? Function()? submit,
  }) {
    return date?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTimeH,
    TResult Function(DropItem value)? mealTimeM,
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
    required TResult Function(_MealTimeH value) mealTimeH,
    required TResult Function(_MealTimeM value) mealTimeM,
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
    TResult? Function(_MealTimeH value)? mealTimeH,
    TResult? Function(_MealTimeM value)? mealTimeM,
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
    TResult Function(_MealTimeH value)? mealTimeH,
    TResult Function(_MealTimeM value)? mealTimeM,
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
  $Res call({DropStringItem value});
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
                as DropStringItem,
      ),
    );
  }
}

/// @nodoc

class _$MealTypeImpl implements _MealType {
  const _$MealTypeImpl(this.value);

  @override
  final DropStringItem value;

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
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTimeH,
    required TResult Function(DropItem value) mealTimeM,
    required TResult Function() submit,
  }) {
    return mealType(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTimeH,
    TResult? Function(DropItem value)? mealTimeM,
    TResult? Function()? submit,
  }) {
    return mealType?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTimeH,
    TResult Function(DropItem value)? mealTimeM,
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
    required TResult Function(_MealTimeH value) mealTimeH,
    required TResult Function(_MealTimeM value) mealTimeM,
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
    TResult? Function(_MealTimeH value)? mealTimeH,
    TResult? Function(_MealTimeM value)? mealTimeM,
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
    TResult Function(_MealTimeH value)? mealTimeH,
    TResult Function(_MealTimeM value)? mealTimeM,
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
  const factory _MealType(final DropStringItem value) = _$MealTypeImpl;

  DropStringItem get value;

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
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTimeH,
    required TResult Function(DropItem value) mealTimeM,
    required TResult Function() submit,
  }) {
    return notes(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTimeH,
    TResult? Function(DropItem value)? mealTimeM,
    TResult? Function()? submit,
  }) {
    return notes?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTimeH,
    TResult Function(DropItem value)? mealTimeM,
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
    required TResult Function(_MealTimeH value) mealTimeH,
    required TResult Function(_MealTimeM value) mealTimeM,
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
    TResult? Function(_MealTimeH value)? mealTimeH,
    TResult? Function(_MealTimeM value)? mealTimeM,
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
    TResult Function(_MealTimeH value)? mealTimeH,
    TResult Function(_MealTimeM value)? mealTimeM,
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
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTimeH,
    required TResult Function(DropItem value) mealTimeM,
    required TResult Function() submit,
  }) {
    return media(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTimeH,
    TResult? Function(DropItem value)? mealTimeM,
    TResult? Function()? submit,
  }) {
    return media?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTimeH,
    TResult Function(DropItem value)? mealTimeM,
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
    required TResult Function(_MealTimeH value) mealTimeH,
    required TResult Function(_MealTimeM value) mealTimeM,
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
    TResult? Function(_MealTimeH value)? mealTimeH,
    TResult? Function(_MealTimeM value)? mealTimeM,
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
    TResult Function(_MealTimeH value)? mealTimeH,
    TResult Function(_MealTimeM value)? mealTimeM,
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
abstract class _$$MealTimeHImplCopyWith<$Res> {
  factory _$$MealTimeHImplCopyWith(
    _$MealTimeHImpl value,
    $Res Function(_$MealTimeHImpl) then,
  ) = __$$MealTimeHImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DropItem value});
}

/// @nodoc
class __$$MealTimeHImplCopyWithImpl<$Res>
    extends _$MealFormEventCopyWithImpl<$Res, _$MealTimeHImpl>
    implements _$$MealTimeHImplCopyWith<$Res> {
  __$$MealTimeHImplCopyWithImpl(
    _$MealTimeHImpl _value,
    $Res Function(_$MealTimeHImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$MealTimeHImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as DropItem,
      ),
    );
  }
}

/// @nodoc

class _$MealTimeHImpl implements _MealTimeH {
  const _$MealTimeHImpl(this.value);

  @override
  final DropItem value;

  @override
  String toString() {
    return 'MealFormEvent.mealTimeH(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealTimeHImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealTimeHImplCopyWith<_$MealTimeHImpl> get copyWith =>
      __$$MealTimeHImplCopyWithImpl<_$MealTimeHImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTimeH,
    required TResult Function(DropItem value) mealTimeM,
    required TResult Function() submit,
  }) {
    return mealTimeH(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTimeH,
    TResult? Function(DropItem value)? mealTimeM,
    TResult? Function()? submit,
  }) {
    return mealTimeH?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTimeH,
    TResult Function(DropItem value)? mealTimeM,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (mealTimeH != null) {
      return mealTimeH(value);
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
    required TResult Function(_MealTimeH value) mealTimeH,
    required TResult Function(_MealTimeM value) mealTimeM,
    required TResult Function(_Submit value) submit,
  }) {
    return mealTimeH(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_MealType value)? mealType,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_MealTimeH value)? mealTimeH,
    TResult? Function(_MealTimeM value)? mealTimeM,
    TResult? Function(_Submit value)? submit,
  }) {
    return mealTimeH?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_MealType value)? mealType,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_MealTimeH value)? mealTimeH,
    TResult Function(_MealTimeM value)? mealTimeM,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (mealTimeH != null) {
      return mealTimeH(this);
    }
    return orElse();
  }
}

abstract class _MealTimeH implements MealFormEvent {
  const factory _MealTimeH(final DropItem value) = _$MealTimeHImpl;

  DropItem get value;

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealTimeHImplCopyWith<_$MealTimeHImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MealTimeMImplCopyWith<$Res> {
  factory _$$MealTimeMImplCopyWith(
    _$MealTimeMImpl value,
    $Res Function(_$MealTimeMImpl) then,
  ) = __$$MealTimeMImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DropItem value});
}

/// @nodoc
class __$$MealTimeMImplCopyWithImpl<$Res>
    extends _$MealFormEventCopyWithImpl<$Res, _$MealTimeMImpl>
    implements _$$MealTimeMImplCopyWith<$Res> {
  __$$MealTimeMImplCopyWithImpl(
    _$MealTimeMImpl _value,
    $Res Function(_$MealTimeMImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$MealTimeMImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as DropItem,
      ),
    );
  }
}

/// @nodoc

class _$MealTimeMImpl implements _MealTimeM {
  const _$MealTimeMImpl(this.value);

  @override
  final DropItem value;

  @override
  String toString() {
    return 'MealFormEvent.mealTimeM(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealTimeMImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealTimeMImplCopyWith<_$MealTimeMImpl> get copyWith =>
      __$$MealTimeMImplCopyWithImpl<_$MealTimeMImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTimeH,
    required TResult Function(DropItem value) mealTimeM,
    required TResult Function() submit,
  }) {
    return mealTimeM(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTimeH,
    TResult? Function(DropItem value)? mealTimeM,
    TResult? Function()? submit,
  }) {
    return mealTimeM?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTimeH,
    TResult Function(DropItem value)? mealTimeM,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (mealTimeM != null) {
      return mealTimeM(value);
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
    required TResult Function(_MealTimeH value) mealTimeH,
    required TResult Function(_MealTimeM value) mealTimeM,
    required TResult Function(_Submit value) submit,
  }) {
    return mealTimeM(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_MealType value)? mealType,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_MealTimeH value)? mealTimeH,
    TResult? Function(_MealTimeM value)? mealTimeM,
    TResult? Function(_Submit value)? submit,
  }) {
    return mealTimeM?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_MealType value)? mealType,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_MealTimeH value)? mealTimeH,
    TResult Function(_MealTimeM value)? mealTimeM,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (mealTimeM != null) {
      return mealTimeM(this);
    }
    return orElse();
  }
}

abstract class _MealTimeM implements MealFormEvent {
  const factory _MealTimeM(final DropItem value) = _$MealTimeMImpl;

  DropItem get value;

  /// Create a copy of MealFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealTimeMImplCopyWith<_$MealTimeMImpl> get copyWith =>
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
    required TResult Function(String petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropStringItem value) mealType,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function(DropItem value) mealTimeH,
    required TResult Function(DropItem value) mealTimeM,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropStringItem value)? mealType,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function(DropItem value)? mealTimeH,
    TResult? Function(DropItem value)? mealTimeM,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropStringItem value)? mealType,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function(DropItem value)? mealTimeH,
    TResult Function(DropItem value)? mealTimeM,
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
    required TResult Function(_MealTimeH value) mealTimeH,
    required TResult Function(_MealTimeM value) mealTimeM,
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
    TResult? Function(_MealTimeH value)? mealTimeH,
    TResult? Function(_MealTimeM value)? mealTimeM,
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
    TResult Function(_MealTimeH value)? mealTimeH,
    TResult Function(_MealTimeM value)? mealTimeM,
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
  List<DropStringItem> get mealtypes => throw _privateConstructorUsedError;
  DropdownValue get mealTimeH => throw _privateConstructorUsedError;
  DropdownValue get mealTimeM => throw _privateConstructorUsedError;
  DropdownStringValue get mealType => throw _privateConstructorUsedError;
  NotEmpty get date => throw _privateConstructorUsedError;
  NotEmpty get notes => throw _privateConstructorUsedError;
  NotEmpty get media => throw _privateConstructorUsedError;
  bool get validation => throw _privateConstructorUsedError;
  String get petId => throw _privateConstructorUsedError;

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
    List<DropStringItem> mealtypes,
    DropdownValue mealTimeH,
    DropdownValue mealTimeM,
    DropdownStringValue mealType,
    NotEmpty date,
    NotEmpty notes,
    NotEmpty media,
    bool validation,
    String petId,
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
    Object? mealtypes = null,
    Object? mealTimeH = null,
    Object? mealTimeM = null,
    Object? mealType = null,
    Object? date = null,
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
            mealtypes:
                null == mealtypes
                    ? _value.mealtypes
                    : mealtypes // ignore: cast_nullable_to_non_nullable
                        as List<DropStringItem>,
            mealTimeH:
                null == mealTimeH
                    ? _value.mealTimeH
                    : mealTimeH // ignore: cast_nullable_to_non_nullable
                        as DropdownValue,
            mealTimeM:
                null == mealTimeM
                    ? _value.mealTimeM
                    : mealTimeM // ignore: cast_nullable_to_non_nullable
                        as DropdownValue,
            mealType:
                null == mealType
                    ? _value.mealType
                    : mealType // ignore: cast_nullable_to_non_nullable
                        as DropdownStringValue,
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
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
                        as String,
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
    List<DropStringItem> mealtypes,
    DropdownValue mealTimeH,
    DropdownValue mealTimeM,
    DropdownStringValue mealType,
    NotEmpty date,
    NotEmpty notes,
    NotEmpty media,
    bool validation,
    String petId,
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
    Object? mealtypes = null,
    Object? mealTimeH = null,
    Object? mealTimeM = null,
    Object? mealType = null,
    Object? date = null,
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
        mealtypes:
            null == mealtypes
                ? _value._mealtypes
                : mealtypes // ignore: cast_nullable_to_non_nullable
                    as List<DropStringItem>,
        mealTimeH:
            null == mealTimeH
                ? _value.mealTimeH
                : mealTimeH // ignore: cast_nullable_to_non_nullable
                    as DropdownValue,
        mealTimeM:
            null == mealTimeM
                ? _value.mealTimeM
                : mealTimeM // ignore: cast_nullable_to_non_nullable
                    as DropdownValue,
        mealType:
            null == mealType
                ? _value.mealType
                : mealType // ignore: cast_nullable_to_non_nullable
                    as DropdownStringValue,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
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
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$MealFormStateImpl implements _MealFormState {
  const _$MealFormStateImpl({
    this.submitStatus = Status.init,
    final List<DropStringItem> mealtypes = const [],
    this.mealTimeH = const DropdownValue.pure(),
    this.mealTimeM = const DropdownValue.pure(),
    this.mealType = const DropdownStringValue.pure(),
    this.date = const NotEmpty.pure(),
    this.notes = const NotEmpty.pure(),
    this.media = const NotEmpty.pure(),
    this.validation = false,
    this.petId = '',
  }) : _mealtypes = mealtypes;

  @override
  @JsonKey()
  final Status submitStatus;
  final List<DropStringItem> _mealtypes;
  @override
  @JsonKey()
  List<DropStringItem> get mealtypes {
    if (_mealtypes is EqualUnmodifiableListView) return _mealtypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealtypes);
  }

  @override
  @JsonKey()
  final DropdownValue mealTimeH;
  @override
  @JsonKey()
  final DropdownValue mealTimeM;
  @override
  @JsonKey()
  final DropdownStringValue mealType;
  @override
  @JsonKey()
  final NotEmpty date;
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

  @override
  String toString() {
    return 'MealFormState(submitStatus: $submitStatus, mealtypes: $mealtypes, mealTimeH: $mealTimeH, mealTimeM: $mealTimeM, mealType: $mealType, date: $date, notes: $notes, media: $media, validation: $validation, petId: $petId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealFormStateImpl &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            const DeepCollectionEquality().equals(
              other._mealtypes,
              _mealtypes,
            ) &&
            (identical(other.mealTimeH, mealTimeH) ||
                other.mealTimeH == mealTimeH) &&
            (identical(other.mealTimeM, mealTimeM) ||
                other.mealTimeM == mealTimeM) &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            (identical(other.date, date) || other.date == date) &&
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
    const DeepCollectionEquality().hash(_mealtypes),
    mealTimeH,
    mealTimeM,
    mealType,
    date,
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
    final List<DropStringItem> mealtypes,
    final DropdownValue mealTimeH,
    final DropdownValue mealTimeM,
    final DropdownStringValue mealType,
    final NotEmpty date,
    final NotEmpty notes,
    final NotEmpty media,
    final bool validation,
    final String petId,
  }) = _$MealFormStateImpl;

  @override
  Status get submitStatus;
  @override
  List<DropStringItem> get mealtypes;
  @override
  DropdownValue get mealTimeH;
  @override
  DropdownValue get mealTimeM;
  @override
  DropdownStringValue get mealType;
  @override
  NotEmpty get date;
  @override
  NotEmpty get notes;
  @override
  NotEmpty get media;
  @override
  bool get validation;
  @override
  String get petId;

  /// Create a copy of MealFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealFormStateImplCopyWith<_$MealFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
