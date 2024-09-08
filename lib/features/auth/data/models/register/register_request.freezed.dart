// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) {
  return _RegisterRequest.fromJson(json);
}

/// @nodoc
mixin _$RegisterRequest {
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get addressesId => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String get requestId => throw _privateConstructorUsedError;
  AddressRequest? get addresses => throw _privateConstructorUsedError;

  /// Serializes this RegisterRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterRequestCopyWith<RegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterRequestCopyWith<$Res> {
  factory $RegisterRequestCopyWith(
          RegisterRequest value, $Res Function(RegisterRequest) then) =
      _$RegisterRequestCopyWithImpl<$Res, RegisterRequest>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? name,
      String username,
      String password,
      String phoneNumber,
      @JsonKey(includeIfNull: false) int? addressesId,
      @JsonKey(includeToJson: false) String requestId,
      AddressRequest? addresses});

  $AddressRequestCopyWith<$Res>? get addresses;
}

/// @nodoc
class _$RegisterRequestCopyWithImpl<$Res, $Val extends RegisterRequest>
    implements $RegisterRequestCopyWith<$Res> {
  _$RegisterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? addressesId = freezed,
    Object? requestId = null,
    Object? addresses = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      addressesId: freezed == addressesId
          ? _value.addressesId
          : addressesId // ignore: cast_nullable_to_non_nullable
              as int?,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as AddressRequest?,
    ) as $Val);
  }

  /// Create a copy of RegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressRequestCopyWith<$Res>? get addresses {
    if (_value.addresses == null) {
      return null;
    }

    return $AddressRequestCopyWith<$Res>(_value.addresses!, (value) {
      return _then(_value.copyWith(addresses: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterRequestImplCopyWith<$Res>
    implements $RegisterRequestCopyWith<$Res> {
  factory _$$RegisterRequestImplCopyWith(_$RegisterRequestImpl value,
          $Res Function(_$RegisterRequestImpl) then) =
      __$$RegisterRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? name,
      String username,
      String password,
      String phoneNumber,
      @JsonKey(includeIfNull: false) int? addressesId,
      @JsonKey(includeToJson: false) String requestId,
      AddressRequest? addresses});

  @override
  $AddressRequestCopyWith<$Res>? get addresses;
}

/// @nodoc
class __$$RegisterRequestImplCopyWithImpl<$Res>
    extends _$RegisterRequestCopyWithImpl<$Res, _$RegisterRequestImpl>
    implements _$$RegisterRequestImplCopyWith<$Res> {
  __$$RegisterRequestImplCopyWithImpl(
      _$RegisterRequestImpl _value, $Res Function(_$RegisterRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? addressesId = freezed,
    Object? requestId = null,
    Object? addresses = freezed,
  }) {
    return _then(_$RegisterRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      addressesId: freezed == addressesId
          ? _value.addressesId
          : addressesId // ignore: cast_nullable_to_non_nullable
              as int?,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as AddressRequest?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterRequestImpl implements _RegisterRequest {
  _$RegisterRequestImpl(
      {@JsonKey(includeIfNull: false) this.name,
      required this.username,
      required this.password,
      required this.phoneNumber,
      @JsonKey(includeIfNull: false) this.addressesId,
      @JsonKey(includeToJson: false) required this.requestId,
      this.addresses});

  factory _$RegisterRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterRequestImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? name;
  @override
  final String username;
  @override
  final String password;
  @override
  final String phoneNumber;
  @override
  @JsonKey(includeIfNull: false)
  final int? addressesId;
  @override
  @JsonKey(includeToJson: false)
  final String requestId;
  @override
  final AddressRequest? addresses;

  @override
  String toString() {
    return 'RegisterRequest(name: $name, username: $username, password: $password, phoneNumber: $phoneNumber, addressesId: $addressesId, requestId: $requestId, addresses: $addresses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.addressesId, addressesId) ||
                other.addressesId == addressesId) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.addresses, addresses) ||
                other.addresses == addresses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, username, password,
      phoneNumber, addressesId, requestId, addresses);

  /// Create a copy of RegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterRequestImplCopyWith<_$RegisterRequestImpl> get copyWith =>
      __$$RegisterRequestImplCopyWithImpl<_$RegisterRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterRequestImplToJson(
      this,
    );
  }
}

abstract class _RegisterRequest implements RegisterRequest {
  factory _RegisterRequest(
      {@JsonKey(includeIfNull: false) final String? name,
      required final String username,
      required final String password,
      required final String phoneNumber,
      @JsonKey(includeIfNull: false) final int? addressesId,
      @JsonKey(includeToJson: false) required final String requestId,
      final AddressRequest? addresses}) = _$RegisterRequestImpl;

  factory _RegisterRequest.fromJson(Map<String, dynamic> json) =
      _$RegisterRequestImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get name;
  @override
  String get username;
  @override
  String get password;
  @override
  String get phoneNumber;
  @override
  @JsonKey(includeIfNull: false)
  int? get addressesId;
  @override
  @JsonKey(includeToJson: false)
  String get requestId;
  @override
  AddressRequest? get addresses;

  /// Create a copy of RegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterRequestImplCopyWith<_$RegisterRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
