// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_data.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClientDataEntity {
  String? get inn => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String>? get phoneNumbers => throw _privateConstructorUsedError;

  /// Create a copy of ClientDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientDataEntityCopyWith<ClientDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDataEntityCopyWith<$Res> {
  factory $ClientDataEntityCopyWith(
          ClientDataEntity value, $Res Function(ClientDataEntity) then) =
      _$ClientDataEntityCopyWithImpl<$Res, ClientDataEntity>;
  @useResult
  $Res call(
      {String? inn,
      String? fullName,
      String? name,
      List<String>? phoneNumbers});
}

/// @nodoc
class _$ClientDataEntityCopyWithImpl<$Res, $Val extends ClientDataEntity>
    implements $ClientDataEntityCopyWith<$Res> {
  _$ClientDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inn = freezed,
    Object? fullName = freezed,
    Object? name = freezed,
    Object? phoneNumbers = freezed,
  }) {
    return _then(_value.copyWith(
      inn: freezed == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientDataEntityImplCopyWith<$Res>
    implements $ClientDataEntityCopyWith<$Res> {
  factory _$$ClientDataEntityImplCopyWith(_$ClientDataEntityImpl value,
          $Res Function(_$ClientDataEntityImpl) then) =
      __$$ClientDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? inn,
      String? fullName,
      String? name,
      List<String>? phoneNumbers});
}

/// @nodoc
class __$$ClientDataEntityImplCopyWithImpl<$Res>
    extends _$ClientDataEntityCopyWithImpl<$Res, _$ClientDataEntityImpl>
    implements _$$ClientDataEntityImplCopyWith<$Res> {
  __$$ClientDataEntityImplCopyWithImpl(_$ClientDataEntityImpl _value,
      $Res Function(_$ClientDataEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inn = freezed,
    Object? fullName = freezed,
    Object? name = freezed,
    Object? phoneNumbers = freezed,
  }) {
    return _then(_$ClientDataEntityImpl(
      inn: freezed == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value._phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$ClientDataEntityImpl implements _ClientDataEntity {
  _$ClientDataEntityImpl(
      {this.inn,
      this.fullName,
      this.name,
      required final List<String>? phoneNumbers})
      : _phoneNumbers = phoneNumbers;

  @override
  final String? inn;
  @override
  final String? fullName;
  @override
  final String? name;
  final List<String>? _phoneNumbers;
  @override
  List<String>? get phoneNumbers {
    final value = _phoneNumbers;
    if (value == null) return null;
    if (_phoneNumbers is EqualUnmodifiableListView) return _phoneNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClientDataEntity(inn: $inn, fullName: $fullName, name: $name, phoneNumbers: $phoneNumbers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientDataEntityImpl &&
            (identical(other.inn, inn) || other.inn == inn) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._phoneNumbers, _phoneNumbers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inn, fullName, name,
      const DeepCollectionEquality().hash(_phoneNumbers));

  /// Create a copy of ClientDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientDataEntityImplCopyWith<_$ClientDataEntityImpl> get copyWith =>
      __$$ClientDataEntityImplCopyWithImpl<_$ClientDataEntityImpl>(
          this, _$identity);
}

abstract class _ClientDataEntity implements ClientDataEntity {
  factory _ClientDataEntity(
      {final String? inn,
      final String? fullName,
      final String? name,
      required final List<String>? phoneNumbers}) = _$ClientDataEntityImpl;

  @override
  String? get inn;
  @override
  String? get fullName;
  @override
  String? get name;
  @override
  List<String>? get phoneNumbers;

  /// Create a copy of ClientDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientDataEntityImplCopyWith<_$ClientDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
