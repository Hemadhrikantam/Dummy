// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_care_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DailyCareEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int index) changePageIndex,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int index)? changePageIndex,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int index)? changePageIndex,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangePageIndex value) changePageIndex,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangePageIndex value)? changePageIndex,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangePageIndex value)? changePageIndex,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCareEventCopyWith<$Res> {
  factory $DailyCareEventCopyWith(
    DailyCareEvent value,
    $Res Function(DailyCareEvent) then,
  ) = _$DailyCareEventCopyWithImpl<$Res, DailyCareEvent>;
}

/// @nodoc
class _$DailyCareEventCopyWithImpl<$Res, $Val extends DailyCareEvent>
    implements $DailyCareEventCopyWith<$Res> {
  _$DailyCareEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyCareEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
    _$InitImpl value,
    $Res Function(_$InitImpl) then,
  ) = __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$DailyCareEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of DailyCareEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'DailyCareEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int index) changePageIndex,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int index)? changePageIndex,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int index)? changePageIndex,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangePageIndex value) changePageIndex,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangePageIndex value)? changePageIndex,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangePageIndex value)? changePageIndex,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements DailyCareEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$ChangePageIndexImplCopyWith<$Res> {
  factory _$$ChangePageIndexImplCopyWith(
    _$ChangePageIndexImpl value,
    $Res Function(_$ChangePageIndexImpl) then,
  ) = __$$ChangePageIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangePageIndexImplCopyWithImpl<$Res>
    extends _$DailyCareEventCopyWithImpl<$Res, _$ChangePageIndexImpl>
    implements _$$ChangePageIndexImplCopyWith<$Res> {
  __$$ChangePageIndexImplCopyWithImpl(
    _$ChangePageIndexImpl _value,
    $Res Function(_$ChangePageIndexImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyCareEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$ChangePageIndexImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$ChangePageIndexImpl implements _ChangePageIndex {
  const _$ChangePageIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'DailyCareEvent.changePageIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of DailyCareEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageIndexImplCopyWith<_$ChangePageIndexImpl> get copyWith =>
      __$$ChangePageIndexImplCopyWithImpl<_$ChangePageIndexImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int index) changePageIndex,
  }) {
    return changePageIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int index)? changePageIndex,
  }) {
    return changePageIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int index)? changePageIndex,
    required TResult orElse(),
  }) {
    if (changePageIndex != null) {
      return changePageIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangePageIndex value) changePageIndex,
  }) {
    return changePageIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangePageIndex value)? changePageIndex,
  }) {
    return changePageIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangePageIndex value)? changePageIndex,
    required TResult orElse(),
  }) {
    if (changePageIndex != null) {
      return changePageIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangePageIndex implements DailyCareEvent {
  const factory _ChangePageIndex(final int index) = _$ChangePageIndexImpl;

  int get index;

  /// Create a copy of DailyCareEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePageIndexImplCopyWith<_$ChangePageIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DailyCareState {
  int get pageIndex => throw _privateConstructorUsedError;

  /// Create a copy of DailyCareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyCareStateCopyWith<DailyCareState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCareStateCopyWith<$Res> {
  factory $DailyCareStateCopyWith(
    DailyCareState value,
    $Res Function(DailyCareState) then,
  ) = _$DailyCareStateCopyWithImpl<$Res, DailyCareState>;
  @useResult
  $Res call({int pageIndex});
}

/// @nodoc
class _$DailyCareStateCopyWithImpl<$Res, $Val extends DailyCareState>
    implements $DailyCareStateCopyWith<$Res> {
  _$DailyCareStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyCareState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pageIndex = null}) {
    return _then(
      _value.copyWith(
            pageIndex:
                null == pageIndex
                    ? _value.pageIndex
                    : pageIndex // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyCareStateImplCopyWith<$Res>
    implements $DailyCareStateCopyWith<$Res> {
  factory _$$DailyCareStateImplCopyWith(
    _$DailyCareStateImpl value,
    $Res Function(_$DailyCareStateImpl) then,
  ) = __$$DailyCareStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageIndex});
}

/// @nodoc
class __$$DailyCareStateImplCopyWithImpl<$Res>
    extends _$DailyCareStateCopyWithImpl<$Res, _$DailyCareStateImpl>
    implements _$$DailyCareStateImplCopyWith<$Res> {
  __$$DailyCareStateImplCopyWithImpl(
    _$DailyCareStateImpl _value,
    $Res Function(_$DailyCareStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyCareState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pageIndex = null}) {
    return _then(
      _$DailyCareStateImpl(
        pageIndex:
            null == pageIndex
                ? _value.pageIndex
                : pageIndex // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$DailyCareStateImpl implements _DailyCareState {
  const _$DailyCareStateImpl({this.pageIndex = 0});

  @override
  @JsonKey()
  final int pageIndex;

  @override
  String toString() {
    return 'DailyCareState(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyCareStateImpl &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex);

  /// Create a copy of DailyCareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyCareStateImplCopyWith<_$DailyCareStateImpl> get copyWith =>
      __$$DailyCareStateImplCopyWithImpl<_$DailyCareStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DailyCareState implements DailyCareState {
  const factory _DailyCareState({final int pageIndex}) = _$DailyCareStateImpl;

  @override
  int get pageIndex;

  /// Create a copy of DailyCareState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyCareStateImplCopyWith<_$DailyCareStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
