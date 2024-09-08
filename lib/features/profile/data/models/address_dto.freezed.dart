// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) {
  return _AddressDto.fromJson(json);
}

/// @nodoc
mixin _$AddressDto {
  int? get id => throw _privateConstructorUsedError;
  OrganizationDto? get organization => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  ManagerDto? get manager => throw _privateConstructorUsedError;
  ManagerDto? get agent => throw _privateConstructorUsedError;
  dynamic get latitude => throw _privateConstructorUsedError;
  dynamic get longitude => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  /// Serializes this AddressDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressDtoCopyWith<AddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDtoCopyWith<$Res> {
  factory $AddressDtoCopyWith(
          AddressDto value, $Res Function(AddressDto) then) =
      _$AddressDtoCopyWithImpl<$Res, AddressDto>;
  @useResult
  $Res call(
      {int? id,
      OrganizationDto? organization,
      String? name,
      String? phoneNumber,
      ManagerDto? manager,
      ManagerDto? agent,
      dynamic latitude,
      dynamic longitude,
      String? region,
      bool? active});

  $OrganizationDtoCopyWith<$Res>? get organization;
  $ManagerDtoCopyWith<$Res>? get manager;
  $ManagerDtoCopyWith<$Res>? get agent;
}

/// @nodoc
class _$AddressDtoCopyWithImpl<$Res, $Val extends AddressDto>
    implements $AddressDtoCopyWith<$Res> {
  _$AddressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organization = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? manager = freezed,
    Object? agent = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? region = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationDto?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
      agent: freezed == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationDtoCopyWith<$Res>? get organization {
    if (_value.organization == null) {
      return null;
    }

    return $OrganizationDtoCopyWith<$Res>(_value.organization!, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ManagerDtoCopyWith<$Res>? get manager {
    if (_value.manager == null) {
      return null;
    }

    return $ManagerDtoCopyWith<$Res>(_value.manager!, (value) {
      return _then(_value.copyWith(manager: value) as $Val);
    });
  }

  /// Create a copy of AddressDto
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
abstract class _$$AddressDtoImplCopyWith<$Res>
    implements $AddressDtoCopyWith<$Res> {
  factory _$$AddressDtoImplCopyWith(
          _$AddressDtoImpl value, $Res Function(_$AddressDtoImpl) then) =
      __$$AddressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      OrganizationDto? organization,
      String? name,
      String? phoneNumber,
      ManagerDto? manager,
      ManagerDto? agent,
      dynamic latitude,
      dynamic longitude,
      String? region,
      bool? active});

  @override
  $OrganizationDtoCopyWith<$Res>? get organization;
  @override
  $ManagerDtoCopyWith<$Res>? get manager;
  @override
  $ManagerDtoCopyWith<$Res>? get agent;
}

/// @nodoc
class __$$AddressDtoImplCopyWithImpl<$Res>
    extends _$AddressDtoCopyWithImpl<$Res, _$AddressDtoImpl>
    implements _$$AddressDtoImplCopyWith<$Res> {
  __$$AddressDtoImplCopyWithImpl(
      _$AddressDtoImpl _value, $Res Function(_$AddressDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? organization = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? manager = freezed,
    Object? agent = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? region = freezed,
    Object? active = freezed,
  }) {
    return _then(_$AddressDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationDto?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
      agent: freezed == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDtoImpl extends _AddressDto {
  const _$AddressDtoImpl(
      {this.id,
      this.organization,
      this.name,
      this.phoneNumber,
      this.manager,
      this.agent,
      this.latitude,
      this.longitude,
      this.region,
      this.active})
      : super._();

  factory _$AddressDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final OrganizationDto? organization;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final ManagerDto? manager;
  @override
  final ManagerDto? agent;
  @override
  final dynamic latitude;
  @override
  final dynamic longitude;
  @override
  final String? region;
  @override
  final bool? active;

  @override
  String toString() {
    return 'AddressDto(id: $id, organization: $organization, name: $name, phoneNumber: $phoneNumber, manager: $manager, agent: $agent, latitude: $latitude, longitude: $longitude, region: $region, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.agent, agent) || other.agent == agent) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      organization,
      name,
      phoneNumber,
      manager,
      agent,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      region,
      active);

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      __$$AddressDtoImplCopyWithImpl<_$AddressDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressDto extends AddressDto {
  const factory _AddressDto(
      {final int? id,
      final OrganizationDto? organization,
      final String? name,
      final String? phoneNumber,
      final ManagerDto? manager,
      final ManagerDto? agent,
      final dynamic latitude,
      final dynamic longitude,
      final String? region,
      final bool? active}) = _$AddressDtoImpl;
  const _AddressDto._() : super._();

  factory _AddressDto.fromJson(Map<String, dynamic> json) =
      _$AddressDtoImpl.fromJson;

  @override
  int? get id;
  @override
  OrganizationDto? get organization;
  @override
  String? get name;
  @override
  String? get phoneNumber;
  @override
  ManagerDto? get manager;
  @override
  ManagerDto? get agent;
  @override
  dynamic get latitude;
  @override
  dynamic get longitude;
  @override
  String? get region;
  @override
  bool? get active;

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrganizationDto _$OrganizationDtoFromJson(Map<String, dynamic> json) {
  return _OrganizationDto.fromJson(json);
}

/// @nodoc
mixin _$OrganizationDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this OrganizationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationDtoCopyWith<OrganizationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationDtoCopyWith<$Res> {
  factory $OrganizationDtoCopyWith(
          OrganizationDto value, $Res Function(OrganizationDto) then) =
      _$OrganizationDtoCopyWithImpl<$Res, OrganizationDto>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$OrganizationDtoCopyWithImpl<$Res, $Val extends OrganizationDto>
    implements $OrganizationDtoCopyWith<$Res> {
  _$OrganizationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrganizationDtoImplCopyWith<$Res>
    implements $OrganizationDtoCopyWith<$Res> {
  factory _$$OrganizationDtoImplCopyWith(_$OrganizationDtoImpl value,
          $Res Function(_$OrganizationDtoImpl) then) =
      __$$OrganizationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$OrganizationDtoImplCopyWithImpl<$Res>
    extends _$OrganizationDtoCopyWithImpl<$Res, _$OrganizationDtoImpl>
    implements _$$OrganizationDtoImplCopyWith<$Res> {
  __$$OrganizationDtoImplCopyWithImpl(
      _$OrganizationDtoImpl _value, $Res Function(_$OrganizationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$OrganizationDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationDtoImpl extends _OrganizationDto {
  const _$OrganizationDtoImpl({this.id, this.name}) : super._();

  factory _$OrganizationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'OrganizationDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of OrganizationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationDtoImplCopyWith<_$OrganizationDtoImpl> get copyWith =>
      __$$OrganizationDtoImplCopyWithImpl<_$OrganizationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationDtoImplToJson(
      this,
    );
  }
}

abstract class _OrganizationDto extends OrganizationDto {
  const factory _OrganizationDto({final int? id, final String? name}) =
      _$OrganizationDtoImpl;
  const _OrganizationDto._() : super._();

  factory _OrganizationDto.fromJson(Map<String, dynamic> json) =
      _$OrganizationDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of OrganizationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationDtoImplCopyWith<_$OrganizationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
