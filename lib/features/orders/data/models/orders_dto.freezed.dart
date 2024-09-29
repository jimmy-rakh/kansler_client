// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrdersDto _$OrdersDtoFromJson(Map<String, dynamic> json) {
  return _OrdersDto.fromJson(json);
}

/// @nodoc
mixin _$OrdersDto {
  int get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  List<OrganizationOrders>? get organizationOrders =>
      throw _privateConstructorUsedError;
  ManagerDto? get agent => throw _privateConstructorUsedError;
  String? get paymentType => throw _privateConstructorUsedError;
  String? get paymentStatus => throw _privateConstructorUsedError;
  String? get deliveryType => throw _privateConstructorUsedError;
  num? get rating => throw _privateConstructorUsedError;

  /// Serializes this OrdersDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrdersDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersDtoCopyWith<OrdersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersDtoCopyWith<$Res> {
  factory $OrdersDtoCopyWith(OrdersDto value, $Res Function(OrdersDto) then) =
      _$OrdersDtoCopyWithImpl<$Res, OrdersDto>;
  @useResult
  $Res call(
      {int id,
      String createdAt,
      String? status,
      int price,
      List<OrganizationOrders>? organizationOrders,
      ManagerDto? agent,
      String? paymentType,
      String? paymentStatus,
      String? deliveryType,
      num? rating});

  $ManagerDtoCopyWith<$Res>? get agent;
}

/// @nodoc
class _$OrdersDtoCopyWithImpl<$Res, $Val extends OrdersDto>
    implements $OrdersDtoCopyWith<$Res> {
  _$OrdersDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? status = freezed,
    Object? price = null,
    Object? organizationOrders = freezed,
    Object? agent = freezed,
    Object? paymentType = freezed,
    Object? paymentStatus = freezed,
    Object? deliveryType = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      organizationOrders: freezed == organizationOrders
          ? _value.organizationOrders
          : organizationOrders // ignore: cast_nullable_to_non_nullable
              as List<OrganizationOrders>?,
      agent: freezed == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryType: freezed == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  /// Create a copy of OrdersDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ManagerDtoCopyWith<$Res>? get agent {
    if (_value.agent == null) {
      return null;
    }

    return $ManagerDtoCopyWith<$Res>(_value.agent!, (value) {
      return _then(_value.copyWith(agent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrdersDtoImplCopyWith<$Res>
    implements $OrdersDtoCopyWith<$Res> {
  factory _$$OrdersDtoImplCopyWith(
          _$OrdersDtoImpl value, $Res Function(_$OrdersDtoImpl) then) =
      __$$OrdersDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String createdAt,
      String? status,
      int price,
      List<OrganizationOrders>? organizationOrders,
      ManagerDto? agent,
      String? paymentType,
      String? paymentStatus,
      String? deliveryType,
      num? rating});

  @override
  $ManagerDtoCopyWith<$Res>? get agent;
}

/// @nodoc
class __$$OrdersDtoImplCopyWithImpl<$Res>
    extends _$OrdersDtoCopyWithImpl<$Res, _$OrdersDtoImpl>
    implements _$$OrdersDtoImplCopyWith<$Res> {
  __$$OrdersDtoImplCopyWithImpl(
      _$OrdersDtoImpl _value, $Res Function(_$OrdersDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? status = freezed,
    Object? price = null,
    Object? organizationOrders = freezed,
    Object? agent = freezed,
    Object? paymentType = freezed,
    Object? paymentStatus = freezed,
    Object? deliveryType = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$OrdersDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      organizationOrders: freezed == organizationOrders
          ? _value._organizationOrders
          : organizationOrders // ignore: cast_nullable_to_non_nullable
              as List<OrganizationOrders>?,
      agent: freezed == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryType: freezed == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersDtoImpl implements _OrdersDto {
  _$OrdersDtoImpl(
      {required this.id,
      required this.createdAt,
      this.status,
      required this.price,
      final List<OrganizationOrders>? organizationOrders,
      this.agent,
      this.paymentType,
      this.paymentStatus,
      this.deliveryType,
      this.rating})
      : _organizationOrders = organizationOrders;

  factory _$OrdersDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String createdAt;
  @override
  final String? status;
  @override
  final int price;
  final List<OrganizationOrders>? _organizationOrders;
  @override
  List<OrganizationOrders>? get organizationOrders {
    final value = _organizationOrders;
    if (value == null) return null;
    if (_organizationOrders is EqualUnmodifiableListView)
      return _organizationOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ManagerDto? agent;
  @override
  final String? paymentType;
  @override
  final String? paymentStatus;
  @override
  final String? deliveryType;
  @override
  final num? rating;

  @override
  String toString() {
    return 'OrdersDto(id: $id, createdAt: $createdAt, status: $status, price: $price, organizationOrders: $organizationOrders, agent: $agent, paymentType: $paymentType, paymentStatus: $paymentStatus, deliveryType: $deliveryType, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._organizationOrders, _organizationOrders) &&
            (identical(other.agent, agent) || other.agent == agent) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      status,
      price,
      const DeepCollectionEquality().hash(_organizationOrders),
      agent,
      paymentType,
      paymentStatus,
      deliveryType,
      rating);

  /// Create a copy of OrdersDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersDtoImplCopyWith<_$OrdersDtoImpl> get copyWith =>
      __$$OrdersDtoImplCopyWithImpl<_$OrdersDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersDtoImplToJson(
      this,
    );
  }
}

abstract class _OrdersDto implements OrdersDto {
  factory _OrdersDto(
      {required final int id,
      required final String createdAt,
      final String? status,
      required final int price,
      final List<OrganizationOrders>? organizationOrders,
      final ManagerDto? agent,
      final String? paymentType,
      final String? paymentStatus,
      final String? deliveryType,
      final num? rating}) = _$OrdersDtoImpl;

  factory _OrdersDto.fromJson(Map<String, dynamic> json) =
      _$OrdersDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get createdAt;
  @override
  String? get status;
  @override
  int get price;
  @override
  List<OrganizationOrders>? get organizationOrders;
  @override
  ManagerDto? get agent;
  @override
  String? get paymentType;
  @override
  String? get paymentStatus;
  @override
  String? get deliveryType;
  @override
  num? get rating;

  /// Create a copy of OrdersDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersDtoImplCopyWith<_$OrdersDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrganizationOrders _$OrganizationOrdersFromJson(Map<String, dynamic> json) {
  return _OrganizationOrders.fromJson(json);
}

/// @nodoc
mixin _$OrganizationOrders {
  int get id => throw _privateConstructorUsedError;
  AddressDto? get address => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  OrganizationDto get organization => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  /// Serializes this OrganizationOrders to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationOrders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationOrdersCopyWith<OrganizationOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationOrdersCopyWith<$Res> {
  factory $OrganizationOrdersCopyWith(
          OrganizationOrders value, $Res Function(OrganizationOrders) then) =
      _$OrganizationOrdersCopyWithImpl<$Res, OrganizationOrders>;
  @useResult
  $Res call(
      {int id,
      AddressDto? address,
      String? status,
      OrganizationDto organization,
      int? price});

  $AddressDtoCopyWith<$Res>? get address;
  $OrganizationDtoCopyWith<$Res> get organization;
}

/// @nodoc
class _$OrganizationOrdersCopyWithImpl<$Res, $Val extends OrganizationOrders>
    implements $OrganizationOrdersCopyWith<$Res> {
  _$OrganizationOrdersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationOrders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = freezed,
    Object? status = freezed,
    Object? organization = null,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationDto,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of OrganizationOrders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressDtoCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of OrganizationOrders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationDtoCopyWith<$Res> get organization {
    return $OrganizationDtoCopyWith<$Res>(_value.organization, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrganizationOrdersImplCopyWith<$Res>
    implements $OrganizationOrdersCopyWith<$Res> {
  factory _$$OrganizationOrdersImplCopyWith(_$OrganizationOrdersImpl value,
          $Res Function(_$OrganizationOrdersImpl) then) =
      __$$OrganizationOrdersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      AddressDto? address,
      String? status,
      OrganizationDto organization,
      int? price});

  @override
  $AddressDtoCopyWith<$Res>? get address;
  @override
  $OrganizationDtoCopyWith<$Res> get organization;
}

/// @nodoc
class __$$OrganizationOrdersImplCopyWithImpl<$Res>
    extends _$OrganizationOrdersCopyWithImpl<$Res, _$OrganizationOrdersImpl>
    implements _$$OrganizationOrdersImplCopyWith<$Res> {
  __$$OrganizationOrdersImplCopyWithImpl(_$OrganizationOrdersImpl _value,
      $Res Function(_$OrganizationOrdersImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationOrders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = freezed,
    Object? status = freezed,
    Object? organization = null,
    Object? price = freezed,
  }) {
    return _then(_$OrganizationOrdersImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationDto,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationOrdersImpl implements _OrganizationOrders {
  _$OrganizationOrdersImpl(
      {required this.id,
      this.address,
      this.status,
      required this.organization,
      this.price});

  factory _$OrganizationOrdersImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationOrdersImplFromJson(json);

  @override
  final int id;
  @override
  final AddressDto? address;
  @override
  final String? status;
  @override
  final OrganizationDto organization;
  @override
  final int? price;

  @override
  String toString() {
    return 'OrganizationOrders(id: $id, address: $address, status: $status, organization: $organization, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationOrdersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, address, status, organization, price);

  /// Create a copy of OrganizationOrders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationOrdersImplCopyWith<_$OrganizationOrdersImpl> get copyWith =>
      __$$OrganizationOrdersImplCopyWithImpl<_$OrganizationOrdersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationOrdersImplToJson(
      this,
    );
  }
}

abstract class _OrganizationOrders implements OrganizationOrders {
  factory _OrganizationOrders(
      {required final int id,
      final AddressDto? address,
      final String? status,
      required final OrganizationDto organization,
      final int? price}) = _$OrganizationOrdersImpl;

  factory _OrganizationOrders.fromJson(Map<String, dynamic> json) =
      _$OrganizationOrdersImpl.fromJson;

  @override
  int get id;
  @override
  AddressDto? get address;
  @override
  String? get status;
  @override
  OrganizationDto get organization;
  @override
  int? get price;

  /// Create a copy of OrganizationOrders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationOrdersImplCopyWith<_$OrganizationOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
