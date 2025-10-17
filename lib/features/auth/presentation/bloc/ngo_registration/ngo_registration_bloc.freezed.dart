// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ngo_registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NgoRegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) ngoName,
    required TResult Function(String value) contactPersonName,
    required TResult Function(String value) email,
    required TResult Function(String value) phone,
    required TResult Function(String value) address,
    required TResult Function(String value) pincode,
    required TResult Function(String path) registrationProofFile,
    required TResult Function() submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? ngoName,
    TResult? Function(String value)? contactPersonName,
    TResult? Function(String value)? email,
    TResult? Function(String value)? phone,
    TResult? Function(String value)? address,
    TResult? Function(String value)? pincode,
    TResult? Function(String path)? registrationProofFile,
    TResult? Function()? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? ngoName,
    TResult Function(String value)? contactPersonName,
    TResult Function(String value)? email,
    TResult Function(String value)? phone,
    TResult Function(String value)? address,
    TResult Function(String value)? pincode,
    TResult Function(String path)? registrationProofFile,
    TResult Function()? submit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NgoName value) ngoName,
    required TResult Function(_ContactPersonName value) contactPersonName,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Address value) address,
    required TResult Function(_PinCode value) pincode,
    required TResult Function(_RegistrationProofFile value)
    registrationProofFile,
    required TResult Function(_Submit value) submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NgoName value)? ngoName,
    TResult? Function(_ContactPersonName value)? contactPersonName,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Address value)? address,
    TResult? Function(_PinCode value)? pincode,
    TResult? Function(_RegistrationProofFile value)? registrationProofFile,
    TResult? Function(_Submit value)? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NgoName value)? ngoName,
    TResult Function(_ContactPersonName value)? contactPersonName,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Address value)? address,
    TResult Function(_PinCode value)? pincode,
    TResult Function(_RegistrationProofFile value)? registrationProofFile,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NgoRegistrationEventCopyWith<$Res> {
  factory $NgoRegistrationEventCopyWith(
    NgoRegistrationEvent value,
    $Res Function(NgoRegistrationEvent) then,
  ) = _$NgoRegistrationEventCopyWithImpl<$Res, NgoRegistrationEvent>;
}

/// @nodoc
class _$NgoRegistrationEventCopyWithImpl<
  $Res,
  $Val extends NgoRegistrationEvent
>
    implements $NgoRegistrationEventCopyWith<$Res> {
  _$NgoRegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NgoNameImplCopyWith<$Res> {
  factory _$$NgoNameImplCopyWith(
    _$NgoNameImpl value,
    $Res Function(_$NgoNameImpl) then,
  ) = __$$NgoNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$NgoNameImplCopyWithImpl<$Res>
    extends _$NgoRegistrationEventCopyWithImpl<$Res, _$NgoNameImpl>
    implements _$$NgoNameImplCopyWith<$Res> {
  __$$NgoNameImplCopyWithImpl(
    _$NgoNameImpl _value,
    $Res Function(_$NgoNameImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$NgoNameImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$NgoNameImpl implements _NgoName {
  const _$NgoNameImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'NgoRegistrationEvent.ngoName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NgoNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NgoNameImplCopyWith<_$NgoNameImpl> get copyWith =>
      __$$NgoNameImplCopyWithImpl<_$NgoNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) ngoName,
    required TResult Function(String value) contactPersonName,
    required TResult Function(String value) email,
    required TResult Function(String value) phone,
    required TResult Function(String value) address,
    required TResult Function(String value) pincode,
    required TResult Function(String path) registrationProofFile,
    required TResult Function() submit,
  }) {
    return ngoName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? ngoName,
    TResult? Function(String value)? contactPersonName,
    TResult? Function(String value)? email,
    TResult? Function(String value)? phone,
    TResult? Function(String value)? address,
    TResult? Function(String value)? pincode,
    TResult? Function(String path)? registrationProofFile,
    TResult? Function()? submit,
  }) {
    return ngoName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? ngoName,
    TResult Function(String value)? contactPersonName,
    TResult Function(String value)? email,
    TResult Function(String value)? phone,
    TResult Function(String value)? address,
    TResult Function(String value)? pincode,
    TResult Function(String path)? registrationProofFile,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (ngoName != null) {
      return ngoName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NgoName value) ngoName,
    required TResult Function(_ContactPersonName value) contactPersonName,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Address value) address,
    required TResult Function(_PinCode value) pincode,
    required TResult Function(_RegistrationProofFile value)
    registrationProofFile,
    required TResult Function(_Submit value) submit,
  }) {
    return ngoName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NgoName value)? ngoName,
    TResult? Function(_ContactPersonName value)? contactPersonName,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Address value)? address,
    TResult? Function(_PinCode value)? pincode,
    TResult? Function(_RegistrationProofFile value)? registrationProofFile,
    TResult? Function(_Submit value)? submit,
  }) {
    return ngoName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NgoName value)? ngoName,
    TResult Function(_ContactPersonName value)? contactPersonName,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Address value)? address,
    TResult Function(_PinCode value)? pincode,
    TResult Function(_RegistrationProofFile value)? registrationProofFile,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (ngoName != null) {
      return ngoName(this);
    }
    return orElse();
  }
}

abstract class _NgoName implements NgoRegistrationEvent {
  const factory _NgoName(final String value) = _$NgoNameImpl;

  String get value;

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NgoNameImplCopyWith<_$NgoNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContactPersonNameImplCopyWith<$Res> {
  factory _$$ContactPersonNameImplCopyWith(
    _$ContactPersonNameImpl value,
    $Res Function(_$ContactPersonNameImpl) then,
  ) = __$$ContactPersonNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ContactPersonNameImplCopyWithImpl<$Res>
    extends _$NgoRegistrationEventCopyWithImpl<$Res, _$ContactPersonNameImpl>
    implements _$$ContactPersonNameImplCopyWith<$Res> {
  __$$ContactPersonNameImplCopyWithImpl(
    _$ContactPersonNameImpl _value,
    $Res Function(_$ContactPersonNameImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$ContactPersonNameImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ContactPersonNameImpl implements _ContactPersonName {
  const _$ContactPersonNameImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'NgoRegistrationEvent.contactPersonName(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactPersonNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactPersonNameImplCopyWith<_$ContactPersonNameImpl> get copyWith =>
      __$$ContactPersonNameImplCopyWithImpl<_$ContactPersonNameImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) ngoName,
    required TResult Function(String value) contactPersonName,
    required TResult Function(String value) email,
    required TResult Function(String value) phone,
    required TResult Function(String value) address,
    required TResult Function(String value) pincode,
    required TResult Function(String path) registrationProofFile,
    required TResult Function() submit,
  }) {
    return contactPersonName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? ngoName,
    TResult? Function(String value)? contactPersonName,
    TResult? Function(String value)? email,
    TResult? Function(String value)? phone,
    TResult? Function(String value)? address,
    TResult? Function(String value)? pincode,
    TResult? Function(String path)? registrationProofFile,
    TResult? Function()? submit,
  }) {
    return contactPersonName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? ngoName,
    TResult Function(String value)? contactPersonName,
    TResult Function(String value)? email,
    TResult Function(String value)? phone,
    TResult Function(String value)? address,
    TResult Function(String value)? pincode,
    TResult Function(String path)? registrationProofFile,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (contactPersonName != null) {
      return contactPersonName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NgoName value) ngoName,
    required TResult Function(_ContactPersonName value) contactPersonName,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Address value) address,
    required TResult Function(_PinCode value) pincode,
    required TResult Function(_RegistrationProofFile value)
    registrationProofFile,
    required TResult Function(_Submit value) submit,
  }) {
    return contactPersonName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NgoName value)? ngoName,
    TResult? Function(_ContactPersonName value)? contactPersonName,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Address value)? address,
    TResult? Function(_PinCode value)? pincode,
    TResult? Function(_RegistrationProofFile value)? registrationProofFile,
    TResult? Function(_Submit value)? submit,
  }) {
    return contactPersonName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NgoName value)? ngoName,
    TResult Function(_ContactPersonName value)? contactPersonName,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Address value)? address,
    TResult Function(_PinCode value)? pincode,
    TResult Function(_RegistrationProofFile value)? registrationProofFile,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (contactPersonName != null) {
      return contactPersonName(this);
    }
    return orElse();
  }
}

abstract class _ContactPersonName implements NgoRegistrationEvent {
  const factory _ContactPersonName(final String value) =
      _$ContactPersonNameImpl;

  String get value;

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactPersonNameImplCopyWith<_$ContactPersonNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailImplCopyWith<$Res> {
  factory _$$EmailImplCopyWith(
    _$EmailImpl value,
    $Res Function(_$EmailImpl) then,
  ) = __$$EmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$EmailImplCopyWithImpl<$Res>
    extends _$NgoRegistrationEventCopyWithImpl<$Res, _$EmailImpl>
    implements _$$EmailImplCopyWith<$Res> {
  __$$EmailImplCopyWithImpl(
    _$EmailImpl _value,
    $Res Function(_$EmailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$EmailImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$EmailImpl implements _Email {
  const _$EmailImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'NgoRegistrationEvent.email(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailImplCopyWith<_$EmailImpl> get copyWith =>
      __$$EmailImplCopyWithImpl<_$EmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) ngoName,
    required TResult Function(String value) contactPersonName,
    required TResult Function(String value) email,
    required TResult Function(String value) phone,
    required TResult Function(String value) address,
    required TResult Function(String value) pincode,
    required TResult Function(String path) registrationProofFile,
    required TResult Function() submit,
  }) {
    return email(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? ngoName,
    TResult? Function(String value)? contactPersonName,
    TResult? Function(String value)? email,
    TResult? Function(String value)? phone,
    TResult? Function(String value)? address,
    TResult? Function(String value)? pincode,
    TResult? Function(String path)? registrationProofFile,
    TResult? Function()? submit,
  }) {
    return email?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? ngoName,
    TResult Function(String value)? contactPersonName,
    TResult Function(String value)? email,
    TResult Function(String value)? phone,
    TResult Function(String value)? address,
    TResult Function(String value)? pincode,
    TResult Function(String path)? registrationProofFile,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NgoName value) ngoName,
    required TResult Function(_ContactPersonName value) contactPersonName,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Address value) address,
    required TResult Function(_PinCode value) pincode,
    required TResult Function(_RegistrationProofFile value)
    registrationProofFile,
    required TResult Function(_Submit value) submit,
  }) {
    return email(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NgoName value)? ngoName,
    TResult? Function(_ContactPersonName value)? contactPersonName,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Address value)? address,
    TResult? Function(_PinCode value)? pincode,
    TResult? Function(_RegistrationProofFile value)? registrationProofFile,
    TResult? Function(_Submit value)? submit,
  }) {
    return email?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NgoName value)? ngoName,
    TResult Function(_ContactPersonName value)? contactPersonName,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Address value)? address,
    TResult Function(_PinCode value)? pincode,
    TResult Function(_RegistrationProofFile value)? registrationProofFile,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(this);
    }
    return orElse();
  }
}

abstract class _Email implements NgoRegistrationEvent {
  const factory _Email(final String value) = _$EmailImpl;

  String get value;

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailImplCopyWith<_$EmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneImplCopyWith<$Res> {
  factory _$$PhoneImplCopyWith(
    _$PhoneImpl value,
    $Res Function(_$PhoneImpl) then,
  ) = __$$PhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$PhoneImplCopyWithImpl<$Res>
    extends _$NgoRegistrationEventCopyWithImpl<$Res, _$PhoneImpl>
    implements _$$PhoneImplCopyWith<$Res> {
  __$$PhoneImplCopyWithImpl(
    _$PhoneImpl _value,
    $Res Function(_$PhoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$PhoneImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$PhoneImpl implements _Phone {
  const _$PhoneImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'NgoRegistrationEvent.phone(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneImplCopyWith<_$PhoneImpl> get copyWith =>
      __$$PhoneImplCopyWithImpl<_$PhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) ngoName,
    required TResult Function(String value) contactPersonName,
    required TResult Function(String value) email,
    required TResult Function(String value) phone,
    required TResult Function(String value) address,
    required TResult Function(String value) pincode,
    required TResult Function(String path) registrationProofFile,
    required TResult Function() submit,
  }) {
    return phone(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? ngoName,
    TResult? Function(String value)? contactPersonName,
    TResult? Function(String value)? email,
    TResult? Function(String value)? phone,
    TResult? Function(String value)? address,
    TResult? Function(String value)? pincode,
    TResult? Function(String path)? registrationProofFile,
    TResult? Function()? submit,
  }) {
    return phone?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? ngoName,
    TResult Function(String value)? contactPersonName,
    TResult Function(String value)? email,
    TResult Function(String value)? phone,
    TResult Function(String value)? address,
    TResult Function(String value)? pincode,
    TResult Function(String path)? registrationProofFile,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (phone != null) {
      return phone(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NgoName value) ngoName,
    required TResult Function(_ContactPersonName value) contactPersonName,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Address value) address,
    required TResult Function(_PinCode value) pincode,
    required TResult Function(_RegistrationProofFile value)
    registrationProofFile,
    required TResult Function(_Submit value) submit,
  }) {
    return phone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NgoName value)? ngoName,
    TResult? Function(_ContactPersonName value)? contactPersonName,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Address value)? address,
    TResult? Function(_PinCode value)? pincode,
    TResult? Function(_RegistrationProofFile value)? registrationProofFile,
    TResult? Function(_Submit value)? submit,
  }) {
    return phone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NgoName value)? ngoName,
    TResult Function(_ContactPersonName value)? contactPersonName,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Address value)? address,
    TResult Function(_PinCode value)? pincode,
    TResult Function(_RegistrationProofFile value)? registrationProofFile,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (phone != null) {
      return phone(this);
    }
    return orElse();
  }
}

abstract class _Phone implements NgoRegistrationEvent {
  const factory _Phone(final String value) = _$PhoneImpl;

  String get value;

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneImplCopyWith<_$PhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
    _$AddressImpl value,
    $Res Function(_$AddressImpl) then,
  ) = __$$AddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$NgoRegistrationEventCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
    _$AddressImpl _value,
    $Res Function(_$AddressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$AddressImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$AddressImpl implements _Address {
  const _$AddressImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'NgoRegistrationEvent.address(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) ngoName,
    required TResult Function(String value) contactPersonName,
    required TResult Function(String value) email,
    required TResult Function(String value) phone,
    required TResult Function(String value) address,
    required TResult Function(String value) pincode,
    required TResult Function(String path) registrationProofFile,
    required TResult Function() submit,
  }) {
    return address(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? ngoName,
    TResult? Function(String value)? contactPersonName,
    TResult? Function(String value)? email,
    TResult? Function(String value)? phone,
    TResult? Function(String value)? address,
    TResult? Function(String value)? pincode,
    TResult? Function(String path)? registrationProofFile,
    TResult? Function()? submit,
  }) {
    return address?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? ngoName,
    TResult Function(String value)? contactPersonName,
    TResult Function(String value)? email,
    TResult Function(String value)? phone,
    TResult Function(String value)? address,
    TResult Function(String value)? pincode,
    TResult Function(String path)? registrationProofFile,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (address != null) {
      return address(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NgoName value) ngoName,
    required TResult Function(_ContactPersonName value) contactPersonName,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Address value) address,
    required TResult Function(_PinCode value) pincode,
    required TResult Function(_RegistrationProofFile value)
    registrationProofFile,
    required TResult Function(_Submit value) submit,
  }) {
    return address(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NgoName value)? ngoName,
    TResult? Function(_ContactPersonName value)? contactPersonName,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Address value)? address,
    TResult? Function(_PinCode value)? pincode,
    TResult? Function(_RegistrationProofFile value)? registrationProofFile,
    TResult? Function(_Submit value)? submit,
  }) {
    return address?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NgoName value)? ngoName,
    TResult Function(_ContactPersonName value)? contactPersonName,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Address value)? address,
    TResult Function(_PinCode value)? pincode,
    TResult Function(_RegistrationProofFile value)? registrationProofFile,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (address != null) {
      return address(this);
    }
    return orElse();
  }
}

abstract class _Address implements NgoRegistrationEvent {
  const factory _Address(final String value) = _$AddressImpl;

  String get value;

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PinCodeImplCopyWith<$Res> {
  factory _$$PinCodeImplCopyWith(
    _$PinCodeImpl value,
    $Res Function(_$PinCodeImpl) then,
  ) = __$$PinCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$PinCodeImplCopyWithImpl<$Res>
    extends _$NgoRegistrationEventCopyWithImpl<$Res, _$PinCodeImpl>
    implements _$$PinCodeImplCopyWith<$Res> {
  __$$PinCodeImplCopyWithImpl(
    _$PinCodeImpl _value,
    $Res Function(_$PinCodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$PinCodeImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$PinCodeImpl implements _PinCode {
  const _$PinCodeImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'NgoRegistrationEvent.pincode(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PinCodeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PinCodeImplCopyWith<_$PinCodeImpl> get copyWith =>
      __$$PinCodeImplCopyWithImpl<_$PinCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) ngoName,
    required TResult Function(String value) contactPersonName,
    required TResult Function(String value) email,
    required TResult Function(String value) phone,
    required TResult Function(String value) address,
    required TResult Function(String value) pincode,
    required TResult Function(String path) registrationProofFile,
    required TResult Function() submit,
  }) {
    return pincode(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? ngoName,
    TResult? Function(String value)? contactPersonName,
    TResult? Function(String value)? email,
    TResult? Function(String value)? phone,
    TResult? Function(String value)? address,
    TResult? Function(String value)? pincode,
    TResult? Function(String path)? registrationProofFile,
    TResult? Function()? submit,
  }) {
    return pincode?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? ngoName,
    TResult Function(String value)? contactPersonName,
    TResult Function(String value)? email,
    TResult Function(String value)? phone,
    TResult Function(String value)? address,
    TResult Function(String value)? pincode,
    TResult Function(String path)? registrationProofFile,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (pincode != null) {
      return pincode(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NgoName value) ngoName,
    required TResult Function(_ContactPersonName value) contactPersonName,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Address value) address,
    required TResult Function(_PinCode value) pincode,
    required TResult Function(_RegistrationProofFile value)
    registrationProofFile,
    required TResult Function(_Submit value) submit,
  }) {
    return pincode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NgoName value)? ngoName,
    TResult? Function(_ContactPersonName value)? contactPersonName,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Address value)? address,
    TResult? Function(_PinCode value)? pincode,
    TResult? Function(_RegistrationProofFile value)? registrationProofFile,
    TResult? Function(_Submit value)? submit,
  }) {
    return pincode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NgoName value)? ngoName,
    TResult Function(_ContactPersonName value)? contactPersonName,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Address value)? address,
    TResult Function(_PinCode value)? pincode,
    TResult Function(_RegistrationProofFile value)? registrationProofFile,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (pincode != null) {
      return pincode(this);
    }
    return orElse();
  }
}

abstract class _PinCode implements NgoRegistrationEvent {
  const factory _PinCode(final String value) = _$PinCodeImpl;

  String get value;

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PinCodeImplCopyWith<_$PinCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationProofFileImplCopyWith<$Res> {
  factory _$$RegistrationProofFileImplCopyWith(
    _$RegistrationProofFileImpl value,
    $Res Function(_$RegistrationProofFileImpl) then,
  ) = __$$RegistrationProofFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$RegistrationProofFileImplCopyWithImpl<$Res>
    extends
        _$NgoRegistrationEventCopyWithImpl<$Res, _$RegistrationProofFileImpl>
    implements _$$RegistrationProofFileImplCopyWith<$Res> {
  __$$RegistrationProofFileImplCopyWithImpl(
    _$RegistrationProofFileImpl _value,
    $Res Function(_$RegistrationProofFileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? path = null}) {
    return _then(
      _$RegistrationProofFileImpl(
        null == path
            ? _value.path
            : path // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$RegistrationProofFileImpl implements _RegistrationProofFile {
  const _$RegistrationProofFileImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'NgoRegistrationEvent.registrationProofFile(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationProofFileImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationProofFileImplCopyWith<_$RegistrationProofFileImpl>
  get copyWith =>
      __$$RegistrationProofFileImplCopyWithImpl<_$RegistrationProofFileImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) ngoName,
    required TResult Function(String value) contactPersonName,
    required TResult Function(String value) email,
    required TResult Function(String value) phone,
    required TResult Function(String value) address,
    required TResult Function(String value) pincode,
    required TResult Function(String path) registrationProofFile,
    required TResult Function() submit,
  }) {
    return registrationProofFile(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? ngoName,
    TResult? Function(String value)? contactPersonName,
    TResult? Function(String value)? email,
    TResult? Function(String value)? phone,
    TResult? Function(String value)? address,
    TResult? Function(String value)? pincode,
    TResult? Function(String path)? registrationProofFile,
    TResult? Function()? submit,
  }) {
    return registrationProofFile?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? ngoName,
    TResult Function(String value)? contactPersonName,
    TResult Function(String value)? email,
    TResult Function(String value)? phone,
    TResult Function(String value)? address,
    TResult Function(String value)? pincode,
    TResult Function(String path)? registrationProofFile,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (registrationProofFile != null) {
      return registrationProofFile(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NgoName value) ngoName,
    required TResult Function(_ContactPersonName value) contactPersonName,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Address value) address,
    required TResult Function(_PinCode value) pincode,
    required TResult Function(_RegistrationProofFile value)
    registrationProofFile,
    required TResult Function(_Submit value) submit,
  }) {
    return registrationProofFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NgoName value)? ngoName,
    TResult? Function(_ContactPersonName value)? contactPersonName,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Address value)? address,
    TResult? Function(_PinCode value)? pincode,
    TResult? Function(_RegistrationProofFile value)? registrationProofFile,
    TResult? Function(_Submit value)? submit,
  }) {
    return registrationProofFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NgoName value)? ngoName,
    TResult Function(_ContactPersonName value)? contactPersonName,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Address value)? address,
    TResult Function(_PinCode value)? pincode,
    TResult Function(_RegistrationProofFile value)? registrationProofFile,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (registrationProofFile != null) {
      return registrationProofFile(this);
    }
    return orElse();
  }
}

abstract class _RegistrationProofFile implements NgoRegistrationEvent {
  const factory _RegistrationProofFile(final String path) =
      _$RegistrationProofFileImpl;

  String get path;

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationProofFileImplCopyWith<_$RegistrationProofFileImpl>
  get copyWith => throw _privateConstructorUsedError;
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
    extends _$NgoRegistrationEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
    _$SubmitImpl _value,
    $Res Function(_$SubmitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NgoRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'NgoRegistrationEvent.submit()';
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
    required TResult Function(String value) ngoName,
    required TResult Function(String value) contactPersonName,
    required TResult Function(String value) email,
    required TResult Function(String value) phone,
    required TResult Function(String value) address,
    required TResult Function(String value) pincode,
    required TResult Function(String path) registrationProofFile,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? ngoName,
    TResult? Function(String value)? contactPersonName,
    TResult? Function(String value)? email,
    TResult? Function(String value)? phone,
    TResult? Function(String value)? address,
    TResult? Function(String value)? pincode,
    TResult? Function(String path)? registrationProofFile,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? ngoName,
    TResult Function(String value)? contactPersonName,
    TResult Function(String value)? email,
    TResult Function(String value)? phone,
    TResult Function(String value)? address,
    TResult Function(String value)? pincode,
    TResult Function(String path)? registrationProofFile,
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
    required TResult Function(_NgoName value) ngoName,
    required TResult Function(_ContactPersonName value) contactPersonName,
    required TResult Function(_Email value) email,
    required TResult Function(_Phone value) phone,
    required TResult Function(_Address value) address,
    required TResult Function(_PinCode value) pincode,
    required TResult Function(_RegistrationProofFile value)
    registrationProofFile,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NgoName value)? ngoName,
    TResult? Function(_ContactPersonName value)? contactPersonName,
    TResult? Function(_Email value)? email,
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Address value)? address,
    TResult? Function(_PinCode value)? pincode,
    TResult? Function(_RegistrationProofFile value)? registrationProofFile,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NgoName value)? ngoName,
    TResult Function(_ContactPersonName value)? contactPersonName,
    TResult Function(_Email value)? email,
    TResult Function(_Phone value)? phone,
    TResult Function(_Address value)? address,
    TResult Function(_PinCode value)? pincode,
    TResult Function(_RegistrationProofFile value)? registrationProofFile,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements NgoRegistrationEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
mixin _$NgoRegistrationState {
  Status get initStatus => throw _privateConstructorUsedError;
  Status get submitStatus => throw _privateConstructorUsedError;
  NotEmpty get ngoName => throw _privateConstructorUsedError;
  NotEmpty get contactPersonName => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  MobileNo get phone => throw _privateConstructorUsedError;
  PinCode get pincode => throw _privateConstructorUsedError;
  NotEmpty get address => throw _privateConstructorUsedError;
  NotEmpty get registrationProofFile => throw _privateConstructorUsedError;
  String get logoUrl => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;

  /// Create a copy of NgoRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NgoRegistrationStateCopyWith<NgoRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NgoRegistrationStateCopyWith<$Res> {
  factory $NgoRegistrationStateCopyWith(
    NgoRegistrationState value,
    $Res Function(NgoRegistrationState) then,
  ) = _$NgoRegistrationStateCopyWithImpl<$Res, NgoRegistrationState>;
  @useResult
  $Res call({
    Status initStatus,
    Status submitStatus,
    NotEmpty ngoName,
    NotEmpty contactPersonName,
    Email email,
    MobileNo phone,
    PinCode pincode,
    NotEmpty address,
    NotEmpty registrationProofFile,
    String logoUrl,
    String latitude,
    String longitude,
  });
}

/// @nodoc
class _$NgoRegistrationStateCopyWithImpl<
  $Res,
  $Val extends NgoRegistrationState
>
    implements $NgoRegistrationStateCopyWith<$Res> {
  _$NgoRegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NgoRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? submitStatus = null,
    Object? ngoName = null,
    Object? contactPersonName = null,
    Object? email = null,
    Object? phone = null,
    Object? pincode = null,
    Object? address = null,
    Object? registrationProofFile = null,
    Object? logoUrl = null,
    Object? latitude = null,
    Object? longitude = null,
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
            ngoName:
                null == ngoName
                    ? _value.ngoName
                    : ngoName // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            contactPersonName:
                null == contactPersonName
                    ? _value.contactPersonName
                    : contactPersonName // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as Email,
            phone:
                null == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as MobileNo,
            pincode:
                null == pincode
                    ? _value.pincode
                    : pincode // ignore: cast_nullable_to_non_nullable
                        as PinCode,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            registrationProofFile:
                null == registrationProofFile
                    ? _value.registrationProofFile
                    : registrationProofFile // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            logoUrl:
                null == logoUrl
                    ? _value.logoUrl
                    : logoUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as String,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NgoRegistrationStateImplCopyWith<$Res>
    implements $NgoRegistrationStateCopyWith<$Res> {
  factory _$$NgoRegistrationStateImplCopyWith(
    _$NgoRegistrationStateImpl value,
    $Res Function(_$NgoRegistrationStateImpl) then,
  ) = __$$NgoRegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status initStatus,
    Status submitStatus,
    NotEmpty ngoName,
    NotEmpty contactPersonName,
    Email email,
    MobileNo phone,
    PinCode pincode,
    NotEmpty address,
    NotEmpty registrationProofFile,
    String logoUrl,
    String latitude,
    String longitude,
  });
}

/// @nodoc
class __$$NgoRegistrationStateImplCopyWithImpl<$Res>
    extends _$NgoRegistrationStateCopyWithImpl<$Res, _$NgoRegistrationStateImpl>
    implements _$$NgoRegistrationStateImplCopyWith<$Res> {
  __$$NgoRegistrationStateImplCopyWithImpl(
    _$NgoRegistrationStateImpl _value,
    $Res Function(_$NgoRegistrationStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NgoRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? submitStatus = null,
    Object? ngoName = null,
    Object? contactPersonName = null,
    Object? email = null,
    Object? phone = null,
    Object? pincode = null,
    Object? address = null,
    Object? registrationProofFile = null,
    Object? logoUrl = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(
      _$NgoRegistrationStateImpl(
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
        ngoName:
            null == ngoName
                ? _value.ngoName
                : ngoName // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        contactPersonName:
            null == contactPersonName
                ? _value.contactPersonName
                : contactPersonName // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as Email,
        phone:
            null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as MobileNo,
        pincode:
            null == pincode
                ? _value.pincode
                : pincode // ignore: cast_nullable_to_non_nullable
                    as PinCode,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        registrationProofFile:
            null == registrationProofFile
                ? _value.registrationProofFile
                : registrationProofFile // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        logoUrl:
            null == logoUrl
                ? _value.logoUrl
                : logoUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as String,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$NgoRegistrationStateImpl implements _NgoRegistrationState {
  const _$NgoRegistrationStateImpl({
    this.initStatus = Status.init,
    this.submitStatus = Status.init,
    this.ngoName = const NotEmpty.pure(),
    this.contactPersonName = const NotEmpty.pure(),
    this.email = const Email.pure(),
    this.phone = const MobileNo.pure(),
    this.pincode = const PinCode.pure(),
    this.address = const NotEmpty.pure(),
    this.registrationProofFile = const NotEmpty.pure(),
    this.logoUrl = '',
    this.latitude = '',
    this.longitude = '',
  });

  @override
  @JsonKey()
  final Status initStatus;
  @override
  @JsonKey()
  final Status submitStatus;
  @override
  @JsonKey()
  final NotEmpty ngoName;
  @override
  @JsonKey()
  final NotEmpty contactPersonName;
  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final MobileNo phone;
  @override
  @JsonKey()
  final PinCode pincode;
  @override
  @JsonKey()
  final NotEmpty address;
  @override
  @JsonKey()
  final NotEmpty registrationProofFile;
  @override
  @JsonKey()
  final String logoUrl;
  @override
  @JsonKey()
  final String latitude;
  @override
  @JsonKey()
  final String longitude;

  @override
  String toString() {
    return 'NgoRegistrationState(initStatus: $initStatus, submitStatus: $submitStatus, ngoName: $ngoName, contactPersonName: $contactPersonName, email: $email, phone: $phone, pincode: $pincode, address: $address, registrationProofFile: $registrationProofFile, logoUrl: $logoUrl, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NgoRegistrationStateImpl &&
            (identical(other.initStatus, initStatus) ||
                other.initStatus == initStatus) &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.ngoName, ngoName) || other.ngoName == ngoName) &&
            (identical(other.contactPersonName, contactPersonName) ||
                other.contactPersonName == contactPersonName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.registrationProofFile, registrationProofFile) ||
                other.registrationProofFile == registrationProofFile) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    initStatus,
    submitStatus,
    ngoName,
    contactPersonName,
    email,
    phone,
    pincode,
    address,
    registrationProofFile,
    logoUrl,
    latitude,
    longitude,
  );

  /// Create a copy of NgoRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NgoRegistrationStateImplCopyWith<_$NgoRegistrationStateImpl>
  get copyWith =>
      __$$NgoRegistrationStateImplCopyWithImpl<_$NgoRegistrationStateImpl>(
        this,
        _$identity,
      );
}

abstract class _NgoRegistrationState implements NgoRegistrationState {
  const factory _NgoRegistrationState({
    final Status initStatus,
    final Status submitStatus,
    final NotEmpty ngoName,
    final NotEmpty contactPersonName,
    final Email email,
    final MobileNo phone,
    final PinCode pincode,
    final NotEmpty address,
    final NotEmpty registrationProofFile,
    final String logoUrl,
    final String latitude,
    final String longitude,
  }) = _$NgoRegistrationStateImpl;

  @override
  Status get initStatus;
  @override
  Status get submitStatus;
  @override
  NotEmpty get ngoName;
  @override
  NotEmpty get contactPersonName;
  @override
  Email get email;
  @override
  MobileNo get phone;
  @override
  PinCode get pincode;
  @override
  NotEmpty get address;
  @override
  NotEmpty get registrationProofFile;
  @override
  String get logoUrl;
  @override
  String get latitude;
  @override
  String get longitude;

  /// Create a copy of NgoRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NgoRegistrationStateImplCopyWith<_$NgoRegistrationStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
