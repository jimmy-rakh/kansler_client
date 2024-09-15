// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContractDto _$ContractDtoFromJson(Map<String, dynamic> json) {
  return _ContractDto.fromJson(json);
}

/// @nodoc
mixin _$ContractDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  CompanyDto get company => throw _privateConstructorUsedError;
  OrganizationDto get organization => throw _privateConstructorUsedError;
  ManagerDto? get manager => throw _privateConstructorUsedError;
  ManagerDto? get agent => throw _privateConstructorUsedError;

  /// Serializes this ContractDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractDtoCopyWith<ContractDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractDtoCopyWith<$Res> {
  factory $ContractDtoCopyWith(
          ContractDto value, $Res Function(ContractDto) then) =
      _$ContractDtoCopyWithImpl<$Res, ContractDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      CompanyDto company,
      OrganizationDto organization,
      ManagerDto? manager,
      ManagerDto? agent});

  $CompanyDtoCopyWith<$Res> get company;
  $OrganizationDtoCopyWith<$Res> get organization;
  $ManagerDtoCopyWith<$Res>? get manager;
  $ManagerDtoCopyWith<$Res>? get agent;
}

/// @nodoc
class _$ContractDtoCopyWithImpl<$Res, $Val extends ContractDto>
    implements $ContractDtoCopyWith<$Res> {
  _$ContractDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? company = null,
    Object? organization = null,
    Object? manager = freezed,
    Object? agent = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDto,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationDto,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
      agent: freezed == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
    ) as $Val);
  }

  /// Create a copy of ContractDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyDtoCopyWith<$Res> get company {
    return $CompanyDtoCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }

  /// Create a copy of ContractDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationDtoCopyWith<$Res> get organization {
    return $OrganizationDtoCopyWith<$Res>(_value.organization, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }

  /// Create a copy of ContractDto
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

  /// Create a copy of ContractDto
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
abstract class _$$ContractDtoImplCopyWith<$Res>
    implements $ContractDtoCopyWith<$Res> {
  factory _$$ContractDtoImplCopyWith(
          _$ContractDtoImpl value, $Res Function(_$ContractDtoImpl) then) =
      __$$ContractDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      CompanyDto company,
      OrganizationDto organization,
      ManagerDto? manager,
      ManagerDto? agent});

  @override
  $CompanyDtoCopyWith<$Res> get company;
  @override
  $OrganizationDtoCopyWith<$Res> get organization;
  @override
  $ManagerDtoCopyWith<$Res>? get manager;
  @override
  $ManagerDtoCopyWith<$Res>? get agent;
}

/// @nodoc
class __$$ContractDtoImplCopyWithImpl<$Res>
    extends _$ContractDtoCopyWithImpl<$Res, _$ContractDtoImpl>
    implements _$$ContractDtoImplCopyWith<$Res> {
  __$$ContractDtoImplCopyWithImpl(
      _$ContractDtoImpl _value, $Res Function(_$ContractDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? company = null,
    Object? organization = null,
    Object? manager = freezed,
    Object? agent = freezed,
  }) {
    return _then(_$ContractDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDto,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationDto,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
      agent: freezed == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractDtoImpl implements _ContractDto {
  _$ContractDtoImpl(
      {required this.id,
      required this.name,
      required this.company,
      required this.organization,
      this.manager,
      this.agent});

  factory _$ContractDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final CompanyDto company;
  @override
  final OrganizationDto organization;
  @override
  final ManagerDto? manager;
  @override
  final ManagerDto? agent;

  @override
  String toString() {
    return 'ContractDto(id: $id, name: $name, company: $company, organization: $organization, manager: $manager, agent: $agent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.agent, agent) || other.agent == agent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, company, organization, manager, agent);

  /// Create a copy of ContractDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractDtoImplCopyWith<_$ContractDtoImpl> get copyWith =>
      __$$ContractDtoImplCopyWithImpl<_$ContractDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractDtoImplToJson(
      this,
    );
  }
}

abstract class _ContractDto implements ContractDto {
  factory _ContractDto(
      {required final int id,
      required final String name,
      required final CompanyDto company,
      required final OrganizationDto organization,
      final ManagerDto? manager,
      final ManagerDto? agent}) = _$ContractDtoImpl;

  factory _ContractDto.fromJson(Map<String, dynamic> json) =
      _$ContractDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  CompanyDto get company;
  @override
  OrganizationDto get organization;
  @override
  ManagerDto? get manager;
  @override
  ManagerDto? get agent;

  /// Create a copy of ContractDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractDtoImplCopyWith<_$ContractDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
