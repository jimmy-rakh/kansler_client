// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'limit_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LimitsDto _$LimitsDtoFromJson(Map<String, dynamic> json) {
  return _LimitsDto.fromJson(json);
}

/// @nodoc
mixin _$LimitsDto {
  int get id => throw _privateConstructorUsedError;
  CompanyDto get company => throw _privateConstructorUsedError;
  OrganizationDto get organization => throw _privateConstructorUsedError;
  String? get totalLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LimitsDtoCopyWith<LimitsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LimitsDtoCopyWith<$Res> {
  factory $LimitsDtoCopyWith(LimitsDto value, $Res Function(LimitsDto) then) =
      _$LimitsDtoCopyWithImpl<$Res, LimitsDto>;
  @useResult
  $Res call(
      {int id,
      CompanyDto company,
      OrganizationDto organization,
      String? totalLimit});

  $CompanyDtoCopyWith<$Res> get company;
  $OrganizationDtoCopyWith<$Res> get organization;
}

/// @nodoc
class _$LimitsDtoCopyWithImpl<$Res, $Val extends LimitsDto>
    implements $LimitsDtoCopyWith<$Res> {
  _$LimitsDtoCopyWithImpl(this._value, this._then);

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
    Object? totalLimit = freezed,
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
      totalLimit: freezed == totalLimit
          ? _value.totalLimit
          : totalLimit // ignore: cast_nullable_to_non_nullable
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
abstract class _$$LimitsDtoImplCopyWith<$Res>
    implements $LimitsDtoCopyWith<$Res> {
  factory _$$LimitsDtoImplCopyWith(
          _$LimitsDtoImpl value, $Res Function(_$LimitsDtoImpl) then) =
      __$$LimitsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      CompanyDto company,
      OrganizationDto organization,
      String? totalLimit});

  @override
  $CompanyDtoCopyWith<$Res> get company;
  @override
  $OrganizationDtoCopyWith<$Res> get organization;
}

/// @nodoc
class __$$LimitsDtoImplCopyWithImpl<$Res>
    extends _$LimitsDtoCopyWithImpl<$Res, _$LimitsDtoImpl>
    implements _$$LimitsDtoImplCopyWith<$Res> {
  __$$LimitsDtoImplCopyWithImpl(
      _$LimitsDtoImpl _value, $Res Function(_$LimitsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? company = null,
    Object? organization = null,
    Object? totalLimit = freezed,
  }) {
    return _then(_$LimitsDtoImpl(
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
      totalLimit: freezed == totalLimit
          ? _value.totalLimit
          : totalLimit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LimitsDtoImpl implements _LimitsDto {
  _$LimitsDtoImpl(
      {required this.id,
      required this.company,
      required this.organization,
      this.totalLimit});

  factory _$LimitsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LimitsDtoImplFromJson(json);

  @override
  final int id;
  @override
  final CompanyDto company;
  @override
  final OrganizationDto organization;
  @override
  final String? totalLimit;

  @override
  String toString() {
    return 'LimitsDto(id: $id, company: $company, organization: $organization, totalLimit: $totalLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LimitsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.totalLimit, totalLimit) ||
                other.totalLimit == totalLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, company, organization, totalLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LimitsDtoImplCopyWith<_$LimitsDtoImpl> get copyWith =>
      __$$LimitsDtoImplCopyWithImpl<_$LimitsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LimitsDtoImplToJson(
      this,
    );
  }
}

abstract class _LimitsDto implements LimitsDto {
  factory _LimitsDto(
      {required final int id,
      required final CompanyDto company,
      required final OrganizationDto organization,
      final String? totalLimit}) = _$LimitsDtoImpl;

  factory _LimitsDto.fromJson(Map<String, dynamic> json) =
      _$LimitsDtoImpl.fromJson;

  @override
  int get id;
  @override
  CompanyDto get company;
  @override
  OrganizationDto get organization;
  @override
  String? get totalLimit;
  @override
  @JsonKey(ignore: true)
  _$$LimitsDtoImplCopyWith<_$LimitsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
