// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PetFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String name) petName,
    required TResult Function(String value) petImage,
    required TResult Function(PetType value) petType,
    required TResult Function(String dob) dob,
    required TResult Function(DropItem breed) breed,
    required TResult Function(String weightUnit) weightUnit,
    required TResult Function(String weight) weight,
    required TResult Function(List<DropItem> value) addTag,
    required TResult Function(int index) removeTag,
    required TResult Function(DropItem petGender) petGender,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String name)? petName,
    TResult? Function(String value)? petImage,
    TResult? Function(PetType value)? petType,
    TResult? Function(String dob)? dob,
    TResult? Function(DropItem breed)? breed,
    TResult? Function(String weightUnit)? weightUnit,
    TResult? Function(String weight)? weight,
    TResult? Function(List<DropItem> value)? addTag,
    TResult? Function(int index)? removeTag,
    TResult? Function(DropItem petGender)? petGender,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String name)? petName,
    TResult Function(String value)? petImage,
    TResult Function(PetType value)? petType,
    TResult Function(String dob)? dob,
    TResult Function(DropItem breed)? breed,
    TResult Function(String weightUnit)? weightUnit,
    TResult Function(String weight)? weight,
    TResult Function(List<DropItem> value)? addTag,
    TResult Function(int index)? removeTag,
    TResult Function(DropItem petGender)? petGender,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_PetName value) petName,
    required TResult Function(_PetImage value) petImage,
    required TResult Function(_PetType value) petType,
    required TResult Function(_DOB value) dob,
    required TResult Function(_Breed value) breed,
    required TResult Function(_WeightUnit value) weightUnit,
    required TResult Function(_Weight value) weight,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_RemoveTag value) removeTag,
    required TResult Function(_PetGender value) petGender,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_PetName value)? petName,
    TResult? Function(_PetImage value)? petImage,
    TResult? Function(_PetType value)? petType,
    TResult? Function(_DOB value)? dob,
    TResult? Function(_Breed value)? breed,
    TResult? Function(_WeightUnit value)? weightUnit,
    TResult? Function(_Weight value)? weight,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_RemoveTag value)? removeTag,
    TResult? Function(_PetGender value)? petGender,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_PetName value)? petName,
    TResult Function(_PetImage value)? petImage,
    TResult Function(_PetType value)? petType,
    TResult Function(_DOB value)? dob,
    TResult Function(_Breed value)? breed,
    TResult Function(_WeightUnit value)? weightUnit,
    TResult Function(_Weight value)? weight,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_RemoveTag value)? removeTag,
    TResult Function(_PetGender value)? petGender,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetFormEventCopyWith<$Res> {
  factory $PetFormEventCopyWith(
    PetFormEvent value,
    $Res Function(PetFormEvent) then,
  ) = _$PetFormEventCopyWithImpl<$Res, PetFormEvent>;
}

/// @nodoc
class _$PetFormEventCopyWithImpl<$Res, $Val extends PetFormEvent>
    implements $PetFormEventCopyWith<$Res> {
  _$PetFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
    _$InitImpl value,
    $Res Function(_$InitImpl) then,
  ) = __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$PetFormEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
    : super(_value, _then);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$InitImpl(
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
  const _$InitImpl(this.id);

  @override
  final int? id;

  @override
  String toString() {
    return 'PetFormEvent.init(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String name) petName,
    required TResult Function(String value) petImage,
    required TResult Function(PetType value) petType,
    required TResult Function(String dob) dob,
    required TResult Function(DropItem breed) breed,
    required TResult Function(String weightUnit) weightUnit,
    required TResult Function(String weight) weight,
    required TResult Function(List<DropItem> value) addTag,
    required TResult Function(int index) removeTag,
    required TResult Function(DropItem petGender) petGender,
  }) {
    return init(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String name)? petName,
    TResult? Function(String value)? petImage,
    TResult? Function(PetType value)? petType,
    TResult? Function(String dob)? dob,
    TResult? Function(DropItem breed)? breed,
    TResult? Function(String weightUnit)? weightUnit,
    TResult? Function(String weight)? weight,
    TResult? Function(List<DropItem> value)? addTag,
    TResult? Function(int index)? removeTag,
    TResult? Function(DropItem petGender)? petGender,
  }) {
    return init?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String name)? petName,
    TResult Function(String value)? petImage,
    TResult Function(PetType value)? petType,
    TResult Function(String dob)? dob,
    TResult Function(DropItem breed)? breed,
    TResult Function(String weightUnit)? weightUnit,
    TResult Function(String weight)? weight,
    TResult Function(List<DropItem> value)? addTag,
    TResult Function(int index)? removeTag,
    TResult Function(DropItem petGender)? petGender,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_PetName value) petName,
    required TResult Function(_PetImage value) petImage,
    required TResult Function(_PetType value) petType,
    required TResult Function(_DOB value) dob,
    required TResult Function(_Breed value) breed,
    required TResult Function(_WeightUnit value) weightUnit,
    required TResult Function(_Weight value) weight,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_RemoveTag value) removeTag,
    required TResult Function(_PetGender value) petGender,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_PetName value)? petName,
    TResult? Function(_PetImage value)? petImage,
    TResult? Function(_PetType value)? petType,
    TResult? Function(_DOB value)? dob,
    TResult? Function(_Breed value)? breed,
    TResult? Function(_WeightUnit value)? weightUnit,
    TResult? Function(_Weight value)? weight,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_RemoveTag value)? removeTag,
    TResult? Function(_PetGender value)? petGender,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_PetName value)? petName,
    TResult Function(_PetImage value)? petImage,
    TResult Function(_PetType value)? petType,
    TResult Function(_DOB value)? dob,
    TResult Function(_Breed value)? breed,
    TResult Function(_WeightUnit value)? weightUnit,
    TResult Function(_Weight value)? weight,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_RemoveTag value)? removeTag,
    TResult Function(_PetGender value)? petGender,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements PetFormEvent {
  const factory _Init(final int? id) = _$InitImpl;

  int? get id;

  /// Create a copy of PetFormEvent
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
    extends _$PetFormEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
    _$SubmitImpl _value,
    $Res Function(_$SubmitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PetFormEvent
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
    return 'PetFormEvent.submit(id: $id)';
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

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      __$$SubmitImplCopyWithImpl<_$SubmitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String name) petName,
    required TResult Function(String value) petImage,
    required TResult Function(PetType value) petType,
    required TResult Function(String dob) dob,
    required TResult Function(DropItem breed) breed,
    required TResult Function(String weightUnit) weightUnit,
    required TResult Function(String weight) weight,
    required TResult Function(List<DropItem> value) addTag,
    required TResult Function(int index) removeTag,
    required TResult Function(DropItem petGender) petGender,
  }) {
    return submit(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String name)? petName,
    TResult? Function(String value)? petImage,
    TResult? Function(PetType value)? petType,
    TResult? Function(String dob)? dob,
    TResult? Function(DropItem breed)? breed,
    TResult? Function(String weightUnit)? weightUnit,
    TResult? Function(String weight)? weight,
    TResult? Function(List<DropItem> value)? addTag,
    TResult? Function(int index)? removeTag,
    TResult? Function(DropItem petGender)? petGender,
  }) {
    return submit?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String name)? petName,
    TResult Function(String value)? petImage,
    TResult Function(PetType value)? petType,
    TResult Function(String dob)? dob,
    TResult Function(DropItem breed)? breed,
    TResult Function(String weightUnit)? weightUnit,
    TResult Function(String weight)? weight,
    TResult Function(List<DropItem> value)? addTag,
    TResult Function(int index)? removeTag,
    TResult Function(DropItem petGender)? petGender,
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
    required TResult Function(_PetName value) petName,
    required TResult Function(_PetImage value) petImage,
    required TResult Function(_PetType value) petType,
    required TResult Function(_DOB value) dob,
    required TResult Function(_Breed value) breed,
    required TResult Function(_WeightUnit value) weightUnit,
    required TResult Function(_Weight value) weight,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_RemoveTag value) removeTag,
    required TResult Function(_PetGender value) petGender,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_PetName value)? petName,
    TResult? Function(_PetImage value)? petImage,
    TResult? Function(_PetType value)? petType,
    TResult? Function(_DOB value)? dob,
    TResult? Function(_Breed value)? breed,
    TResult? Function(_WeightUnit value)? weightUnit,
    TResult? Function(_Weight value)? weight,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_RemoveTag value)? removeTag,
    TResult? Function(_PetGender value)? petGender,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_PetName value)? petName,
    TResult Function(_PetImage value)? petImage,
    TResult Function(_PetType value)? petType,
    TResult Function(_DOB value)? dob,
    TResult Function(_Breed value)? breed,
    TResult Function(_WeightUnit value)? weightUnit,
    TResult Function(_Weight value)? weight,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_RemoveTag value)? removeTag,
    TResult Function(_PetGender value)? petGender,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements PetFormEvent {
  const factory _Submit(final int? id) = _$SubmitImpl;

  int? get id;

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PetNameImplCopyWith<$Res> {
  factory _$$PetNameImplCopyWith(
    _$PetNameImpl value,
    $Res Function(_$PetNameImpl) then,
  ) = __$$PetNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PetNameImplCopyWithImpl<$Res>
    extends _$PetFormEventCopyWithImpl<$Res, _$PetNameImpl>
    implements _$$PetNameImplCopyWith<$Res> {
  __$$PetNameImplCopyWithImpl(
    _$PetNameImpl _value,
    $Res Function(_$PetNameImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$PetNameImpl(
        null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$PetNameImpl implements _PetName {
  const _$PetNameImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'PetFormEvent.petName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PetNameImplCopyWith<_$PetNameImpl> get copyWith =>
      __$$PetNameImplCopyWithImpl<_$PetNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String name) petName,
    required TResult Function(String value) petImage,
    required TResult Function(PetType value) petType,
    required TResult Function(String dob) dob,
    required TResult Function(DropItem breed) breed,
    required TResult Function(String weightUnit) weightUnit,
    required TResult Function(String weight) weight,
    required TResult Function(List<DropItem> value) addTag,
    required TResult Function(int index) removeTag,
    required TResult Function(DropItem petGender) petGender,
  }) {
    return petName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String name)? petName,
    TResult? Function(String value)? petImage,
    TResult? Function(PetType value)? petType,
    TResult? Function(String dob)? dob,
    TResult? Function(DropItem breed)? breed,
    TResult? Function(String weightUnit)? weightUnit,
    TResult? Function(String weight)? weight,
    TResult? Function(List<DropItem> value)? addTag,
    TResult? Function(int index)? removeTag,
    TResult? Function(DropItem petGender)? petGender,
  }) {
    return petName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String name)? petName,
    TResult Function(String value)? petImage,
    TResult Function(PetType value)? petType,
    TResult Function(String dob)? dob,
    TResult Function(DropItem breed)? breed,
    TResult Function(String weightUnit)? weightUnit,
    TResult Function(String weight)? weight,
    TResult Function(List<DropItem> value)? addTag,
    TResult Function(int index)? removeTag,
    TResult Function(DropItem petGender)? petGender,
    required TResult orElse(),
  }) {
    if (petName != null) {
      return petName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_PetName value) petName,
    required TResult Function(_PetImage value) petImage,
    required TResult Function(_PetType value) petType,
    required TResult Function(_DOB value) dob,
    required TResult Function(_Breed value) breed,
    required TResult Function(_WeightUnit value) weightUnit,
    required TResult Function(_Weight value) weight,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_RemoveTag value) removeTag,
    required TResult Function(_PetGender value) petGender,
  }) {
    return petName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_PetName value)? petName,
    TResult? Function(_PetImage value)? petImage,
    TResult? Function(_PetType value)? petType,
    TResult? Function(_DOB value)? dob,
    TResult? Function(_Breed value)? breed,
    TResult? Function(_WeightUnit value)? weightUnit,
    TResult? Function(_Weight value)? weight,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_RemoveTag value)? removeTag,
    TResult? Function(_PetGender value)? petGender,
  }) {
    return petName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_PetName value)? petName,
    TResult Function(_PetImage value)? petImage,
    TResult Function(_PetType value)? petType,
    TResult Function(_DOB value)? dob,
    TResult Function(_Breed value)? breed,
    TResult Function(_WeightUnit value)? weightUnit,
    TResult Function(_Weight value)? weight,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_RemoveTag value)? removeTag,
    TResult Function(_PetGender value)? petGender,
    required TResult orElse(),
  }) {
    if (petName != null) {
      return petName(this);
    }
    return orElse();
  }
}

abstract class _PetName implements PetFormEvent {
  const factory _PetName(final String name) = _$PetNameImpl;

  String get name;

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PetNameImplCopyWith<_$PetNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PetImageImplCopyWith<$Res> {
  factory _$$PetImageImplCopyWith(
    _$PetImageImpl value,
    $Res Function(_$PetImageImpl) then,
  ) = __$$PetImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$PetImageImplCopyWithImpl<$Res>
    extends _$PetFormEventCopyWithImpl<$Res, _$PetImageImpl>
    implements _$$PetImageImplCopyWith<$Res> {
  __$$PetImageImplCopyWithImpl(
    _$PetImageImpl _value,
    $Res Function(_$PetImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$PetImageImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$PetImageImpl implements _PetImage {
  const _$PetImageImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'PetFormEvent.petImage(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetImageImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PetImageImplCopyWith<_$PetImageImpl> get copyWith =>
      __$$PetImageImplCopyWithImpl<_$PetImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String name) petName,
    required TResult Function(String value) petImage,
    required TResult Function(PetType value) petType,
    required TResult Function(String dob) dob,
    required TResult Function(DropItem breed) breed,
    required TResult Function(String weightUnit) weightUnit,
    required TResult Function(String weight) weight,
    required TResult Function(List<DropItem> value) addTag,
    required TResult Function(int index) removeTag,
    required TResult Function(DropItem petGender) petGender,
  }) {
    return petImage(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String name)? petName,
    TResult? Function(String value)? petImage,
    TResult? Function(PetType value)? petType,
    TResult? Function(String dob)? dob,
    TResult? Function(DropItem breed)? breed,
    TResult? Function(String weightUnit)? weightUnit,
    TResult? Function(String weight)? weight,
    TResult? Function(List<DropItem> value)? addTag,
    TResult? Function(int index)? removeTag,
    TResult? Function(DropItem petGender)? petGender,
  }) {
    return petImage?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String name)? petName,
    TResult Function(String value)? petImage,
    TResult Function(PetType value)? petType,
    TResult Function(String dob)? dob,
    TResult Function(DropItem breed)? breed,
    TResult Function(String weightUnit)? weightUnit,
    TResult Function(String weight)? weight,
    TResult Function(List<DropItem> value)? addTag,
    TResult Function(int index)? removeTag,
    TResult Function(DropItem petGender)? petGender,
    required TResult orElse(),
  }) {
    if (petImage != null) {
      return petImage(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_PetName value) petName,
    required TResult Function(_PetImage value) petImage,
    required TResult Function(_PetType value) petType,
    required TResult Function(_DOB value) dob,
    required TResult Function(_Breed value) breed,
    required TResult Function(_WeightUnit value) weightUnit,
    required TResult Function(_Weight value) weight,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_RemoveTag value) removeTag,
    required TResult Function(_PetGender value) petGender,
  }) {
    return petImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_PetName value)? petName,
    TResult? Function(_PetImage value)? petImage,
    TResult? Function(_PetType value)? petType,
    TResult? Function(_DOB value)? dob,
    TResult? Function(_Breed value)? breed,
    TResult? Function(_WeightUnit value)? weightUnit,
    TResult? Function(_Weight value)? weight,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_RemoveTag value)? removeTag,
    TResult? Function(_PetGender value)? petGender,
  }) {
    return petImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_PetName value)? petName,
    TResult Function(_PetImage value)? petImage,
    TResult Function(_PetType value)? petType,
    TResult Function(_DOB value)? dob,
    TResult Function(_Breed value)? breed,
    TResult Function(_WeightUnit value)? weightUnit,
    TResult Function(_Weight value)? weight,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_RemoveTag value)? removeTag,
    TResult Function(_PetGender value)? petGender,
    required TResult orElse(),
  }) {
    if (petImage != null) {
      return petImage(this);
    }
    return orElse();
  }
}

abstract class _PetImage implements PetFormEvent {
  const factory _PetImage(final String value) = _$PetImageImpl;

  String get value;

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PetImageImplCopyWith<_$PetImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PetTypeImplCopyWith<$Res> {
  factory _$$PetTypeImplCopyWith(
    _$PetTypeImpl value,
    $Res Function(_$PetTypeImpl) then,
  ) = __$$PetTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PetType value});
}

/// @nodoc
class __$$PetTypeImplCopyWithImpl<$Res>
    extends _$PetFormEventCopyWithImpl<$Res, _$PetTypeImpl>
    implements _$$PetTypeImplCopyWith<$Res> {
  __$$PetTypeImplCopyWithImpl(
    _$PetTypeImpl _value,
    $Res Function(_$PetTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$PetTypeImpl(
        null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as PetType,
      ),
    );
  }
}

/// @nodoc

class _$PetTypeImpl implements _PetType {
  const _$PetTypeImpl(this.value);

  @override
  final PetType value;

  @override
  String toString() {
    return 'PetFormEvent.petType(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetTypeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PetTypeImplCopyWith<_$PetTypeImpl> get copyWith =>
      __$$PetTypeImplCopyWithImpl<_$PetTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String name) petName,
    required TResult Function(String value) petImage,
    required TResult Function(PetType value) petType,
    required TResult Function(String dob) dob,
    required TResult Function(DropItem breed) breed,
    required TResult Function(String weightUnit) weightUnit,
    required TResult Function(String weight) weight,
    required TResult Function(List<DropItem> value) addTag,
    required TResult Function(int index) removeTag,
    required TResult Function(DropItem petGender) petGender,
  }) {
    return petType(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String name)? petName,
    TResult? Function(String value)? petImage,
    TResult? Function(PetType value)? petType,
    TResult? Function(String dob)? dob,
    TResult? Function(DropItem breed)? breed,
    TResult? Function(String weightUnit)? weightUnit,
    TResult? Function(String weight)? weight,
    TResult? Function(List<DropItem> value)? addTag,
    TResult? Function(int index)? removeTag,
    TResult? Function(DropItem petGender)? petGender,
  }) {
    return petType?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String name)? petName,
    TResult Function(String value)? petImage,
    TResult Function(PetType value)? petType,
    TResult Function(String dob)? dob,
    TResult Function(DropItem breed)? breed,
    TResult Function(String weightUnit)? weightUnit,
    TResult Function(String weight)? weight,
    TResult Function(List<DropItem> value)? addTag,
    TResult Function(int index)? removeTag,
    TResult Function(DropItem petGender)? petGender,
    required TResult orElse(),
  }) {
    if (petType != null) {
      return petType(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_PetName value) petName,
    required TResult Function(_PetImage value) petImage,
    required TResult Function(_PetType value) petType,
    required TResult Function(_DOB value) dob,
    required TResult Function(_Breed value) breed,
    required TResult Function(_WeightUnit value) weightUnit,
    required TResult Function(_Weight value) weight,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_RemoveTag value) removeTag,
    required TResult Function(_PetGender value) petGender,
  }) {
    return petType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_PetName value)? petName,
    TResult? Function(_PetImage value)? petImage,
    TResult? Function(_PetType value)? petType,
    TResult? Function(_DOB value)? dob,
    TResult? Function(_Breed value)? breed,
    TResult? Function(_WeightUnit value)? weightUnit,
    TResult? Function(_Weight value)? weight,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_RemoveTag value)? removeTag,
    TResult? Function(_PetGender value)? petGender,
  }) {
    return petType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_PetName value)? petName,
    TResult Function(_PetImage value)? petImage,
    TResult Function(_PetType value)? petType,
    TResult Function(_DOB value)? dob,
    TResult Function(_Breed value)? breed,
    TResult Function(_WeightUnit value)? weightUnit,
    TResult Function(_Weight value)? weight,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_RemoveTag value)? removeTag,
    TResult Function(_PetGender value)? petGender,
    required TResult orElse(),
  }) {
    if (petType != null) {
      return petType(this);
    }
    return orElse();
  }
}

abstract class _PetType implements PetFormEvent {
  const factory _PetType(final PetType value) = _$PetTypeImpl;

  PetType get value;

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PetTypeImplCopyWith<_$PetTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DOBImplCopyWith<$Res> {
  factory _$$DOBImplCopyWith(_$DOBImpl value, $Res Function(_$DOBImpl) then) =
      __$$DOBImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String dob});
}

/// @nodoc
class __$$DOBImplCopyWithImpl<$Res>
    extends _$PetFormEventCopyWithImpl<$Res, _$DOBImpl>
    implements _$$DOBImplCopyWith<$Res> {
  __$$DOBImplCopyWithImpl(_$DOBImpl _value, $Res Function(_$DOBImpl) _then)
    : super(_value, _then);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? dob = null}) {
    return _then(
      _$DOBImpl(
        null == dob
            ? _value.dob
            : dob // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DOBImpl implements _DOB {
  const _$DOBImpl(this.dob);

  @override
  final String dob;

  @override
  String toString() {
    return 'PetFormEvent.dob(dob: $dob)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DOBImpl &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dob);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DOBImplCopyWith<_$DOBImpl> get copyWith =>
      __$$DOBImplCopyWithImpl<_$DOBImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String name) petName,
    required TResult Function(String value) petImage,
    required TResult Function(PetType value) petType,
    required TResult Function(String dob) dob,
    required TResult Function(DropItem breed) breed,
    required TResult Function(String weightUnit) weightUnit,
    required TResult Function(String weight) weight,
    required TResult Function(List<DropItem> value) addTag,
    required TResult Function(int index) removeTag,
    required TResult Function(DropItem petGender) petGender,
  }) {
    return dob(this.dob);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String name)? petName,
    TResult? Function(String value)? petImage,
    TResult? Function(PetType value)? petType,
    TResult? Function(String dob)? dob,
    TResult? Function(DropItem breed)? breed,
    TResult? Function(String weightUnit)? weightUnit,
    TResult? Function(String weight)? weight,
    TResult? Function(List<DropItem> value)? addTag,
    TResult? Function(int index)? removeTag,
    TResult? Function(DropItem petGender)? petGender,
  }) {
    return dob?.call(this.dob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String name)? petName,
    TResult Function(String value)? petImage,
    TResult Function(PetType value)? petType,
    TResult Function(String dob)? dob,
    TResult Function(DropItem breed)? breed,
    TResult Function(String weightUnit)? weightUnit,
    TResult Function(String weight)? weight,
    TResult Function(List<DropItem> value)? addTag,
    TResult Function(int index)? removeTag,
    TResult Function(DropItem petGender)? petGender,
    required TResult orElse(),
  }) {
    if (dob != null) {
      return dob(this.dob);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_PetName value) petName,
    required TResult Function(_PetImage value) petImage,
    required TResult Function(_PetType value) petType,
    required TResult Function(_DOB value) dob,
    required TResult Function(_Breed value) breed,
    required TResult Function(_WeightUnit value) weightUnit,
    required TResult Function(_Weight value) weight,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_RemoveTag value) removeTag,
    required TResult Function(_PetGender value) petGender,
  }) {
    return dob(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_PetName value)? petName,
    TResult? Function(_PetImage value)? petImage,
    TResult? Function(_PetType value)? petType,
    TResult? Function(_DOB value)? dob,
    TResult? Function(_Breed value)? breed,
    TResult? Function(_WeightUnit value)? weightUnit,
    TResult? Function(_Weight value)? weight,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_RemoveTag value)? removeTag,
    TResult? Function(_PetGender value)? petGender,
  }) {
    return dob?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_PetName value)? petName,
    TResult Function(_PetImage value)? petImage,
    TResult Function(_PetType value)? petType,
    TResult Function(_DOB value)? dob,
    TResult Function(_Breed value)? breed,
    TResult Function(_WeightUnit value)? weightUnit,
    TResult Function(_Weight value)? weight,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_RemoveTag value)? removeTag,
    TResult Function(_PetGender value)? petGender,
    required TResult orElse(),
  }) {
    if (dob != null) {
      return dob(this);
    }
    return orElse();
  }
}

abstract class _DOB implements PetFormEvent {
  const factory _DOB(final String dob) = _$DOBImpl;

  String get dob;

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DOBImplCopyWith<_$DOBImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BreedImplCopyWith<$Res> {
  factory _$$BreedImplCopyWith(
    _$BreedImpl value,
    $Res Function(_$BreedImpl) then,
  ) = __$$BreedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DropItem breed});
}

/// @nodoc
class __$$BreedImplCopyWithImpl<$Res>
    extends _$PetFormEventCopyWithImpl<$Res, _$BreedImpl>
    implements _$$BreedImplCopyWith<$Res> {
  __$$BreedImplCopyWithImpl(
    _$BreedImpl _value,
    $Res Function(_$BreedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? breed = null}) {
    return _then(
      _$BreedImpl(
        null == breed
            ? _value.breed
            : breed // ignore: cast_nullable_to_non_nullable
                as DropItem,
      ),
    );
  }
}

/// @nodoc

class _$BreedImpl implements _Breed {
  const _$BreedImpl(this.breed);

  @override
  final DropItem breed;

  @override
  String toString() {
    return 'PetFormEvent.breed(breed: $breed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedImpl &&
            (identical(other.breed, breed) || other.breed == breed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, breed);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedImplCopyWith<_$BreedImpl> get copyWith =>
      __$$BreedImplCopyWithImpl<_$BreedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String name) petName,
    required TResult Function(String value) petImage,
    required TResult Function(PetType value) petType,
    required TResult Function(String dob) dob,
    required TResult Function(DropItem breed) breed,
    required TResult Function(String weightUnit) weightUnit,
    required TResult Function(String weight) weight,
    required TResult Function(List<DropItem> value) addTag,
    required TResult Function(int index) removeTag,
    required TResult Function(DropItem petGender) petGender,
  }) {
    return breed(this.breed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String name)? petName,
    TResult? Function(String value)? petImage,
    TResult? Function(PetType value)? petType,
    TResult? Function(String dob)? dob,
    TResult? Function(DropItem breed)? breed,
    TResult? Function(String weightUnit)? weightUnit,
    TResult? Function(String weight)? weight,
    TResult? Function(List<DropItem> value)? addTag,
    TResult? Function(int index)? removeTag,
    TResult? Function(DropItem petGender)? petGender,
  }) {
    return breed?.call(this.breed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String name)? petName,
    TResult Function(String value)? petImage,
    TResult Function(PetType value)? petType,
    TResult Function(String dob)? dob,
    TResult Function(DropItem breed)? breed,
    TResult Function(String weightUnit)? weightUnit,
    TResult Function(String weight)? weight,
    TResult Function(List<DropItem> value)? addTag,
    TResult Function(int index)? removeTag,
    TResult Function(DropItem petGender)? petGender,
    required TResult orElse(),
  }) {
    if (breed != null) {
      return breed(this.breed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_PetName value) petName,
    required TResult Function(_PetImage value) petImage,
    required TResult Function(_PetType value) petType,
    required TResult Function(_DOB value) dob,
    required TResult Function(_Breed value) breed,
    required TResult Function(_WeightUnit value) weightUnit,
    required TResult Function(_Weight value) weight,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_RemoveTag value) removeTag,
    required TResult Function(_PetGender value) petGender,
  }) {
    return breed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_PetName value)? petName,
    TResult? Function(_PetImage value)? petImage,
    TResult? Function(_PetType value)? petType,
    TResult? Function(_DOB value)? dob,
    TResult? Function(_Breed value)? breed,
    TResult? Function(_WeightUnit value)? weightUnit,
    TResult? Function(_Weight value)? weight,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_RemoveTag value)? removeTag,
    TResult? Function(_PetGender value)? petGender,
  }) {
    return breed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_PetName value)? petName,
    TResult Function(_PetImage value)? petImage,
    TResult Function(_PetType value)? petType,
    TResult Function(_DOB value)? dob,
    TResult Function(_Breed value)? breed,
    TResult Function(_WeightUnit value)? weightUnit,
    TResult Function(_Weight value)? weight,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_RemoveTag value)? removeTag,
    TResult Function(_PetGender value)? petGender,
    required TResult orElse(),
  }) {
    if (breed != null) {
      return breed(this);
    }
    return orElse();
  }
}

abstract class _Breed implements PetFormEvent {
  const factory _Breed(final DropItem breed) = _$BreedImpl;

  DropItem get breed;

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreedImplCopyWith<_$BreedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeightUnitImplCopyWith<$Res> {
  factory _$$WeightUnitImplCopyWith(
    _$WeightUnitImpl value,
    $Res Function(_$WeightUnitImpl) then,
  ) = __$$WeightUnitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String weightUnit});
}

/// @nodoc
class __$$WeightUnitImplCopyWithImpl<$Res>
    extends _$PetFormEventCopyWithImpl<$Res, _$WeightUnitImpl>
    implements _$$WeightUnitImplCopyWith<$Res> {
  __$$WeightUnitImplCopyWithImpl(
    _$WeightUnitImpl _value,
    $Res Function(_$WeightUnitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? weightUnit = null}) {
    return _then(
      _$WeightUnitImpl(
        null == weightUnit
            ? _value.weightUnit
            : weightUnit // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$WeightUnitImpl implements _WeightUnit {
  const _$WeightUnitImpl(this.weightUnit);

  @override
  final String weightUnit;

  @override
  String toString() {
    return 'PetFormEvent.weightUnit(weightUnit: $weightUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightUnitImpl &&
            (identical(other.weightUnit, weightUnit) ||
                other.weightUnit == weightUnit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weightUnit);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightUnitImplCopyWith<_$WeightUnitImpl> get copyWith =>
      __$$WeightUnitImplCopyWithImpl<_$WeightUnitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String name) petName,
    required TResult Function(String value) petImage,
    required TResult Function(PetType value) petType,
    required TResult Function(String dob) dob,
    required TResult Function(DropItem breed) breed,
    required TResult Function(String weightUnit) weightUnit,
    required TResult Function(String weight) weight,
    required TResult Function(List<DropItem> value) addTag,
    required TResult Function(int index) removeTag,
    required TResult Function(DropItem petGender) petGender,
  }) {
    return weightUnit(this.weightUnit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String name)? petName,
    TResult? Function(String value)? petImage,
    TResult? Function(PetType value)? petType,
    TResult? Function(String dob)? dob,
    TResult? Function(DropItem breed)? breed,
    TResult? Function(String weightUnit)? weightUnit,
    TResult? Function(String weight)? weight,
    TResult? Function(List<DropItem> value)? addTag,
    TResult? Function(int index)? removeTag,
    TResult? Function(DropItem petGender)? petGender,
  }) {
    return weightUnit?.call(this.weightUnit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String name)? petName,
    TResult Function(String value)? petImage,
    TResult Function(PetType value)? petType,
    TResult Function(String dob)? dob,
    TResult Function(DropItem breed)? breed,
    TResult Function(String weightUnit)? weightUnit,
    TResult Function(String weight)? weight,
    TResult Function(List<DropItem> value)? addTag,
    TResult Function(int index)? removeTag,
    TResult Function(DropItem petGender)? petGender,
    required TResult orElse(),
  }) {
    if (weightUnit != null) {
      return weightUnit(this.weightUnit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_PetName value) petName,
    required TResult Function(_PetImage value) petImage,
    required TResult Function(_PetType value) petType,
    required TResult Function(_DOB value) dob,
    required TResult Function(_Breed value) breed,
    required TResult Function(_WeightUnit value) weightUnit,
    required TResult Function(_Weight value) weight,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_RemoveTag value) removeTag,
    required TResult Function(_PetGender value) petGender,
  }) {
    return weightUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_PetName value)? petName,
    TResult? Function(_PetImage value)? petImage,
    TResult? Function(_PetType value)? petType,
    TResult? Function(_DOB value)? dob,
    TResult? Function(_Breed value)? breed,
    TResult? Function(_WeightUnit value)? weightUnit,
    TResult? Function(_Weight value)? weight,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_RemoveTag value)? removeTag,
    TResult? Function(_PetGender value)? petGender,
  }) {
    return weightUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_PetName value)? petName,
    TResult Function(_PetImage value)? petImage,
    TResult Function(_PetType value)? petType,
    TResult Function(_DOB value)? dob,
    TResult Function(_Breed value)? breed,
    TResult Function(_WeightUnit value)? weightUnit,
    TResult Function(_Weight value)? weight,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_RemoveTag value)? removeTag,
    TResult Function(_PetGender value)? petGender,
    required TResult orElse(),
  }) {
    if (weightUnit != null) {
      return weightUnit(this);
    }
    return orElse();
  }
}

abstract class _WeightUnit implements PetFormEvent {
  const factory _WeightUnit(final String weightUnit) = _$WeightUnitImpl;

  String get weightUnit;

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeightUnitImplCopyWith<_$WeightUnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeightImplCopyWith<$Res> {
  factory _$$WeightImplCopyWith(
    _$WeightImpl value,
    $Res Function(_$WeightImpl) then,
  ) = __$$WeightImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String weight});
}

/// @nodoc
class __$$WeightImplCopyWithImpl<$Res>
    extends _$PetFormEventCopyWithImpl<$Res, _$WeightImpl>
    implements _$$WeightImplCopyWith<$Res> {
  __$$WeightImplCopyWithImpl(
    _$WeightImpl _value,
    $Res Function(_$WeightImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? weight = null}) {
    return _then(
      _$WeightImpl(
        null == weight
            ? _value.weight
            : weight // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$WeightImpl implements _Weight {
  const _$WeightImpl(this.weight);

  @override
  final String weight;

  @override
  String toString() {
    return 'PetFormEvent.weight(weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightImpl &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weight);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightImplCopyWith<_$WeightImpl> get copyWith =>
      __$$WeightImplCopyWithImpl<_$WeightImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String name) petName,
    required TResult Function(String value) petImage,
    required TResult Function(PetType value) petType,
    required TResult Function(String dob) dob,
    required TResult Function(DropItem breed) breed,
    required TResult Function(String weightUnit) weightUnit,
    required TResult Function(String weight) weight,
    required TResult Function(List<DropItem> value) addTag,
    required TResult Function(int index) removeTag,
    required TResult Function(DropItem petGender) petGender,
  }) {
    return weight(this.weight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String name)? petName,
    TResult? Function(String value)? petImage,
    TResult? Function(PetType value)? petType,
    TResult? Function(String dob)? dob,
    TResult? Function(DropItem breed)? breed,
    TResult? Function(String weightUnit)? weightUnit,
    TResult? Function(String weight)? weight,
    TResult? Function(List<DropItem> value)? addTag,
    TResult? Function(int index)? removeTag,
    TResult? Function(DropItem petGender)? petGender,
  }) {
    return weight?.call(this.weight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String name)? petName,
    TResult Function(String value)? petImage,
    TResult Function(PetType value)? petType,
    TResult Function(String dob)? dob,
    TResult Function(DropItem breed)? breed,
    TResult Function(String weightUnit)? weightUnit,
    TResult Function(String weight)? weight,
    TResult Function(List<DropItem> value)? addTag,
    TResult Function(int index)? removeTag,
    TResult Function(DropItem petGender)? petGender,
    required TResult orElse(),
  }) {
    if (weight != null) {
      return weight(this.weight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_PetName value) petName,
    required TResult Function(_PetImage value) petImage,
    required TResult Function(_PetType value) petType,
    required TResult Function(_DOB value) dob,
    required TResult Function(_Breed value) breed,
    required TResult Function(_WeightUnit value) weightUnit,
    required TResult Function(_Weight value) weight,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_RemoveTag value) removeTag,
    required TResult Function(_PetGender value) petGender,
  }) {
    return weight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_PetName value)? petName,
    TResult? Function(_PetImage value)? petImage,
    TResult? Function(_PetType value)? petType,
    TResult? Function(_DOB value)? dob,
    TResult? Function(_Breed value)? breed,
    TResult? Function(_WeightUnit value)? weightUnit,
    TResult? Function(_Weight value)? weight,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_RemoveTag value)? removeTag,
    TResult? Function(_PetGender value)? petGender,
  }) {
    return weight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_PetName value)? petName,
    TResult Function(_PetImage value)? petImage,
    TResult Function(_PetType value)? petType,
    TResult Function(_DOB value)? dob,
    TResult Function(_Breed value)? breed,
    TResult Function(_WeightUnit value)? weightUnit,
    TResult Function(_Weight value)? weight,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_RemoveTag value)? removeTag,
    TResult Function(_PetGender value)? petGender,
    required TResult orElse(),
  }) {
    if (weight != null) {
      return weight(this);
    }
    return orElse();
  }
}

abstract class _Weight implements PetFormEvent {
  const factory _Weight(final String weight) = _$WeightImpl;

  String get weight;

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeightImplCopyWith<_$WeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTagImplCopyWith<$Res> {
  factory _$$AddTagImplCopyWith(
    _$AddTagImpl value,
    $Res Function(_$AddTagImpl) then,
  ) = __$$AddTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DropItem> value});
}

/// @nodoc
class __$$AddTagImplCopyWithImpl<$Res>
    extends _$PetFormEventCopyWithImpl<$Res, _$AddTagImpl>
    implements _$$AddTagImplCopyWith<$Res> {
  __$$AddTagImplCopyWithImpl(
    _$AddTagImpl _value,
    $Res Function(_$AddTagImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$AddTagImpl(
        null == value
            ? _value._value
            : value // ignore: cast_nullable_to_non_nullable
                as List<DropItem>,
      ),
    );
  }
}

/// @nodoc

class _$AddTagImpl implements _AddTag {
  const _$AddTagImpl(final List<DropItem> value) : _value = value;

  final List<DropItem> _value;
  @override
  List<DropItem> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  String toString() {
    return 'PetFormEvent.addTag(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTagImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTagImplCopyWith<_$AddTagImpl> get copyWith =>
      __$$AddTagImplCopyWithImpl<_$AddTagImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String name) petName,
    required TResult Function(String value) petImage,
    required TResult Function(PetType value) petType,
    required TResult Function(String dob) dob,
    required TResult Function(DropItem breed) breed,
    required TResult Function(String weightUnit) weightUnit,
    required TResult Function(String weight) weight,
    required TResult Function(List<DropItem> value) addTag,
    required TResult Function(int index) removeTag,
    required TResult Function(DropItem petGender) petGender,
  }) {
    return addTag(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String name)? petName,
    TResult? Function(String value)? petImage,
    TResult? Function(PetType value)? petType,
    TResult? Function(String dob)? dob,
    TResult? Function(DropItem breed)? breed,
    TResult? Function(String weightUnit)? weightUnit,
    TResult? Function(String weight)? weight,
    TResult? Function(List<DropItem> value)? addTag,
    TResult? Function(int index)? removeTag,
    TResult? Function(DropItem petGender)? petGender,
  }) {
    return addTag?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String name)? petName,
    TResult Function(String value)? petImage,
    TResult Function(PetType value)? petType,
    TResult Function(String dob)? dob,
    TResult Function(DropItem breed)? breed,
    TResult Function(String weightUnit)? weightUnit,
    TResult Function(String weight)? weight,
    TResult Function(List<DropItem> value)? addTag,
    TResult Function(int index)? removeTag,
    TResult Function(DropItem petGender)? petGender,
    required TResult orElse(),
  }) {
    if (addTag != null) {
      return addTag(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_PetName value) petName,
    required TResult Function(_PetImage value) petImage,
    required TResult Function(_PetType value) petType,
    required TResult Function(_DOB value) dob,
    required TResult Function(_Breed value) breed,
    required TResult Function(_WeightUnit value) weightUnit,
    required TResult Function(_Weight value) weight,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_RemoveTag value) removeTag,
    required TResult Function(_PetGender value) petGender,
  }) {
    return addTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_PetName value)? petName,
    TResult? Function(_PetImage value)? petImage,
    TResult? Function(_PetType value)? petType,
    TResult? Function(_DOB value)? dob,
    TResult? Function(_Breed value)? breed,
    TResult? Function(_WeightUnit value)? weightUnit,
    TResult? Function(_Weight value)? weight,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_RemoveTag value)? removeTag,
    TResult? Function(_PetGender value)? petGender,
  }) {
    return addTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_PetName value)? petName,
    TResult Function(_PetImage value)? petImage,
    TResult Function(_PetType value)? petType,
    TResult Function(_DOB value)? dob,
    TResult Function(_Breed value)? breed,
    TResult Function(_WeightUnit value)? weightUnit,
    TResult Function(_Weight value)? weight,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_RemoveTag value)? removeTag,
    TResult Function(_PetGender value)? petGender,
    required TResult orElse(),
  }) {
    if (addTag != null) {
      return addTag(this);
    }
    return orElse();
  }
}

abstract class _AddTag implements PetFormEvent {
  const factory _AddTag(final List<DropItem> value) = _$AddTagImpl;

  List<DropItem> get value;

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTagImplCopyWith<_$AddTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTagImplCopyWith<$Res> {
  factory _$$RemoveTagImplCopyWith(
    _$RemoveTagImpl value,
    $Res Function(_$RemoveTagImpl) then,
  ) = __$$RemoveTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveTagImplCopyWithImpl<$Res>
    extends _$PetFormEventCopyWithImpl<$Res, _$RemoveTagImpl>
    implements _$$RemoveTagImplCopyWith<$Res> {
  __$$RemoveTagImplCopyWithImpl(
    _$RemoveTagImpl _value,
    $Res Function(_$RemoveTagImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$RemoveTagImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$RemoveTagImpl implements _RemoveTag {
  const _$RemoveTagImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'PetFormEvent.removeTag(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTagImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTagImplCopyWith<_$RemoveTagImpl> get copyWith =>
      __$$RemoveTagImplCopyWithImpl<_$RemoveTagImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String name) petName,
    required TResult Function(String value) petImage,
    required TResult Function(PetType value) petType,
    required TResult Function(String dob) dob,
    required TResult Function(DropItem breed) breed,
    required TResult Function(String weightUnit) weightUnit,
    required TResult Function(String weight) weight,
    required TResult Function(List<DropItem> value) addTag,
    required TResult Function(int index) removeTag,
    required TResult Function(DropItem petGender) petGender,
  }) {
    return removeTag(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String name)? petName,
    TResult? Function(String value)? petImage,
    TResult? Function(PetType value)? petType,
    TResult? Function(String dob)? dob,
    TResult? Function(DropItem breed)? breed,
    TResult? Function(String weightUnit)? weightUnit,
    TResult? Function(String weight)? weight,
    TResult? Function(List<DropItem> value)? addTag,
    TResult? Function(int index)? removeTag,
    TResult? Function(DropItem petGender)? petGender,
  }) {
    return removeTag?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String name)? petName,
    TResult Function(String value)? petImage,
    TResult Function(PetType value)? petType,
    TResult Function(String dob)? dob,
    TResult Function(DropItem breed)? breed,
    TResult Function(String weightUnit)? weightUnit,
    TResult Function(String weight)? weight,
    TResult Function(List<DropItem> value)? addTag,
    TResult Function(int index)? removeTag,
    TResult Function(DropItem petGender)? petGender,
    required TResult orElse(),
  }) {
    if (removeTag != null) {
      return removeTag(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_PetName value) petName,
    required TResult Function(_PetImage value) petImage,
    required TResult Function(_PetType value) petType,
    required TResult Function(_DOB value) dob,
    required TResult Function(_Breed value) breed,
    required TResult Function(_WeightUnit value) weightUnit,
    required TResult Function(_Weight value) weight,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_RemoveTag value) removeTag,
    required TResult Function(_PetGender value) petGender,
  }) {
    return removeTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_PetName value)? petName,
    TResult? Function(_PetImage value)? petImage,
    TResult? Function(_PetType value)? petType,
    TResult? Function(_DOB value)? dob,
    TResult? Function(_Breed value)? breed,
    TResult? Function(_WeightUnit value)? weightUnit,
    TResult? Function(_Weight value)? weight,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_RemoveTag value)? removeTag,
    TResult? Function(_PetGender value)? petGender,
  }) {
    return removeTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_PetName value)? petName,
    TResult Function(_PetImage value)? petImage,
    TResult Function(_PetType value)? petType,
    TResult Function(_DOB value)? dob,
    TResult Function(_Breed value)? breed,
    TResult Function(_WeightUnit value)? weightUnit,
    TResult Function(_Weight value)? weight,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_RemoveTag value)? removeTag,
    TResult Function(_PetGender value)? petGender,
    required TResult orElse(),
  }) {
    if (removeTag != null) {
      return removeTag(this);
    }
    return orElse();
  }
}

abstract class _RemoveTag implements PetFormEvent {
  const factory _RemoveTag(final int index) = _$RemoveTagImpl;

  int get index;

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveTagImplCopyWith<_$RemoveTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PetGenderImplCopyWith<$Res> {
  factory _$$PetGenderImplCopyWith(
    _$PetGenderImpl value,
    $Res Function(_$PetGenderImpl) then,
  ) = __$$PetGenderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DropItem petGender});
}

/// @nodoc
class __$$PetGenderImplCopyWithImpl<$Res>
    extends _$PetFormEventCopyWithImpl<$Res, _$PetGenderImpl>
    implements _$$PetGenderImplCopyWith<$Res> {
  __$$PetGenderImplCopyWithImpl(
    _$PetGenderImpl _value,
    $Res Function(_$PetGenderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? petGender = null}) {
    return _then(
      _$PetGenderImpl(
        null == petGender
            ? _value.petGender
            : petGender // ignore: cast_nullable_to_non_nullable
                as DropItem,
      ),
    );
  }
}

/// @nodoc

class _$PetGenderImpl implements _PetGender {
  const _$PetGenderImpl(this.petGender);

  @override
  final DropItem petGender;

  @override
  String toString() {
    return 'PetFormEvent.petGender(petGender: $petGender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetGenderImpl &&
            (identical(other.petGender, petGender) ||
                other.petGender == petGender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, petGender);

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PetGenderImplCopyWith<_$PetGenderImpl> get copyWith =>
      __$$PetGenderImplCopyWithImpl<_$PetGenderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) init,
    required TResult Function(int? id) submit,
    required TResult Function(String name) petName,
    required TResult Function(String value) petImage,
    required TResult Function(PetType value) petType,
    required TResult Function(String dob) dob,
    required TResult Function(DropItem breed) breed,
    required TResult Function(String weightUnit) weightUnit,
    required TResult Function(String weight) weight,
    required TResult Function(List<DropItem> value) addTag,
    required TResult Function(int index) removeTag,
    required TResult Function(DropItem petGender) petGender,
  }) {
    return petGender(this.petGender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? init,
    TResult? Function(int? id)? submit,
    TResult? Function(String name)? petName,
    TResult? Function(String value)? petImage,
    TResult? Function(PetType value)? petType,
    TResult? Function(String dob)? dob,
    TResult? Function(DropItem breed)? breed,
    TResult? Function(String weightUnit)? weightUnit,
    TResult? Function(String weight)? weight,
    TResult? Function(List<DropItem> value)? addTag,
    TResult? Function(int index)? removeTag,
    TResult? Function(DropItem petGender)? petGender,
  }) {
    return petGender?.call(this.petGender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? init,
    TResult Function(int? id)? submit,
    TResult Function(String name)? petName,
    TResult Function(String value)? petImage,
    TResult Function(PetType value)? petType,
    TResult Function(String dob)? dob,
    TResult Function(DropItem breed)? breed,
    TResult Function(String weightUnit)? weightUnit,
    TResult Function(String weight)? weight,
    TResult Function(List<DropItem> value)? addTag,
    TResult Function(int index)? removeTag,
    TResult Function(DropItem petGender)? petGender,
    required TResult orElse(),
  }) {
    if (petGender != null) {
      return petGender(this.petGender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_PetName value) petName,
    required TResult Function(_PetImage value) petImage,
    required TResult Function(_PetType value) petType,
    required TResult Function(_DOB value) dob,
    required TResult Function(_Breed value) breed,
    required TResult Function(_WeightUnit value) weightUnit,
    required TResult Function(_Weight value) weight,
    required TResult Function(_AddTag value) addTag,
    required TResult Function(_RemoveTag value) removeTag,
    required TResult Function(_PetGender value) petGender,
  }) {
    return petGender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_PetName value)? petName,
    TResult? Function(_PetImage value)? petImage,
    TResult? Function(_PetType value)? petType,
    TResult? Function(_DOB value)? dob,
    TResult? Function(_Breed value)? breed,
    TResult? Function(_WeightUnit value)? weightUnit,
    TResult? Function(_Weight value)? weight,
    TResult? Function(_AddTag value)? addTag,
    TResult? Function(_RemoveTag value)? removeTag,
    TResult? Function(_PetGender value)? petGender,
  }) {
    return petGender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_PetName value)? petName,
    TResult Function(_PetImage value)? petImage,
    TResult Function(_PetType value)? petType,
    TResult Function(_DOB value)? dob,
    TResult Function(_Breed value)? breed,
    TResult Function(_WeightUnit value)? weightUnit,
    TResult Function(_Weight value)? weight,
    TResult Function(_AddTag value)? addTag,
    TResult Function(_RemoveTag value)? removeTag,
    TResult Function(_PetGender value)? petGender,
    required TResult orElse(),
  }) {
    if (petGender != null) {
      return petGender(this);
    }
    return orElse();
  }
}

abstract class _PetGender implements PetFormEvent {
  const factory _PetGender(final DropItem petGender) = _$PetGenderImpl;

  DropItem get petGender;

  /// Create a copy of PetFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PetGenderImplCopyWith<_$PetGenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PetFormState {
  Status get initStatus => throw _privateConstructorUsedError;
  Status get submitStatus => throw _privateConstructorUsedError;
  bool get validation => throw _privateConstructorUsedError;
  NotEmpty get petName => throw _privateConstructorUsedError;
  PetType get petType => throw _privateConstructorUsedError;
  NotEmpty get dob => throw _privateConstructorUsedError;
  DropdownValue get gender => throw _privateConstructorUsedError;
  NotEmpty get petImage => throw _privateConstructorUsedError;
  int get petImageId => throw _privateConstructorUsedError;
  DropdownValue get breed => throw _privateConstructorUsedError;
  List<DropdownValue> get selectedPersonalityTags =>
      throw _privateConstructorUsedError;
  NotEmpty get weightUnit => throw _privateConstructorUsedError;
  NotEmpty get weight => throw _privateConstructorUsedError; //
  List<DropItem> get catbreeds => throw _privateConstructorUsedError;
  List<DropItem> get dogbreeds => throw _privateConstructorUsedError;
  List<DropItem> get personalityTags => throw _privateConstructorUsedError;

  /// Create a copy of PetFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PetFormStateCopyWith<PetFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetFormStateCopyWith<$Res> {
  factory $PetFormStateCopyWith(
    PetFormState value,
    $Res Function(PetFormState) then,
  ) = _$PetFormStateCopyWithImpl<$Res, PetFormState>;
  @useResult
  $Res call({
    Status initStatus,
    Status submitStatus,
    bool validation,
    NotEmpty petName,
    PetType petType,
    NotEmpty dob,
    DropdownValue gender,
    NotEmpty petImage,
    int petImageId,
    DropdownValue breed,
    List<DropdownValue> selectedPersonalityTags,
    NotEmpty weightUnit,
    NotEmpty weight,
    List<DropItem> catbreeds,
    List<DropItem> dogbreeds,
    List<DropItem> personalityTags,
  });
}

/// @nodoc
class _$PetFormStateCopyWithImpl<$Res, $Val extends PetFormState>
    implements $PetFormStateCopyWith<$Res> {
  _$PetFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PetFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? submitStatus = null,
    Object? validation = null,
    Object? petName = null,
    Object? petType = null,
    Object? dob = null,
    Object? gender = null,
    Object? petImage = null,
    Object? petImageId = null,
    Object? breed = null,
    Object? selectedPersonalityTags = null,
    Object? weightUnit = null,
    Object? weight = null,
    Object? catbreeds = null,
    Object? dogbreeds = null,
    Object? personalityTags = null,
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
            validation:
                null == validation
                    ? _value.validation
                    : validation // ignore: cast_nullable_to_non_nullable
                        as bool,
            petName:
                null == petName
                    ? _value.petName
                    : petName // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            petType:
                null == petType
                    ? _value.petType
                    : petType // ignore: cast_nullable_to_non_nullable
                        as PetType,
            dob:
                null == dob
                    ? _value.dob
                    : dob // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            gender:
                null == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as DropdownValue,
            petImage:
                null == petImage
                    ? _value.petImage
                    : petImage // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            petImageId:
                null == petImageId
                    ? _value.petImageId
                    : petImageId // ignore: cast_nullable_to_non_nullable
                        as int,
            breed:
                null == breed
                    ? _value.breed
                    : breed // ignore: cast_nullable_to_non_nullable
                        as DropdownValue,
            selectedPersonalityTags:
                null == selectedPersonalityTags
                    ? _value.selectedPersonalityTags
                    : selectedPersonalityTags // ignore: cast_nullable_to_non_nullable
                        as List<DropdownValue>,
            weightUnit:
                null == weightUnit
                    ? _value.weightUnit
                    : weightUnit // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            weight:
                null == weight
                    ? _value.weight
                    : weight // ignore: cast_nullable_to_non_nullable
                        as NotEmpty,
            catbreeds:
                null == catbreeds
                    ? _value.catbreeds
                    : catbreeds // ignore: cast_nullable_to_non_nullable
                        as List<DropItem>,
            dogbreeds:
                null == dogbreeds
                    ? _value.dogbreeds
                    : dogbreeds // ignore: cast_nullable_to_non_nullable
                        as List<DropItem>,
            personalityTags:
                null == personalityTags
                    ? _value.personalityTags
                    : personalityTags // ignore: cast_nullable_to_non_nullable
                        as List<DropItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PetFormStateImplCopyWith<$Res>
    implements $PetFormStateCopyWith<$Res> {
  factory _$$PetFormStateImplCopyWith(
    _$PetFormStateImpl value,
    $Res Function(_$PetFormStateImpl) then,
  ) = __$$PetFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status initStatus,
    Status submitStatus,
    bool validation,
    NotEmpty petName,
    PetType petType,
    NotEmpty dob,
    DropdownValue gender,
    NotEmpty petImage,
    int petImageId,
    DropdownValue breed,
    List<DropdownValue> selectedPersonalityTags,
    NotEmpty weightUnit,
    NotEmpty weight,
    List<DropItem> catbreeds,
    List<DropItem> dogbreeds,
    List<DropItem> personalityTags,
  });
}

/// @nodoc
class __$$PetFormStateImplCopyWithImpl<$Res>
    extends _$PetFormStateCopyWithImpl<$Res, _$PetFormStateImpl>
    implements _$$PetFormStateImplCopyWith<$Res> {
  __$$PetFormStateImplCopyWithImpl(
    _$PetFormStateImpl _value,
    $Res Function(_$PetFormStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PetFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initStatus = null,
    Object? submitStatus = null,
    Object? validation = null,
    Object? petName = null,
    Object? petType = null,
    Object? dob = null,
    Object? gender = null,
    Object? petImage = null,
    Object? petImageId = null,
    Object? breed = null,
    Object? selectedPersonalityTags = null,
    Object? weightUnit = null,
    Object? weight = null,
    Object? catbreeds = null,
    Object? dogbreeds = null,
    Object? personalityTags = null,
  }) {
    return _then(
      _$PetFormStateImpl(
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
        validation:
            null == validation
                ? _value.validation
                : validation // ignore: cast_nullable_to_non_nullable
                    as bool,
        petName:
            null == petName
                ? _value.petName
                : petName // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        petType:
            null == petType
                ? _value.petType
                : petType // ignore: cast_nullable_to_non_nullable
                    as PetType,
        dob:
            null == dob
                ? _value.dob
                : dob // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        gender:
            null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as DropdownValue,
        petImage:
            null == petImage
                ? _value.petImage
                : petImage // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        petImageId:
            null == petImageId
                ? _value.petImageId
                : petImageId // ignore: cast_nullable_to_non_nullable
                    as int,
        breed:
            null == breed
                ? _value.breed
                : breed // ignore: cast_nullable_to_non_nullable
                    as DropdownValue,
        selectedPersonalityTags:
            null == selectedPersonalityTags
                ? _value._selectedPersonalityTags
                : selectedPersonalityTags // ignore: cast_nullable_to_non_nullable
                    as List<DropdownValue>,
        weightUnit:
            null == weightUnit
                ? _value.weightUnit
                : weightUnit // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        weight:
            null == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                    as NotEmpty,
        catbreeds:
            null == catbreeds
                ? _value._catbreeds
                : catbreeds // ignore: cast_nullable_to_non_nullable
                    as List<DropItem>,
        dogbreeds:
            null == dogbreeds
                ? _value._dogbreeds
                : dogbreeds // ignore: cast_nullable_to_non_nullable
                    as List<DropItem>,
        personalityTags:
            null == personalityTags
                ? _value._personalityTags
                : personalityTags // ignore: cast_nullable_to_non_nullable
                    as List<DropItem>,
      ),
    );
  }
}

/// @nodoc

class _$PetFormStateImpl implements _PetFormState {
  const _$PetFormStateImpl({
    this.initStatus = Status.init,
    this.submitStatus = Status.init,
    this.validation = false,
    this.petName = const NotEmpty.pure(),
    this.petType = PetType.Cat,
    this.dob = const NotEmpty.pure(),
    this.gender = const DropdownValue.pure(),
    this.petImage = const NotEmpty.pure(),
    this.petImageId = 0,
    this.breed = const DropdownValue.pure(),
    final List<DropdownValue> selectedPersonalityTags = const [],
    this.weightUnit = const NotEmpty.pure(),
    this.weight = const NotEmpty.pure(),
    final List<DropItem> catbreeds = const [],
    final List<DropItem> dogbreeds = const [],
    final List<DropItem> personalityTags = const [],
  }) : _selectedPersonalityTags = selectedPersonalityTags,
       _catbreeds = catbreeds,
       _dogbreeds = dogbreeds,
       _personalityTags = personalityTags;

  @override
  @JsonKey()
  final Status initStatus;
  @override
  @JsonKey()
  final Status submitStatus;
  @override
  @JsonKey()
  final bool validation;
  @override
  @JsonKey()
  final NotEmpty petName;
  @override
  @JsonKey()
  final PetType petType;
  @override
  @JsonKey()
  final NotEmpty dob;
  @override
  @JsonKey()
  final DropdownValue gender;
  @override
  @JsonKey()
  final NotEmpty petImage;
  @override
  @JsonKey()
  final int petImageId;
  @override
  @JsonKey()
  final DropdownValue breed;
  final List<DropdownValue> _selectedPersonalityTags;
  @override
  @JsonKey()
  List<DropdownValue> get selectedPersonalityTags {
    if (_selectedPersonalityTags is EqualUnmodifiableListView)
      return _selectedPersonalityTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedPersonalityTags);
  }

  @override
  @JsonKey()
  final NotEmpty weightUnit;
  @override
  @JsonKey()
  final NotEmpty weight;
  //
  final List<DropItem> _catbreeds;
  //
  @override
  @JsonKey()
  List<DropItem> get catbreeds {
    if (_catbreeds is EqualUnmodifiableListView) return _catbreeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catbreeds);
  }

  final List<DropItem> _dogbreeds;
  @override
  @JsonKey()
  List<DropItem> get dogbreeds {
    if (_dogbreeds is EqualUnmodifiableListView) return _dogbreeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dogbreeds);
  }

  final List<DropItem> _personalityTags;
  @override
  @JsonKey()
  List<DropItem> get personalityTags {
    if (_personalityTags is EqualUnmodifiableListView) return _personalityTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_personalityTags);
  }

  @override
  String toString() {
    return 'PetFormState(initStatus: $initStatus, submitStatus: $submitStatus, validation: $validation, petName: $petName, petType: $petType, dob: $dob, gender: $gender, petImage: $petImage, petImageId: $petImageId, breed: $breed, selectedPersonalityTags: $selectedPersonalityTags, weightUnit: $weightUnit, weight: $weight, catbreeds: $catbreeds, dogbreeds: $dogbreeds, personalityTags: $personalityTags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetFormStateImpl &&
            (identical(other.initStatus, initStatus) ||
                other.initStatus == initStatus) &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.petName, petName) || other.petName == petName) &&
            (identical(other.petType, petType) || other.petType == petType) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.petImage, petImage) ||
                other.petImage == petImage) &&
            (identical(other.petImageId, petImageId) ||
                other.petImageId == petImageId) &&
            (identical(other.breed, breed) || other.breed == breed) &&
            const DeepCollectionEquality().equals(
              other._selectedPersonalityTags,
              _selectedPersonalityTags,
            ) &&
            (identical(other.weightUnit, weightUnit) ||
                other.weightUnit == weightUnit) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(
              other._catbreeds,
              _catbreeds,
            ) &&
            const DeepCollectionEquality().equals(
              other._dogbreeds,
              _dogbreeds,
            ) &&
            const DeepCollectionEquality().equals(
              other._personalityTags,
              _personalityTags,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    initStatus,
    submitStatus,
    validation,
    petName,
    petType,
    dob,
    gender,
    petImage,
    petImageId,
    breed,
    const DeepCollectionEquality().hash(_selectedPersonalityTags),
    weightUnit,
    weight,
    const DeepCollectionEquality().hash(_catbreeds),
    const DeepCollectionEquality().hash(_dogbreeds),
    const DeepCollectionEquality().hash(_personalityTags),
  );

  /// Create a copy of PetFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PetFormStateImplCopyWith<_$PetFormStateImpl> get copyWith =>
      __$$PetFormStateImplCopyWithImpl<_$PetFormStateImpl>(this, _$identity);
}

abstract class _PetFormState implements PetFormState {
  const factory _PetFormState({
    final Status initStatus,
    final Status submitStatus,
    final bool validation,
    final NotEmpty petName,
    final PetType petType,
    final NotEmpty dob,
    final DropdownValue gender,
    final NotEmpty petImage,
    final int petImageId,
    final DropdownValue breed,
    final List<DropdownValue> selectedPersonalityTags,
    final NotEmpty weightUnit,
    final NotEmpty weight,
    final List<DropItem> catbreeds,
    final List<DropItem> dogbreeds,
    final List<DropItem> personalityTags,
  }) = _$PetFormStateImpl;

  @override
  Status get initStatus;
  @override
  Status get submitStatus;
  @override
  bool get validation;
  @override
  NotEmpty get petName;
  @override
  PetType get petType;
  @override
  NotEmpty get dob;
  @override
  DropdownValue get gender;
  @override
  NotEmpty get petImage;
  @override
  int get petImageId;
  @override
  DropdownValue get breed;
  @override
  List<DropdownValue> get selectedPersonalityTags;
  @override
  NotEmpty get weightUnit;
  @override
  NotEmpty get weight; //
  @override
  List<DropItem> get catbreeds;
  @override
  List<DropItem> get dogbreeds;
  @override
  List<DropItem> get personalityTags;

  /// Create a copy of PetFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PetFormStateImplCopyWith<_$PetFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
