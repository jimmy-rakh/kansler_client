// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthRequest {
  String get value => throw _privateConstructorUsedError;
  ClientType get clientType => throw _privateConstructorUsedError;
  String get fcmToken => throw _privateConstructorUsedError;
  DeviceInfo get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthRequestCopyWith<AuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRequestCopyWith<$Res> {
  factory $AuthRequestCopyWith(
          AuthRequest value, $Res Function(AuthRequest) then) =
      _$AuthRequestCopyWithImpl<$Res, AuthRequest>;
  @useResult
  $Res call(
      {String value,
      ClientType clientType,
      String fcmToken,
      DeviceInfo device});

  $DeviceInfoCopyWith<$Res> get device;
}

/// @nodoc
class _$AuthRequestCopyWithImpl<$Res, $Val extends AuthRequest>
    implements $AuthRequestCopyWith<$Res> {
  _$AuthRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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

  @override
  @pragma('vm:prefer-inline')
  $DeviceInfoCopyWith<$Res> get device {
    return $DeviceInfoCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthRequestImplCopyWith<$Res>
    implements $AuthRequestCopyWith<$Res> {
  factory _$$AuthRequestImplCopyWith(
          _$AuthRequestImpl value, $Res Function(_$AuthRequestImpl) then) =
      __$$AuthRequestImplCopyWithImpl<$Res>;
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
class __$$AuthRequestImplCopyWithImpl<$Res>
    extends _$AuthRequestCopyWithImpl<$Res, _$AuthRequestImpl>
    implements _$$AuthRequestImplCopyWith<$Res> {
  __$$AuthRequestImplCopyWithImpl(
      _$AuthRequestImpl _value, $Res Function(_$AuthRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? clientType = null,
    Object? fcmToken = null,
    Object? device = null,
  }) {
    return _then(_$AuthRequestImpl(
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
@JsonSerializable(createFactory: false)
class _$AuthRequestImpl implements _AuthRequest {
  _$AuthRequestImpl(
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
    return 'AuthRequest(value: $value, clientType: $clientType, fcmToken: $fcmToken, device: $device)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRequestImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.clientType, clientType) ||
                other.clientType == clientType) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.device, device) || other.device == device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, value, clientType, fcmToken, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRequestImplCopyWith<_$AuthRequestImpl> get copyWith =>
      __$$AuthRequestImplCopyWithImpl<_$AuthRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthRequestImplToJson(
      this,
    );
  }
}

abstract class _AuthRequest implements AuthRequest {
  factory _AuthRequest(
      {required final String value,
      required final ClientType clientType,
      required final String fcmToken,
      required final DeviceInfo device}) = _$AuthRequestImpl;

  @override
  String get value;
  @override
  ClientType get clientType;
  @override
  String get fcmToken;
  @override
  DeviceInfo get device;
  @override
  @JsonKey(ignore: true)
  _$$AuthRequestImplCopyWith<_$AuthRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
