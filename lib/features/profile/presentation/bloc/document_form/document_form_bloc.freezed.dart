// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DocumentFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int petId, int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String value) url,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId, int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String value)? url,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId, int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String value)? url,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Url value) url,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Url value)? url,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_Url value)? url,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentFormEventCopyWith<$Res> {
  factory $DocumentFormEventCopyWith(
    DocumentFormEvent value,
    $Res Function(DocumentFormEvent) then,
  ) = _$DocumentFormEventCopyWithImpl<$Res, DocumentFormEvent>;
}

/// @nodoc
class _$DocumentFormEventCopyWithImpl<$Res, $Val extends DocumentFormEvent>
    implements $DocumentFormEventCopyWith<$Res> {
  _$DocumentFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentFormEvent
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
    extends _$DocumentFormEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of DocumentFormEvent
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
    return 'DocumentFormEvent.init(petId: $petId, id: $id)';
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

  /// Create a copy of DocumentFormEvent
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
    required TResult Function(String value) url,
  }) {
    return init(petId, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId, int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String value)? url,
  }) {
    return init?.call(petId, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId, int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String value)? url,
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
    required TResult Function(_Url value) url,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Url value)? url,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_Url value)? url,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements DocumentFormEvent {
  const factory _Init(final int petId, final int? id) = _$InitImpl;

  int get petId;
  int? get id;

  /// Create a copy of DocumentFormEvent
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
    extends _$DocumentFormEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
    _$SubmitImpl _value,
    $Res Function(_$SubmitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DocumentFormEvent
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
    return 'DocumentFormEvent.submit(id: $id)';
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

  /// Create a copy of DocumentFormEvent
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
    required TResult Function(String value) url,
  }) {
    return submit(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId, int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String value)? url,
  }) {
    return submit?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId, int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String value)? url,
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
    required TResult Function(_Url value) url,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Url value)? url,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_Url value)? url,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements DocumentFormEvent {
  const factory _Submit(final int? id) = _$SubmitImpl;

  int? get id;

  /// Create a copy of DocumentFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
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
    extends _$DocumentFormEventCopyWithImpl<$Res, _$UrlImpl>
    implements _$$UrlImplCopyWith<$Res> {
  __$$UrlImplCopyWithImpl(_$UrlImpl _value, $Res Function(_$UrlImpl) _then)
    : super(_value, _then);

  /// Create a copy of DocumentFormEvent
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
    return 'DocumentFormEvent.url(value: $value)';
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

  /// Create a copy of DocumentFormEvent
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
    required TResult Function(String value) url,
  }) {
    return url(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int petId, int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String value)? url,
  }) {
    return url?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int petId, int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String value)? url,
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
    required TResult Function(_Url value) url,
  }) {
    return url(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Url value)? url,
  }) {
    return url?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_Url value)? url,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this);
    }
    return orElse();
  }
}

abstract class _Url implements DocumentFormEvent {
  const factory _Url(final String value) = _$UrlImpl;

  String get value;

  /// Create a copy of DocumentFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlImplCopyWith<_$UrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DocumentFormState {
  Status get initStatus => throw _privateConstructorUsedError;
  Status get submitStatus => throw _privateConstructorUsedError;
  NotEmpty get url => throw _privateConstructorUsedError;
  bool get validation => throw _privateConstructorUsedError;
  int get petId => throw _privateConstructorUsedError;

  /// Create a copy of DocumentFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentFormStateCopyWith<DocumentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentFormStateCopyWith<$Res> {
  factory $DocumentFormStateCopyWith(
    DocumentFormState value,
    $Res Function(DocumentFormState) then,
  ) = _$DocumentFormStateCopyWithImpl<$Res, DocumentFormState>;
  @useResult
  $Res call({
    Status initStatus,
    Status submitStatus,
    NotEmpty url,
    bool validation,
    int petId,
  });
}

/// @nodoc
class _$DocumentFormStateCopyWithImpl<$Res, $Val extends DocumentFormState>
    implements $DocumentFormStateCopyWith<$Res> {
  _$DocumentFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? submitStatus = null,
    Object? url = null,
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
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DocumentFormStateImplCopyWith<$Res>
    implements $DocumentFormStateCopyWith<$Res> {
  factory _$$DocumentFormStateImplCopyWith(
    _$DocumentFormStateImpl value,
    $Res Function(_$DocumentFormStateImpl) then,
  ) = __$$DocumentFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status initStatus,
    Status submitStatus,
    NotEmpty url,
    bool validation,
    int petId,
  });
}

/// @nodoc
class __$$DocumentFormStateImplCopyWithImpl<$Res>
    extends _$DocumentFormStateCopyWithImpl<$Res, _$DocumentFormStateImpl>
    implements _$$DocumentFormStateImplCopyWith<$Res> {
  __$$DocumentFormStateImplCopyWithImpl(
    _$DocumentFormStateImpl _value,
    $Res Function(_$DocumentFormStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DocumentFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? submitStatus = null,
    Object? url = null,
    Object? validation = null,
    Object? petId = null,
  }) {
    return _then(
      _$DocumentFormStateImpl(
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
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
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

class _$DocumentFormStateImpl implements _DocumentFormState {
  const _$DocumentFormStateImpl({
    this.initStatus = Status.init,
    this.submitStatus = Status.init,
    this.url = const NotEmpty.pure(),
    this.validation = false,
    this.petId = 0,
  });

  @override
  @JsonKey()
  final Status initStatus;
  @override
  @JsonKey()
  final Status submitStatus;
  @override
  @JsonKey()
  final NotEmpty url;
  @override
  @JsonKey()
  final bool validation;
  @override
  @JsonKey()
  final int petId;

  @override
  String toString() {
    return 'DocumentFormState(initStatus: $initStatus, submitStatus: $submitStatus, url: $url, validation: $validation, petId: $petId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentFormStateImpl &&
            (identical(other.initStatus, initStatus) ||
                other.initStatus == initStatus) &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.petId, petId) || other.petId == petId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    initStatus,
    submitStatus,
    url,
    validation,
    petId,
  );

  /// Create a copy of DocumentFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentFormStateImplCopyWith<_$DocumentFormStateImpl> get copyWith =>
      __$$DocumentFormStateImplCopyWithImpl<_$DocumentFormStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DocumentFormState implements DocumentFormState {
  const factory _DocumentFormState({
    final Status initStatus,
    final Status submitStatus,
    final NotEmpty url,
    final bool validation,
    final int petId,
  }) = _$DocumentFormStateImpl;

  @override
  Status get initStatus;
  @override
  Status get submitStatus;
  @override
  NotEmpty get url;
  @override
  bool get validation;
  @override
  int get petId;

  /// Create a copy of DocumentFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentFormStateImplCopyWith<_$DocumentFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
