// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DebtDto _$DebtDtoFromJson(Map<String, dynamic> json) {
  return _DebtDto.fromJson(json);
}

/// @nodoc
mixin _$DebtDto {
  int get id => throw _privateConstructorUsedError;
  OrganizationDto get organization => throw _privateConstructorUsedError;
  CompanyDto get company => throw _privateConstructorUsedError;
  ContractDto get contract => throw _privateConstructorUsedError;
  String get totalDebt => throw _privateConstructorUsedError;
  @JsonKey(name: 'debt_15_days')
  String get debt15Days => throw _privateConstructorUsedError;
  @JsonKey(name: 'debt_16_45_days')
  String get debt1645Days => throw _privateConstructorUsedError;
  @JsonKey(name: 'debt_46_60_days')
  String get debt4660Days => throw _privateConstructorUsedError;
  @JsonKey(name: 'debt_61_90_days')
  String get debt6190Days => throw _privateConstructorUsedError;
  @JsonKey(name: 'debt_91_120_days')
  String get debt91120Days => throw _privateConstructorUsedError;
  @JsonKey(name: 'debt_over_120_days')
  String get debtOver120Days => throw _privateConstructorUsedError;

  /// Serializes this DebtDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DebtDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DebtDtoCopyWith<DebtDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebtDtoCopyWith<$Res> {
  factory $DebtDtoCopyWith(DebtDto value, $Res Function(DebtDto) then) =
      _$DebtDtoCopyWithImpl<$Res, DebtDto>;
  @useResult
  $Res call(
      {int id,
      OrganizationDto organization,
      CompanyDto company,
      ContractDto contract,
      String totalDebt,
      @JsonKey(name: 'debt_15_days') String debt15Days,
      @JsonKey(name: 'debt_16_45_days') String debt1645Days,
      @JsonKey(name: 'debt_46_60_days') String debt4660Days,
      @JsonKey(name: 'debt_61_90_days') String debt6190Days,
      @JsonKey(name: 'debt_91_120_days') String debt91120Days,
      @JsonKey(name: 'debt_over_120_days') String debtOver120Days});

  $OrganizationDtoCopyWith<$Res> get organization;
  $CompanyDtoCopyWith<$Res> get company;
  $ContractDtoCopyWith<$Res> get contract;
}

/// @nodoc
class _$DebtDtoCopyWithImpl<$Res, $Val extends DebtDto>
    implements $DebtDtoCopyWith<$Res> {
  _$DebtDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DebtDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organization = null,
    Object? company = null,
    Object? contract = null,
    Object? totalDebt = null,
    Object? debt15Days = null,
    Object? debt1645Days = null,
    Object? debt4660Days = null,
    Object? debt6190Days = null,
    Object? debt91120Days = null,
    Object? debtOver120Days = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationDto,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDto,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as ContractDto,
      totalDebt: null == totalDebt
          ? _value.totalDebt
          : totalDebt // ignore: cast_nullable_to_non_nullable
              as String,
      debt15Days: null == debt15Days
          ? _value.debt15Days
          : debt15Days // ignore: cast_nullable_to_non_nullable
              as String,
      debt1645Days: null == debt1645Days
          ? _value.debt1645Days
          : debt1645Days // ignore: cast_nullable_to_non_nullable
              as String,
      debt4660Days: null == debt4660Days
          ? _value.debt4660Days
          : debt4660Days // ignore: cast_nullable_to_non_nullable
              as String,
      debt6190Days: null == debt6190Days
          ? _value.debt6190Days
          : debt6190Days // ignore: cast_nullable_to_non_nullable
              as String,
      debt91120Days: null == debt91120Days
          ? _value.debt91120Days
          : debt91120Days // ignore: cast_nullable_to_non_nullable
              as String,
      debtOver120Days: null == debtOver120Days
          ? _value.debtOver120Days
          : debtOver120Days // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of DebtDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationDtoCopyWith<$Res> get organization {
    return $OrganizationDtoCopyWith<$Res>(_value.organization, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }

  /// Create a copy of DebtDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyDtoCopyWith<$Res> get company {
    return $CompanyDtoCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }

  /// Create a copy of DebtDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContractDtoCopyWith<$Res> get contract {
    return $ContractDtoCopyWith<$Res>(_value.contract, (value) {
      return _then(_value.copyWith(contract: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DebtDtoImplCopyWith<$Res> implements $DebtDtoCopyWith<$Res> {
  factory _$$DebtDtoImplCopyWith(
          _$DebtDtoImpl value, $Res Function(_$DebtDtoImpl) then) =
      __$$DebtDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      OrganizationDto organization,
      CompanyDto company,
      ContractDto contract,
      String totalDebt,
      @JsonKey(name: 'debt_15_days') String debt15Days,
      @JsonKey(name: 'debt_16_45_days') String debt1645Days,
      @JsonKey(name: 'debt_46_60_days') String debt4660Days,
      @JsonKey(name: 'debt_61_90_days') String debt6190Days,
      @JsonKey(name: 'debt_91_120_days') String debt91120Days,
      @JsonKey(name: 'debt_over_120_days') String debtOver120Days});

  @override
  $OrganizationDtoCopyWith<$Res> get organization;
  @override
  $CompanyDtoCopyWith<$Res> get company;
  @override
  $ContractDtoCopyWith<$Res> get contract;
}

/// @nodoc
class __$$DebtDtoImplCopyWithImpl<$Res>
    extends _$DebtDtoCopyWithImpl<$Res, _$DebtDtoImpl>
    implements _$$DebtDtoImplCopyWith<$Res> {
  __$$DebtDtoImplCopyWithImpl(
      _$DebtDtoImpl _value, $Res Function(_$DebtDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DebtDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organization = null,
    Object? company = null,
    Object? contract = null,
    Object? totalDebt = null,
    Object? debt15Days = null,
    Object? debt1645Days = null,
    Object? debt4660Days = null,
    Object? debt6190Days = null,
    Object? debt91120Days = null,
    Object? debtOver120Days = null,
  }) {
    return _then(_$DebtDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationDto,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDto,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as ContractDto,
      totalDebt: null == totalDebt
          ? _value.totalDebt
          : totalDebt // ignore: cast_nullable_to_non_nullable
              as String,
      debt15Days: null == debt15Days
          ? _value.debt15Days
          : debt15Days // ignore: cast_nullable_to_non_nullable
              as String,
      debt1645Days: null == debt1645Days
          ? _value.debt1645Days
          : debt1645Days // ignore: cast_nullable_to_non_nullable
              as String,
      debt4660Days: null == debt4660Days
          ? _value.debt4660Days
          : debt4660Days // ignore: cast_nullable_to_non_nullable
              as String,
      debt6190Days: null == debt6190Days
          ? _value.debt6190Days
          : debt6190Days // ignore: cast_nullable_to_non_nullable
              as String,
      debt91120Days: null == debt91120Days
          ? _value.debt91120Days
          : debt91120Days // ignore: cast_nullable_to_non_nullable
              as String,
      debtOver120Days: null == debtOver120Days
          ? _value.debtOver120Days
          : debtOver120Days // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DebtDtoImpl implements _DebtDto {
  _$DebtDtoImpl(
      {required this.id,
      required this.organization,
      required this.company,
      required this.contract,
      required this.totalDebt,
      @JsonKey(name: 'debt_15_days') required this.debt15Days,
      @JsonKey(name: 'debt_16_45_days') required this.debt1645Days,
      @JsonKey(name: 'debt_46_60_days') required this.debt4660Days,
      @JsonKey(name: 'debt_61_90_days') required this.debt6190Days,
      @JsonKey(name: 'debt_91_120_days') required this.debt91120Days,
      @JsonKey(name: 'debt_over_120_days') required this.debtOver120Days});

  factory _$DebtDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DebtDtoImplFromJson(json);

  @override
  final int id;
  @override
  final OrganizationDto organization;
  @override
  final CompanyDto company;
  @override
  final ContractDto contract;
  @override
  final String totalDebt;
  @override
  @JsonKey(name: 'debt_15_days')
  final String debt15Days;
  @override
  @JsonKey(name: 'debt_16_45_days')
  final String debt1645Days;
  @override
  @JsonKey(name: 'debt_46_60_days')
  final String debt4660Days;
  @override
  @JsonKey(name: 'debt_61_90_days')
  final String debt6190Days;
  @override
  @JsonKey(name: 'debt_91_120_days')
  final String debt91120Days;
  @override
  @JsonKey(name: 'debt_over_120_days')
  final String debtOver120Days;

  @override
  String toString() {
    return 'DebtDto(id: $id, organization: $organization, company: $company, contract: $contract, totalDebt: $totalDebt, debt15Days: $debt15Days, debt1645Days: $debt1645Days, debt4660Days: $debt4660Days, debt6190Days: $debt6190Days, debt91120Days: $debt91120Days, debtOver120Days: $debtOver120Days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DebtDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.totalDebt, totalDebt) ||
                other.totalDebt == totalDebt) &&
            (identical(other.debt15Days, debt15Days) ||
                other.debt15Days == debt15Days) &&
            (identical(other.debt1645Days, debt1645Days) ||
                other.debt1645Days == debt1645Days) &&
            (identical(other.debt4660Days, debt4660Days) ||
                other.debt4660Days == debt4660Days) &&
            (identical(other.debt6190Days, debt6190Days) ||
                other.debt6190Days == debt6190Days) &&
            (identical(other.debt91120Days, debt91120Days) ||
                other.debt91120Days == debt91120Days) &&
            (identical(other.debtOver120Days, debtOver120Days) ||
                other.debtOver120Days == debtOver120Days));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      organization,
      company,
      contract,
      totalDebt,
      debt15Days,
      debt1645Days,
      debt4660Days,
      debt6190Days,
      debt91120Days,
      debtOver120Days);

  /// Create a copy of DebtDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DebtDtoImplCopyWith<_$DebtDtoImpl> get copyWith =>
      __$$DebtDtoImplCopyWithImpl<_$DebtDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DebtDtoImplToJson(
      this,
    );
  }
}

abstract class _DebtDto implements DebtDto {
  factory _DebtDto(
      {required final int id,
      required final OrganizationDto organization,
      required final CompanyDto company,
      required final ContractDto contract,
      required final String totalDebt,
      @JsonKey(name: 'debt_15_days') required final String debt15Days,
      @JsonKey(name: 'debt_16_45_days') required final String debt1645Days,
      @JsonKey(name: 'debt_46_60_days') required final String debt4660Days,
      @JsonKey(name: 'debt_61_90_days') required final String debt6190Days,
      @JsonKey(name: 'debt_91_120_days') required final String debt91120Days,
      @JsonKey(name: 'debt_over_120_days')
      required final String debtOver120Days}) = _$DebtDtoImpl;

  factory _DebtDto.fromJson(Map<String, dynamic> json) = _$DebtDtoImpl.fromJson;

  @override
  int get id;
  @override
  OrganizationDto get organization;
  @override
  CompanyDto get company;
  @override
  ContractDto get contract;
  @override
  String get totalDebt;
  @override
  @JsonKey(name: 'debt_15_days')
  String get debt15Days;
  @override
  @JsonKey(name: 'debt_16_45_days')
  String get debt1645Days;
  @override
  @JsonKey(name: 'debt_46_60_days')
  String get debt4660Days;
  @override
  @JsonKey(name: 'debt_61_90_days')
  String get debt6190Days;
  @override
  @JsonKey(name: 'debt_91_120_days')
  String get debt91120Days;
  @override
  @JsonKey(name: 'debt_over_120_days')
  String get debtOver120Days;

  /// Create a copy of DebtDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DebtDtoImplCopyWith<_$DebtDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
