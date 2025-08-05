// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MediaFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId, int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String value) notes,
    required TResult Function(String value) url,
    required TResult Function(DropItem value) event,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId, int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? url,
    TResult? Function(DropItem value)? event,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId, int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String value)? notes,
    TResult Function(String value)? url,
    TResult Function(DropItem value)? event,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Url value) url,
    required TResult Function(_Event value) event,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Url value)? url,
    TResult? Function(_Event value)? event,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_Notes value)? notes,
    TResult Function(_Url value)? url,
    TResult Function(_Event value)? event,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaFormEventCopyWith<$Res> {
  factory $MediaFormEventCopyWith(
    MediaFormEvent value,
    $Res Function(MediaFormEvent) then,
  ) = _$MediaFormEventCopyWithImpl<$Res, MediaFormEvent>;
}

/// @nodoc
class _$MediaFormEventCopyWithImpl<$Res, $Val extends MediaFormEvent>
    implements $MediaFormEventCopyWith<$Res> {
  _$MediaFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
    _$InitImpl value,
    $Res Function(_$InitImpl) then,
  ) = __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int petId, int? id});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$MediaFormEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? petId = null, Object? id = freezed}) {
    return _then(
      _$InitImpl(
        null == petId
            ? _value.petId
            : petId // ignore: cast_nullable_to_non_nullable
                as int,
        freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as int?,
      ),
    );
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.petId, this.id);

  @override
  final int petId;
  @override
  final int? id;

  @override
  String toString() {
    return 'MediaFormEvent.init(petId: $petId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.petId, petId) || other.petId == petId) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, petId, id);

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId, int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String value) notes,
    required TResult Function(String value) url,
    required TResult Function(DropItem value) event,
  }) {
    return init(petId, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId, int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? url,
    TResult? Function(DropItem value)? event,
  }) {
    return init?.call(petId, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId, int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String value)? notes,
    TResult Function(String value)? url,
    TResult Function(DropItem value)? event,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(petId, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Url value) url,
    required TResult Function(_Event value) event,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Url value)? url,
    TResult? Function(_Event value)? event,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_Notes value)? notes,
    TResult Function(_Url value)? url,
    TResult Function(_Event value)? event,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements MediaFormEvent {
  const factory _Init(final int petId, final int? id) = _$InitImpl;

  int get petId;
  int? get id;

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
    _$SubmitImpl value,
    $Res Function(_$SubmitImpl) then,
  ) = __$$SubmitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$MediaFormEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
    _$SubmitImpl _value,
    $Res Function(_$SubmitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$SubmitImpl(
        freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as int?,
      ),
    );
  }
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl(this.id);

  @override
  final int? id;

  @override
  String toString() {
    return 'MediaFormEvent.submit(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      __$$SubmitImplCopyWithImpl<_$SubmitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId, int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String value) notes,
    required TResult Function(String value) url,
    required TResult Function(DropItem value) event,
  }) {
    return submit(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId, int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? url,
    TResult? Function(DropItem value)? event,
  }) {
    return submit?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId, int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String value)? notes,
    TResult Function(String value)? url,
    TResult Function(DropItem value)? event,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Url value) url,
    required TResult Function(_Event value) event,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Url value)? url,
    TResult? Function(_Event value)? event,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_Notes value)? notes,
    TResult Function(_Url value)? url,
    TResult Function(_Event value)? event,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements MediaFormEvent {
  const factory _Submit(final int? id) = _$SubmitImpl;

  int? get id;

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
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
    extends _$MediaFormEventCopyWithImpl<$Res, _$NotesImpl>
    implements _$$NotesImplCopyWith<$Res> {
  __$$NotesImplCopyWithImpl(
    _$NotesImpl _value,
    $Res Function(_$NotesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MediaFormEvent
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
    return 'MediaFormEvent.notes(value: $value)';
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

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesImplCopyWith<_$NotesImpl> get copyWith =>
      __$$NotesImplCopyWithImpl<_$NotesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId, int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String value) notes,
    required TResult Function(String value) url,
    required TResult Function(DropItem value) event,
  }) {
    return notes(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId, int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? url,
    TResult? Function(DropItem value)? event,
  }) {
    return notes?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId, int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String value)? notes,
    TResult Function(String value)? url,
    TResult Function(DropItem value)? event,
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
    required TResult Function(_Submit value) submit,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Url value) url,
    required TResult Function(_Event value) event,
  }) {
    return notes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Url value)? url,
    TResult? Function(_Event value)? event,
  }) {
    return notes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_Notes value)? notes,
    TResult Function(_Url value)? url,
    TResult Function(_Event value)? event,
    required TResult orElse(),
  }) {
    if (notes != null) {
      return notes(this);
    }
    return orElse();
  }
}

abstract class _Notes implements MediaFormEvent {
  const factory _Notes(final String value) = _$NotesImpl;

  String get value;

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotesImplCopyWith<_$NotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UrlImplCopyWith<$Res> {
  factory _$$UrlImplCopyWith(_$UrlImpl value, $Res Function(_$UrlImpl) then) =
      __$$UrlImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UrlImplCopyWithImpl<$Res>
    extends _$MediaFormEventCopyWithImpl<$Res, _$UrlImpl>
    implements _$$UrlImplCopyWith<$Res> {
  __$$UrlImplCopyWithImpl(_$UrlImpl _value, $Res Function(_$UrlImpl) _then)
    : super(_value, _then);

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$UrlImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$UrlImpl implements _Url {
  const _$UrlImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'MediaFormEvent.url(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlImplCopyWith<_$UrlImpl> get copyWith =>
      __$$UrlImplCopyWithImpl<_$UrlImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId, int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String value) notes,
    required TResult Function(String value) url,
    required TResult Function(DropItem value) event,
  }) {
    return url(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId, int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? url,
    TResult? Function(DropItem value)? event,
  }) {
    return url?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId, int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String value)? notes,
    TResult Function(String value)? url,
    TResult Function(DropItem value)? event,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Url value) url,
    required TResult Function(_Event value) event,
  }) {
    return url(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Url value)? url,
    TResult? Function(_Event value)? event,
  }) {
    return url?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_Notes value)? notes,
    TResult Function(_Url value)? url,
    TResult Function(_Event value)? event,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this);
    }
    return orElse();
  }
}

abstract class _Url implements MediaFormEvent {
  const factory _Url(final String value) = _$UrlImpl;

  String get value;

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlImplCopyWith<_$UrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> {
  factory _$$EventImplCopyWith(
    _$EventImpl value,
    $Res Function(_$EventImpl) then,
  ) = __$$EventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DropItem value});
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$MediaFormEventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
    _$EventImpl _value,
    $Res Function(_$EventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$EventImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as DropItem,
      ),
    );
  }
}

/// @nodoc

class _$EventImpl implements _Event {
  const _$EventImpl(this.value);

  @override
  final DropItem value;

  @override
  String toString() {
    return 'MediaFormEvent.event(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId, int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String value) notes,
    required TResult Function(String value) url,
    required TResult Function(DropItem value) event,
  }) {
    return event(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId, int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String value)? notes,
    TResult? Function(String value)? url,
    TResult? Function(DropItem value)? event,
  }) {
    return event?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId, int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String value)? notes,
    TResult Function(String value)? url,
    TResult Function(DropItem value)? event,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Notes value) notes,
    required TResult Function(_Url value) url,
    required TResult Function(_Event value) event,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Notes value)? notes,
    TResult? Function(_Url value)? url,
    TResult? Function(_Event value)? event,
  }) {
    return event?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_Notes value)? notes,
    TResult Function(_Url value)? url,
    TResult Function(_Event value)? event,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class _Event implements MediaFormEvent {
  const factory _Event(final DropItem value) = _$EventImpl;

  DropItem get value;

  /// Create a copy of MediaFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MediaFormState {
  Status get initStatus => throw _privateConstructorUsedError;
  Status get submitStatus => throw _privateConstructorUsedError;
  NotEmpty get notes => throw _privateConstructorUsedError;
  NotEmpty get url => throw _privateConstructorUsedError;
  DropdownValue get event => throw _privateConstructorUsedError;
  List<DropItem> get events => throw _privateConstructorUsedError;
  bool get validation => throw _privateConstructorUsedError;
  int get petId => throw _privateConstructorUsedError;

  /// Create a copy of MediaFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaFormStateCopyWith<MediaFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaFormStateCopyWith<$Res> {
  factory $MediaFormStateCopyWith(
    MediaFormState value,
    $Res Function(MediaFormState) then,
  ) = _$MediaFormStateCopyWithImpl<$Res, MediaFormState>;
  @useResult
  $Res call({
    Status initStatus,
    Status submitStatus,
    NotEmpty notes,
    NotEmpty url,
    DropdownValue event,
    List<DropItem> events,
    bool validation,
    int petId,
  });
}

/// @nodoc
class _$MediaFormStateCopyWithImpl<$Res, $Val extends MediaFormState>
    implements $MediaFormStateCopyWith<$Res> {
  _$MediaFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? submitStatus = null,
    Object? notes = null,
    Object? url = null,
    Object? event = null,
    Object? events = null,
    Object? validation = null,
    Object? petId = null,
  }) {
    return _then(
      _value.copyWith(
            initStatus:
                null == initStatus
                    ? _value.initStatus
                    : initStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            submitStatus:
                null == submitStatus
                    ? _value.submitStatus
                    : submitStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            notes:
                null == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            event:
                null == event
                    ? _value.event
                    : event // ignore: cast_nullable_to_non_nullable
                        as DropdownValue,
            events:
                null == events
                    ? _value.events
                    : events // ignore: cast_nullable_to_non_nullable
                        as List<DropItem>,
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
abstract class _$$MediaFormStateImplCopyWith<$Res>
    implements $MediaFormStateCopyWith<$Res> {
  factory _$$MediaFormStateImplCopyWith(
    _$MediaFormStateImpl value,
    $Res Function(_$MediaFormStateImpl) then,
  ) = __$$MediaFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status initStatus,
    Status submitStatus,
    NotEmpty notes,
    NotEmpty url,
    DropdownValue event,
    List<DropItem> events,
    bool validation,
    int petId,
  });
}

/// @nodoc
class __$$MediaFormStateImplCopyWithImpl<$Res>
    extends _$MediaFormStateCopyWithImpl<$Res, _$MediaFormStateImpl>
    implements _$$MediaFormStateImplCopyWith<$Res> {
  __$$MediaFormStateImplCopyWithImpl(
    _$MediaFormStateImpl _value,
    $Res Function(_$MediaFormStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MediaFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? submitStatus = null,
    Object? notes = null,
    Object? url = null,
    Object? event = null,
    Object? events = null,
    Object? validation = null,
    Object? petId = null,
  }) {
    return _then(
      _$MediaFormStateImpl(
        initStatus:
            null == initStatus
                ? _value.initStatus
                : initStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        submitStatus:
            null == submitStatus
                ? _value.submitStatus
                : submitStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        notes:
            null == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        event:
            null == event
                ? _value.event
                : event // ignore: cast_nullable_to_non_nullable
                    as DropdownValue,
        events:
            null == events
                ? _value._events
                : events // ignore: cast_nullable_to_non_nullable
                    as List<DropItem>,
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

class _$MediaFormStateImpl implements _MediaFormState {
  const _$MediaFormStateImpl({
    this.initStatus = Status.init,
    this.submitStatus = Status.init,
    this.notes = const NotEmpty.pure(),
    this.url = const NotEmpty.pure(),
    this.event = const DropdownValue.pure(),
    final List<DropItem> events = const [],
    this.validation = false,
    this.petId = 0,
  }) : _events = events;

  @override
  @JsonKey()
  final Status initStatus;
  @override
  @JsonKey()
  final Status submitStatus;
  @override
  @JsonKey()
  final NotEmpty notes;
  @override
  @JsonKey()
  final NotEmpty url;
  @override
  @JsonKey()
  final DropdownValue event;
  final List<DropItem> _events;
  @override
  @JsonKey()
  List<DropItem> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  @JsonKey()
  final bool validation;
  @override
  @JsonKey()
  final int petId;

  @override
  String toString() {
    return 'MediaFormState(initStatus: $initStatus, submitStatus: $submitStatus, notes: $notes, url: $url, event: $event, events: $events, validation: $validation, petId: $petId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaFormStateImpl &&
            (identical(other.initStatus, initStatus) ||
                other.initStatus == initStatus) &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.event, event) || other.event == event) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.petId, petId) || other.petId == petId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    initStatus,
    submitStatus,
    notes,
    url,
    event,
    const DeepCollectionEquality().hash(_events),
    validation,
    petId,
  );

  /// Create a copy of MediaFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaFormStateImplCopyWith<_$MediaFormStateImpl> get copyWith =>
      __$$MediaFormStateImplCopyWithImpl<_$MediaFormStateImpl>(
        this,
        _$identity,
      );
}

abstract class _MediaFormState implements MediaFormState {
  const factory _MediaFormState({
    final Status initStatus,
    final Status submitStatus,
    final NotEmpty notes,
    final NotEmpty url,
    final DropdownValue event,
    final List<DropItem> events,
    final bool validation,
    final int petId,
  }) = _$MediaFormStateImpl;

  @override
  Status get initStatus;
  @override
  Status get submitStatus;
  @override
  NotEmpty get notes;
  @override
  NotEmpty get url;
  @override
  DropdownValue get event;
  @override
  List<DropItem> get events;
  @override
  bool get validation;
  @override
  int get petId;

  /// Create a copy of MediaFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaFormStateImplCopyWith<_$MediaFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
