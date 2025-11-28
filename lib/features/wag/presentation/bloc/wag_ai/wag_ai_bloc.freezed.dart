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
    required TResult Function() loadHistory,
    required TResult Function(bool value) showingUsageBottomSheet,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
    TResult? Function()? chat,
    TResult? Function(String value)? message,
    TResult? Function(List<String> images)? images,
    TResult? Function()? loadHistory,
    TResult? Function(bool value)? showingUsageBottomSheet,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? chat,
    TResult Function(String value)? message,
    TResult Function(List<String> images)? images,
    TResult Function()? loadHistory,
    TResult Function(bool value)? showingUsageBottomSheet,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialization value) initialization,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Message value) message,
    required TResult Function(_Images value) images,
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_ShowingUsageBottomSheet value)
    showingUsageBottomSheet,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialization value)? initialization,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Message value)? message,
    TResult? Function(_Images value)? images,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialization value)? initialization,
    TResult Function(_Chat value)? chat,
    TResult Function(_Message value)? message,
    TResult Function(_Images value)? images,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
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
    required TResult Function() loadHistory,
    required TResult Function(bool value) showingUsageBottomSheet,
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
    TResult? Function()? loadHistory,
    TResult? Function(bool value)? showingUsageBottomSheet,
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
    TResult Function()? loadHistory,
    TResult Function(bool value)? showingUsageBottomSheet,
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
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_ShowingUsageBottomSheet value)
    showingUsageBottomSheet,
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
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
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
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
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
    required TResult Function() loadHistory,
    required TResult Function(bool value) showingUsageBottomSheet,
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
    TResult? Function()? loadHistory,
    TResult? Function(bool value)? showingUsageBottomSheet,
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
    TResult Function()? loadHistory,
    TResult Function(bool value)? showingUsageBottomSheet,
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
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_ShowingUsageBottomSheet value)
    showingUsageBottomSheet,
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
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
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
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
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
    required TResult Function() loadHistory,
    required TResult Function(bool value) showingUsageBottomSheet,
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
    TResult? Function()? loadHistory,
    TResult? Function(bool value)? showingUsageBottomSheet,
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
    TResult Function()? loadHistory,
    TResult Function(bool value)? showingUsageBottomSheet,
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
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_ShowingUsageBottomSheet value)
    showingUsageBottomSheet,
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
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
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
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
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
    required TResult Function() loadHistory,
    required TResult Function(bool value) showingUsageBottomSheet,
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
    TResult? Function()? loadHistory,
    TResult? Function(bool value)? showingUsageBottomSheet,
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
    TResult Function()? loadHistory,
    TResult Function(bool value)? showingUsageBottomSheet,
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
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_ShowingUsageBottomSheet value)
    showingUsageBottomSheet,
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
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
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
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
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
abstract class _$$LoadHistoryImplCopyWith<$Res> {
  factory _$$LoadHistoryImplCopyWith(
    _$LoadHistoryImpl value,
    $Res Function(_$LoadHistoryImpl) then,
  ) = __$$LoadHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadHistoryImplCopyWithImpl<$Res>
    extends _$WagAiEventCopyWithImpl<$Res, _$LoadHistoryImpl>
    implements _$$LoadHistoryImplCopyWith<$Res> {
  __$$LoadHistoryImplCopyWithImpl(
    _$LoadHistoryImpl _value,
    $Res Function(_$LoadHistoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadHistoryImpl with DiagnosticableTreeMixin implements _LoadHistory {
  const _$LoadHistoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WagAiEvent.loadHistory()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WagAiEvent.loadHistory'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadHistoryImpl);
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
    required TResult Function() loadHistory,
    required TResult Function(bool value) showingUsageBottomSheet,
  }) {
    return loadHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
    TResult? Function()? chat,
    TResult? Function(String value)? message,
    TResult? Function(List<String> images)? images,
    TResult? Function()? loadHistory,
    TResult? Function(bool value)? showingUsageBottomSheet,
  }) {
    return loadHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? chat,
    TResult Function(String value)? message,
    TResult Function(List<String> images)? images,
    TResult Function()? loadHistory,
    TResult Function(bool value)? showingUsageBottomSheet,
    required TResult orElse(),
  }) {
    if (loadHistory != null) {
      return loadHistory();
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
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_ShowingUsageBottomSheet value)
    showingUsageBottomSheet,
  }) {
    return loadHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialization value)? initialization,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Message value)? message,
    TResult? Function(_Images value)? images,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
  }) {
    return loadHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialization value)? initialization,
    TResult Function(_Chat value)? chat,
    TResult Function(_Message value)? message,
    TResult Function(_Images value)? images,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
    required TResult orElse(),
  }) {
    if (loadHistory != null) {
      return loadHistory(this);
    }
    return orElse();
  }
}

abstract class _LoadHistory implements WagAiEvent {
  const factory _LoadHistory() = _$LoadHistoryImpl;
}

/// @nodoc
abstract class _$$ShowingUsageBottomSheetImplCopyWith<$Res> {
  factory _$$ShowingUsageBottomSheetImplCopyWith(
    _$ShowingUsageBottomSheetImpl value,
    $Res Function(_$ShowingUsageBottomSheetImpl) then,
  ) = __$$ShowingUsageBottomSheetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$ShowingUsageBottomSheetImplCopyWithImpl<$Res>
    extends _$WagAiEventCopyWithImpl<$Res, _$ShowingUsageBottomSheetImpl>
    implements _$$ShowingUsageBottomSheetImplCopyWith<$Res> {
  __$$ShowingUsageBottomSheetImplCopyWithImpl(
    _$ShowingUsageBottomSheetImpl _value,
    $Res Function(_$ShowingUsageBottomSheetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$ShowingUsageBottomSheetImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as bool,
      ),
    );
  }
}

/// @nodoc

class _$ShowingUsageBottomSheetImpl
    with DiagnosticableTreeMixin
    implements _ShowingUsageBottomSheet {
  const _$ShowingUsageBottomSheetImpl(this.value);

  @override
  final bool value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WagAiEvent.showingUsageBottomSheet(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WagAiEvent.showingUsageBottomSheet'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowingUsageBottomSheetImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowingUsageBottomSheetImplCopyWith<_$ShowingUsageBottomSheetImpl>
  get copyWith => __$$ShowingUsageBottomSheetImplCopyWithImpl<
    _$ShowingUsageBottomSheetImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() chat,
    required TResult Function(String value) message,
    required TResult Function(List<String> images) images,
    required TResult Function() loadHistory,
    required TResult Function(bool value) showingUsageBottomSheet,
  }) {
    return showingUsageBottomSheet(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialization,
    TResult? Function()? chat,
    TResult? Function(String value)? message,
    TResult? Function(List<String> images)? images,
    TResult? Function()? loadHistory,
    TResult? Function(bool value)? showingUsageBottomSheet,
  }) {
    return showingUsageBottomSheet?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? chat,
    TResult Function(String value)? message,
    TResult Function(List<String> images)? images,
    TResult Function()? loadHistory,
    TResult Function(bool value)? showingUsageBottomSheet,
    required TResult orElse(),
  }) {
    if (showingUsageBottomSheet != null) {
      return showingUsageBottomSheet(value);
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
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_ShowingUsageBottomSheet value)
    showingUsageBottomSheet,
  }) {
    return showingUsageBottomSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialization value)? initialization,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Message value)? message,
    TResult? Function(_Images value)? images,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
  }) {
    return showingUsageBottomSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialization value)? initialization,
    TResult Function(_Chat value)? chat,
    TResult Function(_Message value)? message,
    TResult Function(_Images value)? images,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_ShowingUsageBottomSheet value)? showingUsageBottomSheet,
    required TResult orElse(),
  }) {
    if (showingUsageBottomSheet != null) {
      return showingUsageBottomSheet(this);
    }
    return orElse();
  }
}

abstract class _ShowingUsageBottomSheet implements WagAiEvent {
  const factory _ShowingUsageBottomSheet(final bool value) =
      _$ShowingUsageBottomSheetImpl;

  bool get value;

  /// Create a copy of WagAiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowingUsageBottomSheetImplCopyWith<_$ShowingUsageBottomSheetImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WagAiState {
  Status get initStatus => throw _privateConstructorUsedError;
  Status get sendChatStatus => throw _privateConstructorUsedError;
  Stream<String>? get stream => throw _privateConstructorUsedError;
  String get streamResponse => throw _privateConstructorUsedError;
  NotEmpty get message => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<AiMessage> get history => throw _privateConstructorUsedError;
  AiChatHistory? get historydetails => throw _privateConstructorUsedError;
  List<Message> get responses => throw _privateConstructorUsedError;
  AiUsage? get usage => throw _privateConstructorUsedError;
  bool get showingUsageBottomSheet => throw _privateConstructorUsedError;
  bool get isSSECOnnected =>
      throw _privateConstructorUsedError; // Pagination state for history
  int get historyPage => throw _privateConstructorUsedError;
  int get historyLimit => throw _privateConstructorUsedError;
  bool get hasMoreHistory => throw _privateConstructorUsedError;
  Status get historyStatus => throw _privateConstructorUsedError;

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
    Status sendChatStatus,
    Stream<String>? stream,
    String streamResponse,
    NotEmpty message,
    List<String> images,
    List<AiMessage> history,
    AiChatHistory? historydetails,
    List<Message> responses,
    AiUsage? usage,
    bool showingUsageBottomSheet,
    bool isSSECOnnected,
    int historyPage,
    int historyLimit,
    bool hasMoreHistory,
    Status historyStatus,
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
    Object? sendChatStatus = null,
    Object? stream = freezed,
    Object? streamResponse = null,
    Object? message = null,
    Object? images = null,
    Object? history = null,
    Object? historydetails = freezed,
    Object? responses = null,
    Object? usage = freezed,
    Object? showingUsageBottomSheet = null,
    Object? isSSECOnnected = null,
    Object? historyPage = null,
    Object? historyLimit = null,
    Object? hasMoreHistory = null,
    Object? historyStatus = null,
  }) {
    return _then(
      _value.copyWith(
            initStatus:
                null == initStatus
                    ? _value.initStatus
                    : initStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            sendChatStatus:
                null == sendChatStatus
                    ? _value.sendChatStatus
                    : sendChatStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
            stream:
                freezed == stream
                    ? _value.stream
                    : stream // ignore: cast_nullable_to_non_nullable
                        as Stream<String>?,
            streamResponse:
                null == streamResponse
                    ? _value.streamResponse
                    : streamResponse // ignore: cast_nullable_to_non_nullable
                        as String,
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
            historydetails:
                freezed == historydetails
                    ? _value.historydetails
                    : historydetails // ignore: cast_nullable_to_non_nullable
                        as AiChatHistory?,
            responses:
                null == responses
                    ? _value.responses
                    : responses // ignore: cast_nullable_to_non_nullable
                        as List<Message>,
            usage:
                freezed == usage
                    ? _value.usage
                    : usage // ignore: cast_nullable_to_non_nullable
                        as AiUsage?,
            showingUsageBottomSheet:
                null == showingUsageBottomSheet
                    ? _value.showingUsageBottomSheet
                    : showingUsageBottomSheet // ignore: cast_nullable_to_non_nullable
                        as bool,
            isSSECOnnected:
                null == isSSECOnnected
                    ? _value.isSSECOnnected
                    : isSSECOnnected // ignore: cast_nullable_to_non_nullable
                        as bool,
            historyPage:
                null == historyPage
                    ? _value.historyPage
                    : historyPage // ignore: cast_nullable_to_non_nullable
                        as int,
            historyLimit:
                null == historyLimit
                    ? _value.historyLimit
                    : historyLimit // ignore: cast_nullable_to_non_nullable
                        as int,
            hasMoreHistory:
                null == hasMoreHistory
                    ? _value.hasMoreHistory
                    : hasMoreHistory // ignore: cast_nullable_to_non_nullable
                        as bool,
            historyStatus:
                null == historyStatus
                    ? _value.historyStatus
                    : historyStatus // ignore: cast_nullable_to_non_nullable
                        as Status,
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
    Status sendChatStatus,
    Stream<String>? stream,
    String streamResponse,
    NotEmpty message,
    List<String> images,
    List<AiMessage> history,
    AiChatHistory? historydetails,
    List<Message> responses,
    AiUsage? usage,
    bool showingUsageBottomSheet,
    bool isSSECOnnected,
    int historyPage,
    int historyLimit,
    bool hasMoreHistory,
    Status historyStatus,
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
    Object? sendChatStatus = null,
    Object? stream = freezed,
    Object? streamResponse = null,
    Object? message = null,
    Object? images = null,
    Object? history = null,
    Object? historydetails = freezed,
    Object? responses = null,
    Object? usage = freezed,
    Object? showingUsageBottomSheet = null,
    Object? isSSECOnnected = null,
    Object? historyPage = null,
    Object? historyLimit = null,
    Object? hasMoreHistory = null,
    Object? historyStatus = null,
  }) {
    return _then(
      _$WagAiStateImpl(
        initStatus:
            null == initStatus
                ? _value.initStatus
                : initStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        sendChatStatus:
            null == sendChatStatus
                ? _value.sendChatStatus
                : sendChatStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
        stream:
            freezed == stream
                ? _value.stream
                : stream // ignore: cast_nullable_to_non_nullable
                    as Stream<String>?,
        streamResponse:
            null == streamResponse
                ? _value.streamResponse
                : streamResponse // ignore: cast_nullable_to_non_nullable
                    as String,
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
        historydetails:
            freezed == historydetails
                ? _value.historydetails
                : historydetails // ignore: cast_nullable_to_non_nullable
                    as AiChatHistory?,
        responses:
            null == responses
                ? _value._responses
                : responses // ignore: cast_nullable_to_non_nullable
                    as List<Message>,
        usage:
            freezed == usage
                ? _value.usage
                : usage // ignore: cast_nullable_to_non_nullable
                    as AiUsage?,
        showingUsageBottomSheet:
            null == showingUsageBottomSheet
                ? _value.showingUsageBottomSheet
                : showingUsageBottomSheet // ignore: cast_nullable_to_non_nullable
                    as bool,
        isSSECOnnected:
            null == isSSECOnnected
                ? _value.isSSECOnnected
                : isSSECOnnected // ignore: cast_nullable_to_non_nullable
                    as bool,
        historyPage:
            null == historyPage
                ? _value.historyPage
                : historyPage // ignore: cast_nullable_to_non_nullable
                    as int,
        historyLimit:
            null == historyLimit
                ? _value.historyLimit
                : historyLimit // ignore: cast_nullable_to_non_nullable
                    as int,
        hasMoreHistory:
            null == hasMoreHistory
                ? _value.hasMoreHistory
                : hasMoreHistory // ignore: cast_nullable_to_non_nullable
                    as bool,
        historyStatus:
            null == historyStatus
                ? _value.historyStatus
                : historyStatus // ignore: cast_nullable_to_non_nullable
                    as Status,
      ),
    );
  }
}

/// @nodoc

class _$WagAiStateImpl with DiagnosticableTreeMixin implements _WagAiState {
  _$WagAiStateImpl({
    this.initStatus = Status.init,
    this.sendChatStatus = Status.init,
    this.stream = null,
    this.streamResponse = '',
    this.message = const NotEmpty.pure(),
    final List<String> images = const [],
    final List<AiMessage> history = const [],
    this.historydetails = null,
    final List<Message> responses = const [],
    this.usage = null,
    this.showingUsageBottomSheet = false,
    this.isSSECOnnected = false,
    this.historyPage = 1,
    this.historyLimit = 15,
    this.hasMoreHistory = true,
    this.historyStatus = Status.init,
  }) : _images = images,
       _history = history,
       _responses = responses;

  @override
  @JsonKey()
  final Status initStatus;
  @override
  @JsonKey()
  final Status sendChatStatus;
  @override
  @JsonKey()
  final Stream<String>? stream;
  @override
  @JsonKey()
  final String streamResponse;
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
  final AiChatHistory? historydetails;
  final List<Message> _responses;
  @override
  @JsonKey()
  List<Message> get responses {
    if (_responses is EqualUnmodifiableListView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responses);
  }

  @override
  @JsonKey()
  final AiUsage? usage;
  @override
  @JsonKey()
  final bool showingUsageBottomSheet;
  @override
  @JsonKey()
  final bool isSSECOnnected;
  // Pagination state for history
  @override
  @JsonKey()
  final int historyPage;
  @override
  @JsonKey()
  final int historyLimit;
  @override
  @JsonKey()
  final bool hasMoreHistory;
  @override
  @JsonKey()
  final Status historyStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WagAiState(initStatus: $initStatus, sendChatStatus: $sendChatStatus, stream: $stream, streamResponse: $streamResponse, message: $message, images: $images, history: $history, historydetails: $historydetails, responses: $responses, usage: $usage, showingUsageBottomSheet: $showingUsageBottomSheet, isSSECOnnected: $isSSECOnnected, historyPage: $historyPage, historyLimit: $historyLimit, hasMoreHistory: $hasMoreHistory, historyStatus: $historyStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WagAiState'))
      ..add(DiagnosticsProperty('initStatus', initStatus))
      ..add(DiagnosticsProperty('sendChatStatus', sendChatStatus))
      ..add(DiagnosticsProperty('stream', stream))
      ..add(DiagnosticsProperty('streamResponse', streamResponse))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('history', history))
      ..add(DiagnosticsProperty('historydetails', historydetails))
      ..add(DiagnosticsProperty('responses', responses))
      ..add(DiagnosticsProperty('usage', usage))
      ..add(
        DiagnosticsProperty('showingUsageBottomSheet', showingUsageBottomSheet),
      )
      ..add(DiagnosticsProperty('isSSECOnnected', isSSECOnnected))
      ..add(DiagnosticsProperty('historyPage', historyPage))
      ..add(DiagnosticsProperty('historyLimit', historyLimit))
      ..add(DiagnosticsProperty('hasMoreHistory', hasMoreHistory))
      ..add(DiagnosticsProperty('historyStatus', historyStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WagAiStateImpl &&
            (identical(other.initStatus, initStatus) ||
                other.initStatus == initStatus) &&
            (identical(other.sendChatStatus, sendChatStatus) ||
                other.sendChatStatus == sendChatStatus) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.streamResponse, streamResponse) ||
                other.streamResponse == streamResponse) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.historydetails, historydetails) ||
                other.historydetails == historydetails) &&
            const DeepCollectionEquality().equals(
              other._responses,
              _responses,
            ) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(
                  other.showingUsageBottomSheet,
                  showingUsageBottomSheet,
                ) ||
                other.showingUsageBottomSheet == showingUsageBottomSheet) &&
            (identical(other.isSSECOnnected, isSSECOnnected) ||
                other.isSSECOnnected == isSSECOnnected) &&
            (identical(other.historyPage, historyPage) ||
                other.historyPage == historyPage) &&
            (identical(other.historyLimit, historyLimit) ||
                other.historyLimit == historyLimit) &&
            (identical(other.hasMoreHistory, hasMoreHistory) ||
                other.hasMoreHistory == hasMoreHistory) &&
            (identical(other.historyStatus, historyStatus) ||
                other.historyStatus == historyStatus));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    initStatus,
    sendChatStatus,
    stream,
    streamResponse,
    message,
    const DeepCollectionEquality().hash(_images),
    const DeepCollectionEquality().hash(_history),
    historydetails,
    const DeepCollectionEquality().hash(_responses),
    usage,
    showingUsageBottomSheet,
    isSSECOnnected,
    historyPage,
    historyLimit,
    hasMoreHistory,
    historyStatus,
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
    final Status sendChatStatus,
    final Stream<String>? stream,
    final String streamResponse,
    final NotEmpty message,
    final List<String> images,
    final List<AiMessage> history,
    final AiChatHistory? historydetails,
    final List<Message> responses,
    final AiUsage? usage,
    final bool showingUsageBottomSheet,
    final bool isSSECOnnected,
    final int historyPage,
    final int historyLimit,
    final bool hasMoreHistory,
    final Status historyStatus,
  }) = _$WagAiStateImpl;

  @override
  Status get initStatus;
  @override
  Status get sendChatStatus;
  @override
  Stream<String>? get stream;
  @override
  String get streamResponse;
  @override
  NotEmpty get message;
  @override
  List<String> get images;
  @override
  List<AiMessage> get history;
  @override
  AiChatHistory? get historydetails;
  @override
  List<Message> get responses;
  @override
  AiUsage? get usage;
  @override
  bool get showingUsageBottomSheet;
  @override
  bool get isSSECOnnected; // Pagination state for history
  @override
  int get historyPage;
  @override
  int get historyLimit;
  @override
  bool get hasMoreHistory;
  @override
  Status get historyStatus;

  /// Create a copy of WagAiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WagAiStateImplCopyWith<_$WagAiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
