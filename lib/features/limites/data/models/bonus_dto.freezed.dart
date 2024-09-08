// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bonus_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BonusDto _$BonusDtoFromJson(Map<String, dynamic> json) {
  return _BonusDto.fromJson(json);
}

/// @nodoc
mixin _$BonusDto {
  int get id => throw _privateConstructorUsedError;
  CompanyDto get company => throw _privateConstructorUsedError;
  OrganizationDto get organization => throw _privateConstructorUsedError;
  String? get totalBonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BonusDtoCopyWith<BonusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BonusDtoCopyWith<$Res> {
  factory $BonusDtoCopyWith(BonusDto value, $Res Function(BonusDto) then) =
      _$BonusDtoCopyWithImpl<$Res, BonusDto>;
  @useResult
  $Res call(
      {int id,
      CompanyDto company,
      OrganizationDto organization,
      String? totalBonus});

  $CompanyDtoCopyWith<$Res> get company;
  $OrganizationDtoCopyWith<$Res> get organization;
}

/// @nodoc
class _$BonusDtoCopyWithImpl<$Res, $Val extends BonusDto>
    implements $BonusDtoCopyWith<$Res> {
  _$BonusDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? company = null,
    Object? organization = null,
    Object? totalBonus = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDto,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationDto,
      totalBonus: freezed == totalBonus
          ? _value.totalBonus
          : totalBonus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyDtoCopyWith<$Res> get company {
    return $CompanyDtoCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrganizationDtoCopyWith<$Res> get organization {
    return $OrganizationDtoCopyWith<$Res>(_value.organization, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BonusDtoImplCopyWith<$Res>
    implements $BonusDtoCopyWith<$Res> {
  factory _$$BonusDtoImplCopyWith(
          _$BonusDtoImpl value, $Res Function(_$BonusDtoImpl) then) =
      __$$BonusDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      CompanyDto company,
      OrganizationDto organization,
      String? totalBonus});

  @override
  $CompanyDtoCopyWith<$Res> get company;
  @override
  $OrganizationDtoCopyWith<$Res> get organization;
}

/// @nodoc
class __$$BonusDtoImplCopyWithImpl<$Res>
    extends _$BonusDtoCopyWithImpl<$Res, _$BonusDtoImpl>
    implements _$$BonusDtoImplCopyWith<$Res> {
  __$$BonusDtoImplCopyWithImpl(
      _$BonusDtoImpl _value, $Res Function(_$BonusDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? company = null,
    Object? organization = null,
    Object? totalBonus = freezed,
  }) {
    return _then(_$BonusDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDto,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationDto,
      totalBonus: freezed == totalBonus
          ? _value.totalBonus
          : totalBonus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BonusDtoImpl implements _BonusDto {
  _$BonusDtoImpl(
      {required this.id,
      required this.company,
      required this.organization,
      this.totalBonus});

  factory _$BonusDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BonusDtoImplFromJson(json);

  @override
  final int id;
  @override
  final CompanyDto company;
  @override
  final OrganizationDto organization;
  @override
  final String? totalBonus;

  @override
  String toString() {
    return 'BonusDto(id: $id, company: $company, organization: $organization, totalBonus: $totalBonus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BonusDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.totalBonus, totalBonus) ||
                other.totalBonus == totalBonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, company, organization, totalBonus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BonusDtoImplCopyWith<_$BonusDtoImpl> get copyWith =>
      __$$BonusDtoImplCopyWithImpl<_$BonusDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BonusDtoImplToJson(
      this,
    );
  }
}

abstract class _BonusDto implements BonusDto {
  factory _BonusDto(
      {required final int id,
      required final CompanyDto company,
      required final OrganizationDto organization,
      final String? totalBonus}) = _$BonusDtoImpl;

  factory _BonusDto.fromJson(Map<String, dynamic> json) =
      _$BonusDtoImpl.fromJson;

  @override
  int get id;
  @override
  CompanyDto get company;
  @override
  OrganizationDto get organization;
  @override
  String? get totalBonus;
  @override
  @JsonKey(ignore: true)
  _$$BonusDtoImplCopyWith<_$BonusDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
