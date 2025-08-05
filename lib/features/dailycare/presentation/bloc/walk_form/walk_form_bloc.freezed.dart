// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'walk_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WalkFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropItem value) duration,
    required TResult Function(String value) location,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropItem value)? duration,
    TResult? Function(String value)? location,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropItem value)? duration,
    TResult Function(String value)? location,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function()? submit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_Duration value) duration,
    required TResult Function(_Location value) location,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Media value) media,
    required TResult Function(_Submit value) submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_Duration value)? duration,
    TResult? Function(_Location value)? location,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_Submit value)? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_Duration value)? duration,
    TResult Function(_Location value)? location,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkFormEventCopyWith<$Res> {
  factory $WalkFormEventCopyWith(
    WalkFormEvent value,
    $Res Function(WalkFormEvent) then,
  ) = _$WalkFormEventCopyWithImpl<$Res, WalkFormEvent>;
}

/// @nodoc
class _$WalkFormEventCopyWithImpl<$Res, $Val extends WalkFormEvent>
    implements $WalkFormEventCopyWith<$Res> {
  _$WalkFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalkFormEvent
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
    extends _$WalkFormEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of WalkFormEvent
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
    return 'WalkFormEvent.init(petId: $petId)';
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

  /// Create a copy of WalkFormEvent
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
    required TResult Function(DropItem value) duration,
    required TResult Function(String value) location,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return init(petId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropItem value)? duration,
    TResult? Function(String value)? location,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return init?.call(petId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropItem value)? duration,
    TResult Function(String value)? location,
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
    required TResult Function(_Duration value) duration,
    required TResult Function(_Location value) location,
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
    TResult? Function(_Duration value)? duration,
    TResult? Function(_Location value)? location,
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
    TResult Function(_Duration value)? duration,
    TResult Function(_Location value)? location,
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

abstract class _Init implements WalkFormEvent {
  const factory _Init(final int petId) = _$InitImpl;

  int get petId;

  /// Create a copy of WalkFormEvent
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
    extends _$WalkFormEventCopyWithImpl<$Res, _$DateImpl>
    implements _$$DateImplCopyWith<$Res> {
  __$$DateImplCopyWithImpl(_$DateImpl _value, $Res Function(_$DateImpl) _then)
    : super(_value, _then);

  /// Create a copy of WalkFormEvent
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
    return 'WalkFormEvent.date(value: $value)';
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

  /// Create a copy of WalkFormEvent
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
    required TResult Function(DropItem value) duration,
    required TResult Function(String value) location,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return date(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropItem value)? duration,
    TResult? Function(String value)? location,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return date?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropItem value)? duration,
    TResult Function(String value)? location,
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
    required TResult Function(_Duration value) duration,
    required TResult Function(_Location value) location,
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
    TResult? Function(_Duration value)? duration,
    TResult? Function(_Location value)? location,
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
    TResult Function(_Duration value)? duration,
    TResult Function(_Location value)? location,
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

abstract class _Date implements WalkFormEvent {
  const factory _Date(final String value) = _$DateImpl;

  String get value;

  /// Create a copy of WalkFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DurationImplCopyWith<$Res> {
  factory _$$DurationImplCopyWith(
    _$DurationImpl value,
    $Res Function(_$DurationImpl) then,
  ) = __$$DurationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DropItem value});
}

/// @nodoc
class __$$DurationImplCopyWithImpl<$Res>
    extends _$WalkFormEventCopyWithImpl<$Res, _$DurationImpl>
    implements _$$DurationImplCopyWith<$Res> {
  __$$DurationImplCopyWithImpl(
    _$DurationImpl _value,
    $Res Function(_$DurationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalkFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$DurationImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as DropItem,
      ),
    );
  }
}

/// @nodoc

class _$DurationImpl implements _Duration {
  const _$DurationImpl(this.value);

  @override
  final DropItem value;

  @override
  String toString() {
    return 'WalkFormEvent.duration(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of WalkFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DurationImplCopyWith<_$DurationImpl> get copyWith =>
      __$$DurationImplCopyWithImpl<_$DurationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropItem value) duration,
    required TResult Function(String value) location,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return duration(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropItem value)? duration,
    TResult? Function(String value)? location,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return duration?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropItem value)? duration,
    TResult Function(String value)? location,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (duration != null) {
      return duration(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_Duration value) duration,
    required TResult Function(_Location value) location,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Media value) media,
    required TResult Function(_Submit value) submit,
  }) {
    return duration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_Duration value)? duration,
    TResult? Function(_Location value)? location,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_Submit value)? submit,
  }) {
    return duration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_Duration value)? duration,
    TResult Function(_Location value)? location,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (duration != null) {
      return duration(this);
    }
    return orElse();
  }
}

abstract class _Duration implements WalkFormEvent {
  const factory _Duration(final DropItem value) = _$DurationImpl;

  DropItem get value;

  /// Create a copy of WalkFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DurationImplCopyWith<_$DurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
    _$LocationImpl value,
    $Res Function(_$LocationImpl) then,
  ) = __$$LocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$WalkFormEventCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
    _$LocationImpl _value,
    $Res Function(_$LocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalkFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$LocationImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$LocationImpl implements _Location {
  const _$LocationImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'WalkFormEvent.location(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of WalkFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId) init,
    required TResult Function(String value) date,
    required TResult Function(DropItem value) duration,
    required TResult Function(String value) location,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return location(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropItem value)? duration,
    TResult? Function(String value)? location,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return location?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropItem value)? duration,
    TResult Function(String value)? location,
    TResult Function(String value)? notes,
    TResult Function(String value)? media,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Date value) date,
    required TResult Function(_Duration value) duration,
    required TResult Function(_Location value) location,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Media value) media,
    required TResult Function(_Submit value) submit,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Date value)? date,
    TResult? Function(_Duration value)? duration,
    TResult? Function(_Location value)? location,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Media value)? media,
    TResult? Function(_Submit value)? submit,
  }) {
    return location?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Date value)? date,
    TResult Function(_Duration value)? duration,
    TResult Function(_Location value)? location,
    TResult Function(_Notes value)? notes,
    TResult Function(_Media value)? media,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this);
    }
    return orElse();
  }
}

abstract class _Location implements WalkFormEvent {
  const factory _Location(final String value) = _$LocationImpl;

  String get value;

  /// Create a copy of WalkFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
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
    extends _$WalkFormEventCopyWithImpl<$Res, _$NotesImpl>
    implements _$$NotesImplCopyWith<$Res> {
  __$$NotesImplCopyWithImpl(
    _$NotesImpl _value,
    $Res Function(_$NotesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalkFormEvent
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
    return 'WalkFormEvent.notes(value: $value)';
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

  /// Create a copy of WalkFormEvent
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
    required TResult Function(DropItem value) duration,
    required TResult Function(String value) location,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return notes(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropItem value)? duration,
    TResult? Function(String value)? location,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return notes?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropItem value)? duration,
    TResult Function(String value)? location,
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
    required TResult Function(_Duration value) duration,
    required TResult Function(_Location value) location,
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
    TResult? Function(_Duration value)? duration,
    TResult? Function(_Location value)? location,
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
    TResult Function(_Duration value)? duration,
    TResult Function(_Location value)? location,
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

abstract class _Notes implements WalkFormEvent {
  const factory _Notes(final String value) = _$NotesImpl;

  String get value;

  /// Create a copy of WalkFormEvent
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
    extends _$WalkFormEventCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
    _$MediaImpl _value,
    $Res Function(_$MediaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalkFormEvent
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
    return 'WalkFormEvent.media(value: $value)';
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

  /// Create a copy of WalkFormEvent
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
    required TResult Function(DropItem value) duration,
    required TResult Function(String value) location,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return media(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropItem value)? duration,
    TResult? Function(String value)? location,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return media?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropItem value)? duration,
    TResult Function(String value)? location,
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
    required TResult Function(_Duration value) duration,
    required TResult Function(_Location value) location,
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
    TResult? Function(_Duration value)? duration,
    TResult? Function(_Location value)? location,
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
    TResult Function(_Duration value)? duration,
    TResult Function(_Location value)? location,
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

abstract class _Media implements WalkFormEvent {
  const factory _Media(final String value) = _$MediaImpl;

  String get value;

  /// Create a copy of WalkFormEvent
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
    extends _$WalkFormEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
    _$SubmitImpl _value,
    $Res Function(_$SubmitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalkFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'WalkFormEvent.submit()';
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
    required TResult Function(DropItem value) duration,
    required TResult Function(String value) location,
    required TResult Function(String value) notes,
    required TResult Function(String value) media,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId)? init,
    TResult? Function(String value)? date,
    TResult? Function(DropItem value)? duration,
    TResult? Function(String value)? location,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? media,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId)? init,
    TResult Function(String value)? date,
    TResult Function(DropItem value)? duration,
    TResult Function(String value)? location,
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
    required TResult Function(_Duration value) duration,
    required TResult Function(_Location value) location,
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
    TResult? Function(_Duration value)? duration,
    TResult? Function(_Location value)? location,
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
    TResult Function(_Duration value)? duration,
    TResult Function(_Location value)? location,
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

abstract class _Submit implements WalkFormEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
mixin _$WalkFormState {
  Status get submitStatus => throw _privateConstructorUsedError;
  List<DropItem> get durations => throw _privateConstructorUsedError;
  DropdownValue get duration => throw _privateConstructorUsedError;
  NotEmpty get location => throw _privateConstructorUsedError;
  NotEmpty get date => throw _privateConstructorUsedError;
  NotEmpty get notes => throw _privateConstructorUsedError;
  NotEmpty get media => throw _privateConstructorUsedError;
  int get petId => throw _privateConstructorUsedError;
  bool get validation => throw _privateConstructorUsedError;

  /// Create a copy of WalkFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalkFormStateCopyWith<WalkFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkFormStateCopyWith<$Res> {
  factory $WalkFormStateCopyWith(
    WalkFormState value,
    $Res Function(WalkFormState) then,
  ) = _$WalkFormStateCopyWithImpl<$Res, WalkFormState>;
  @useResult
  $Res call({
    Status submitStatus,
    List<DropItem> durations,
    DropdownValue duration,
    NotEmpty location,
    NotEmpty date,
    NotEmpty notes,
    NotEmpty media,
    int petId,
    bool validation,
  });
}

/// @nodoc
class _$WalkFormStateCopyWithImpl<$Res, $Val extends WalkFormState>
    implements $WalkFormStateCopyWith<$Res> {
  _$WalkFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalkFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitStatus = null,
    Object? durations = null,
    Object? duration = null,
    Object? location = null,
    Object? date = null,
    Object? notes = null,
    Object? media = null,
    Object? petId = null,
    Object? validation = null,
  }) {
    return _then(
      _value.copyWith(
            submitStatus:
                null == submitStatus
                    ? _value.submitStatus
                    : submitStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            durations:
                null == durations
                    ? _value.durations
                    : durations // ignore: cast_nullable_to_non_nullable
                        as List<DropItem>,
            duration:
                null == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as DropdownValue,
            location:
                null == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
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
            petId:
                null == petId
                    ? _value.petId
                    : petId // ignore: cast_nullable_to_non_nullable
                        as int,
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
abstract class _$$WalkFormStateImplCopyWith<$Res>
    implements $WalkFormStateCopyWith<$Res> {
  factory _$$WalkFormStateImplCopyWith(
    _$WalkFormStateImpl value,
    $Res Function(_$WalkFormStateImpl) then,
  ) = __$$WalkFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status submitStatus,
    List<DropItem> durations,
    DropdownValue duration,
    NotEmpty location,
    NotEmpty date,
    NotEmpty notes,
    NotEmpty media,
    int petId,
    bool validation,
  });
}

/// @nodoc
class __$$WalkFormStateImplCopyWithImpl<$Res>
    extends _$WalkFormStateCopyWithImpl<$Res, _$WalkFormStateImpl>
    implements _$$WalkFormStateImplCopyWith<$Res> {
  __$$WalkFormStateImplCopyWithImpl(
    _$WalkFormStateImpl _value,
    $Res Function(_$WalkFormStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalkFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitStatus = null,
    Object? durations = null,
    Object? duration = null,
    Object? location = null,
    Object? date = null,
    Object? notes = null,
    Object? media = null,
    Object? petId = null,
    Object? validation = null,
  }) {
    return _then(
      _$WalkFormStateImpl(
        submitStatus:
            null == submitStatus
                ? _value.submitStatus
                : submitStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        durations:
            null == durations
                ? _value._durations
                : durations // ignore: cast_nullable_to_non_nullable
                    as List<DropItem>,
        duration:
            null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as DropdownValue,
        location:
            null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
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
        petId:
            null == petId
                ? _value.petId
                : petId // ignore: cast_nullable_to_non_nullable
                    as int,
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

class _$WalkFormStateImpl implements _WalkFormState {
  const _$WalkFormStateImpl({
    this.submitStatus = Status.init,
    final List<DropItem> durations = const [],
    this.duration = const DropdownValue.pure(),
    this.location = const NotEmpty.pure(),
    this.date = const NotEmpty.pure(),
    this.notes = const NotEmpty.pure(),
    this.media = const NotEmpty.pure(),
    this.petId = 0,
    this.validation = false,
  }) : _durations = durations;

  @override
  @JsonKey()
  final Status submitStatus;
  final List<DropItem> _durations;
  @override
  @JsonKey()
  List<DropItem> get durations {
    if (_durations is EqualUnmodifiableListView) return _durations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_durations);
  }

  @override
  @JsonKey()
  final DropdownValue duration;
  @override
  @JsonKey()
  final NotEmpty location;
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
  final int petId;
  @override
  @JsonKey()
  final bool validation;

  @override
  String toString() {
    return 'WalkFormState(submitStatus: $submitStatus, durations: $durations, duration: $duration, location: $location, date: $date, notes: $notes, media: $media, petId: $petId, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalkFormStateImpl &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            const DeepCollectionEquality().equals(
              other._durations,
              _durations,
            ) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.petId, petId) || other.petId == petId) &&
            (identical(other.validation, validation) ||
                other.validation == validation));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    submitStatus,
    const DeepCollectionEquality().hash(_durations),
    duration,
    location,
    date,
    notes,
    media,
    petId,
    validation,
  );

  /// Create a copy of WalkFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalkFormStateImplCopyWith<_$WalkFormStateImpl> get copyWith =>
      __$$WalkFormStateImplCopyWithImpl<_$WalkFormStateImpl>(this, _$identity);
}

abstract class _WalkFormState implements WalkFormState {
  const factory _WalkFormState({
    final Status submitStatus,
    final List<DropItem> durations,
    final DropdownValue duration,
    final NotEmpty location,
    final NotEmpty date,
    final NotEmpty notes,
    final NotEmpty media,
    final int petId,
    final bool validation,
  }) = _$WalkFormStateImpl;

  @override
  Status get submitStatus;
  @override
  List<DropItem> get durations;
  @override
  DropdownValue get duration;
  @override
  NotEmpty get location;
  @override
  NotEmpty get date;
  @override
  NotEmpty get notes;
  @override
  NotEmpty get media;
  @override
  int get petId;
  @override
  bool get validation;

  /// Create a copy of WalkFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalkFormStateImplCopyWith<_$WalkFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
