// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wag_ai_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WagAiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() chat,
    required TResult Function(String value) message,
    required TResult Function(List<String> images) images,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
    TResult? Function()? chat,
    TResult? Function(String value)? message,
    TResult? Function(List<String> images)? images,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? chat,
    TResult Function(String value)? message,
    TResult Function(List<String> images)? images,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialization value) initialization,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Message value) message,
    required TResult Function(_Images value) images,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialization value)? initialization,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Message value)? message,
    TResult? Function(_Images value)? images,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialization value)? initialization,
    TResult Function(_Chat value)? chat,
    TResult Function(_Message value)? message,
    TResult Function(_Images value)? images,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WagAiEventCopyWith<$Res> {
  factory $WagAiEventCopyWith(
    WagAiEvent value,
    $Res Function(WagAiEvent) then,
  ) = _$WagAiEventCopyWithImpl<$Res, WagAiEvent>;
}

/// @nodoc
class _$WagAiEventCopyWithImpl<$Res, $Val extends WagAiEvent>
    implements $WagAiEventCopyWith<$Res> {
  _$WagAiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializationImplCopyWith<$Res> {
  factory _$$InitializationImplCopyWith(
    _$InitializationImpl value,
    $Res Function(_$InitializationImpl) then,
  ) = __$$InitializationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializationImplCopyWithImpl<$Res>
    extends _$WagAiEventCopyWithImpl<$Res, _$InitializationImpl>
    implements _$$InitializationImplCopyWith<$Res> {
  __$$InitializationImplCopyWithImpl(
    _$InitializationImpl _value,
    $Res Function(_$InitializationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializationImpl
    with DiagnosticableTreeMixin
    implements _Initialization {
  const _$InitializationImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WagAiEvent.initialization()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WagAiEvent.initialization'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() chat,
    required TResult Function(String value) message,
    required TResult Function(List<String> images) images,
  }) {
    return initialization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
    TResult? Function()? chat,
    TResult? Function(String value)? message,
    TResult? Function(List<String> images)? images,
  }) {
    return initialization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? chat,
    TResult Function(String value)? message,
    TResult Function(List<String> images)? images,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialization value) initialization,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Message value) message,
    required TResult Function(_Images value) images,
  }) {
    return initialization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialization value)? initialization,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Message value)? message,
    TResult? Function(_Images value)? images,
  }) {
    return initialization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialization value)? initialization,
    TResult Function(_Chat value)? chat,
    TResult Function(_Message value)? message,
    TResult Function(_Images value)? images,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization(this);
    }
    return orElse();
  }
}

abstract class _Initialization implements WagAiEvent {
  const factory _Initialization() = _$InitializationImpl;
}

/// @nodoc
abstract class _$$ChatImplCopyWith<$Res> {
  factory _$$ChatImplCopyWith(
    _$ChatImpl value,
    $Res Function(_$ChatImpl) then,
  ) = __$$ChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatImplCopyWithImpl<$Res>
    extends _$WagAiEventCopyWithImpl<$Res, _$ChatImpl>
    implements _$$ChatImplCopyWith<$Res> {
  __$$ChatImplCopyWithImpl(_$ChatImpl _value, $Res Function(_$ChatImpl) _then)
    : super(_value, _then);

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatImpl with DiagnosticableTreeMixin implements _Chat {
  const _$ChatImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WagAiEvent.chat()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WagAiEvent.chat'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() chat,
    required TResult Function(String value) message,
    required TResult Function(List<String> images) images,
  }) {
    return chat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
    TResult? Function()? chat,
    TResult? Function(String value)? message,
    TResult? Function(List<String> images)? images,
  }) {
    return chat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? chat,
    TResult Function(String value)? message,
    TResult Function(List<String> images)? images,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialization value) initialization,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Message value) message,
    required TResult Function(_Images value) images,
  }) {
    return chat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialization value)? initialization,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Message value)? message,
    TResult? Function(_Images value)? images,
  }) {
    return chat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialization value)? initialization,
    TResult Function(_Chat value)? chat,
    TResult Function(_Message value)? message,
    TResult Function(_Images value)? images,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(this);
    }
    return orElse();
  }
}

abstract class _Chat implements WagAiEvent {
  const factory _Chat() = _$ChatImpl;
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
    _$MessageImpl value,
    $Res Function(_$MessageImpl) then,
  ) = __$$MessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$WagAiEventCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
    _$MessageImpl _value,
    $Res Function(_$MessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$MessageImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$MessageImpl with DiagnosticableTreeMixin implements _Message {
  const _$MessageImpl(this.value);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WagAiEvent.message(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WagAiEvent.message'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() chat,
    required TResult Function(String value) message,
    required TResult Function(List<String> images) images,
  }) {
    return message(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
    TResult? Function()? chat,
    TResult? Function(String value)? message,
    TResult? Function(List<String> images)? images,
  }) {
    return message?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? chat,
    TResult Function(String value)? message,
    TResult Function(List<String> images)? images,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialization value) initialization,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Message value) message,
    required TResult Function(_Images value) images,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialization value)? initialization,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Message value)? message,
    TResult? Function(_Images value)? images,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialization value)? initialization,
    TResult Function(_Chat value)? chat,
    TResult Function(_Message value)? message,
    TResult Function(_Images value)? images,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class _Message implements WagAiEvent {
  const factory _Message(final String value) = _$MessageImpl;

  String get value;

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImagesImplCopyWith<$Res> {
  factory _$$ImagesImplCopyWith(
    _$ImagesImpl value,
    $Res Function(_$ImagesImpl) then,
  ) = __$$ImagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> images});
}

/// @nodoc
class __$$ImagesImplCopyWithImpl<$Res>
    extends _$WagAiEventCopyWithImpl<$Res, _$ImagesImpl>
    implements _$$ImagesImplCopyWith<$Res> {
  __$$ImagesImplCopyWithImpl(
    _$ImagesImpl _value,
    $Res Function(_$ImagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? images = null}) {
    return _then(
      _$ImagesImpl(
        null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$ImagesImpl with DiagnosticableTreeMixin implements _Images {
  const _$ImagesImpl(final List<String> images) : _images = images;

  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WagAiEvent.images(images: $images)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WagAiEvent.images'))
      ..add(DiagnosticsProperty('images', images));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      __$$ImagesImplCopyWithImpl<_$ImagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() chat,
    required TResult Function(String value) message,
    required TResult Function(List<String> images) images,
  }) {
    return images(this.images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
    TResult? Function()? chat,
    TResult? Function(String value)? message,
    TResult? Function(List<String> images)? images,
  }) {
    return images?.call(this.images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? chat,
    TResult Function(String value)? message,
    TResult Function(List<String> images)? images,
    required TResult orElse(),
  }) {
    if (images != null) {
      return images(this.images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialization value) initialization,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Message value) message,
    required TResult Function(_Images value) images,
  }) {
    return images(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialization value)? initialization,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Message value)? message,
    TResult? Function(_Images value)? images,
  }) {
    return images?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialization value)? initialization,
    TResult Function(_Chat value)? chat,
    TResult Function(_Message value)? message,
    TResult Function(_Images value)? images,
    required TResult orElse(),
  }) {
    if (images != null) {
      return images(this);
    }
    return orElse();
  }
}

abstract class _Images implements WagAiEvent {
  const factory _Images(final List<String> images) = _$ImagesImpl;

  List<String> get images;

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WagAiState {
  Status get initStatus => throw _privateConstructorUsedError;
  Stream<String>? get stream => throw _privateConstructorUsedError;
  NotEmpty get message => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<AiMessage> get history => throw _privateConstructorUsedError;
  AiUsage? get usage => throw _privateConstructorUsedError;

  /// Create a copy of WagAiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WagAiStateCopyWith<WagAiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WagAiStateCopyWith<$Res> {
  factory $WagAiStateCopyWith(
    WagAiState value,
    $Res Function(WagAiState) then,
  ) = _$WagAiStateCopyWithImpl<$Res, WagAiState>;
  @useResult
  $Res call({
    Status initStatus,
    Stream<String>? stream,
    NotEmpty message,
    List<String> images,
    List<AiMessage> history,
    AiUsage? usage,
  });
}

/// @nodoc
class _$WagAiStateCopyWithImpl<$Res, $Val extends WagAiState>
    implements $WagAiStateCopyWith<$Res> {
  _$WagAiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WagAiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? stream = freezed,
    Object? message = null,
    Object? images = null,
    Object? history = null,
    Object? usage = freezed,
  }) {
    return _then(
      _value.copyWith(
            initStatus:
                null == initStatus
                    ? _value.initStatus
                    : initStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            stream:
                freezed == stream
                    ? _value.stream
                    : stream // ignore: cast_nullable_to_non_nullable
                        as Stream<String>?,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            images:
                null == images
                    ? _value.images
                    : images // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            history:
                null == history
                    ? _value.history
                    : history // ignore: cast_nullable_to_non_nullable
                        as List<AiMessage>,
            usage:
                freezed == usage
                    ? _value.usage
                    : usage // ignore: cast_nullable_to_non_nullable
                        as AiUsage?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WagAiStateImplCopyWith<$Res>
    implements $WagAiStateCopyWith<$Res> {
  factory _$$WagAiStateImplCopyWith(
    _$WagAiStateImpl value,
    $Res Function(_$WagAiStateImpl) then,
  ) = __$$WagAiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status initStatus,
    Stream<String>? stream,
    NotEmpty message,
    List<String> images,
    List<AiMessage> history,
    AiUsage? usage,
  });
}

/// @nodoc
class __$$WagAiStateImplCopyWithImpl<$Res>
    extends _$WagAiStateCopyWithImpl<$Res, _$WagAiStateImpl>
    implements _$$WagAiStateImplCopyWith<$Res> {
  __$$WagAiStateImplCopyWithImpl(
    _$WagAiStateImpl _value,
    $Res Function(_$WagAiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WagAiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? stream = freezed,
    Object? message = null,
    Object? images = null,
    Object? history = null,
    Object? usage = freezed,
  }) {
    return _then(
      _$WagAiStateImpl(
        initStatus:
            null == initStatus
                ? _value.initStatus
                : initStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        stream:
            freezed == stream
                ? _value.stream
                : stream // ignore: cast_nullable_to_non_nullable
                    as Stream<String>?,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        images:
            null == images
                ? _value._images
                : images // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        history:
            null == history
                ? _value._history
                : history // ignore: cast_nullable_to_non_nullable
                    as List<AiMessage>,
        usage:
            freezed == usage
                ? _value.usage
                : usage // ignore: cast_nullable_to_non_nullable
                    as AiUsage?,
      ),
    );
  }
}

/// @nodoc

class _$WagAiStateImpl with DiagnosticableTreeMixin implements _WagAiState {
  _$WagAiStateImpl({
    this.initStatus = Status.init,
    this.stream = null,
    this.message = const NotEmpty.pure(),
    final List<String> images = const [],
    final List<AiMessage> history = const [],
    this.usage = null,
  }) : _images = images,
       _history = history;

  @override
  @JsonKey()
  final Status initStatus;
  @override
  @JsonKey()
  final Stream<String>? stream;
  @override
  @JsonKey()
  final NotEmpty message;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<AiMessage> _history;
  @override
  @JsonKey()
  List<AiMessage> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  @JsonKey()
  final AiUsage? usage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WagAiState(initStatus: $initStatus, stream: $stream, message: $message, images: $images, history: $history, usage: $usage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WagAiState'))
      ..add(DiagnosticsProperty('initStatus', initStatus))
      ..add(DiagnosticsProperty('stream', stream))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('history', history))
      ..add(DiagnosticsProperty('usage', usage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WagAiStateImpl &&
            (identical(other.initStatus, initStatus) ||
                other.initStatus == initStatus) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    initStatus,
    stream,
    message,
    const DeepCollectionEquality().hash(_images),
    const DeepCollectionEquality().hash(_history),
    usage,
  );

  /// Create a copy of WagAiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WagAiStateImplCopyWith<_$WagAiStateImpl> get copyWith =>
      __$$WagAiStateImplCopyWithImpl<_$WagAiStateImpl>(this, _$identity);
}

abstract class _WagAiState implements WagAiState {
  factory _WagAiState({
    final Status initStatus,
    final Stream<String>? stream,
    final NotEmpty message,
    final List<String> images,
    final List<AiMessage> history,
    final AiUsage? usage,
  }) = _$WagAiStateImpl;

  @override
  Status get initStatus;
  @override
  Stream<String>? get stream;
  @override
  NotEmpty get message;
  @override
  List<String> get images;
  @override
  List<AiMessage> get history;
  @override
  AiUsage? get usage;

  /// Create a copy of WagAiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WagAiStateImplCopyWith<_$WagAiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
