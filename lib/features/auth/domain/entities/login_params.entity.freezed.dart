// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_params.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginParamsEntity {
  String get value => throw _privateConstructorUsedError;
  ClientType get clientType => throw _privateConstructorUsedError;
  String get fcmToken => throw _privateConstructorUsedError;
  DeviceInfo get device => throw _privateConstructorUsedError;

  /// Create a copy of LoginParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginParamsEntityCopyWith<LoginParamsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginParamsEntityCopyWith<$Res> {
  factory $LoginParamsEntityCopyWith(
          LoginParamsEntity value, $Res Function(LoginParamsEntity) then) =
      _$LoginParamsEntityCopyWithImpl<$Res, LoginParamsEntity>;
  @useResult
  $Res call(
      {String value,
      ClientType clientType,
      String fcmToken,
      DeviceInfo device});

  $DeviceInfoCopyWith<$Res> get device;
}

/// @nodoc
class _$LoginParamsEntityCopyWithImpl<$Res, $Val extends LoginParamsEntity>
    implements $LoginParamsEntityCopyWith<$Res> {
  _$LoginParamsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? clientType = null,
    Object? fcmToken = null,
    Object? device = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      clientType: null == clientType
          ? _value.clientType
          : clientType // ignore: cast_nullable_to_non_nullable
              as ClientType,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
    ) as $Val);
  }

  /// Create a copy of LoginParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceInfoCopyWith<$Res> get device {
    return $DeviceInfoCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginParamsEntityImplCopyWith<$Res>
    implements $LoginParamsEntityCopyWith<$Res> {
  factory _$$LoginParamsEntityImplCopyWith(_$LoginParamsEntityImpl value,
          $Res Function(_$LoginParamsEntityImpl) then) =
      __$$LoginParamsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String value,
      ClientType clientType,
      String fcmToken,
      DeviceInfo device});

  @override
  $DeviceInfoCopyWith<$Res> get device;
}

/// @nodoc
class __$$LoginParamsEntityImplCopyWithImpl<$Res>
    extends _$LoginParamsEntityCopyWithImpl<$Res, _$LoginParamsEntityImpl>
    implements _$$LoginParamsEntityImplCopyWith<$Res> {
  __$$LoginParamsEntityImplCopyWithImpl(_$LoginParamsEntityImpl _value,
      $Res Function(_$LoginParamsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? clientType = null,
    Object? fcmToken = null,
    Object? device = null,
  }) {
    return _then(_$LoginParamsEntityImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      clientType: null == clientType
          ? _value.clientType
          : clientType // ignore: cast_nullable_to_non_nullable
              as ClientType,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
    ));
  }
}

/// @nodoc

class _$LoginParamsEntityImpl implements _LoginParamsEntity {
  const _$LoginParamsEntityImpl(
      {required this.value,
      required this.clientType,
      required this.fcmToken,
      required this.device});

  @override
  final String value;
  @override
  final ClientType clientType;
  @override
  final String fcmToken;
  @override
  final DeviceInfo device;

  @override
  String toString() {
    return 'LoginParamsEntity(value: $value, clientType: $clientType, fcmToken: $fcmToken, device: $device)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginParamsEntityImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.clientType, clientType) ||
                other.clientType == clientType) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, value, clientType, fcmToken, device);

  /// Create a copy of LoginParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginParamsEntityImplCopyWith<_$LoginParamsEntityImpl> get copyWith =>
      __$$LoginParamsEntityImplCopyWithImpl<_$LoginParamsEntityImpl>(
          this, _$identity);
}

abstract class _LoginParamsEntity implements LoginParamsEntity {
  const factory _LoginParamsEntity(
      {required final String value,
      required final ClientType clientType,
      required final String fcmToken,
      required final DeviceInfo device}) = _$LoginParamsEntityImpl;

  @override
  String get value;
  @override
  ClientType get clientType;
  @override
  String get fcmToken;
  @override
  DeviceInfo get device;

  /// Create a copy of LoginParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginParamsEntityImplCopyWith<_$LoginParamsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
