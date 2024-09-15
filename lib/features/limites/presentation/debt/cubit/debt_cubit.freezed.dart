// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debt_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DebtState {
  DebtStatus get status => throw _privateConstructorUsedError;
  List<ContractDto> get contracts => throw _privateConstructorUsedError;
  int? get companyId => throw _privateConstructorUsedError;
  int? get choosedContract => throw _privateConstructorUsedError;
  List<DebtDto>? get debts => throw _privateConstructorUsedError;
  List<PaymentDto>? get payments => throw _privateConstructorUsedError;
  bool get isMoreLoading => throw _privateConstructorUsedError;

  /// Create a copy of DebtState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DebtStateCopyWith<DebtState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebtStateCopyWith<$Res> {
  factory $DebtStateCopyWith(DebtState value, $Res Function(DebtState) then) =
      _$DebtStateCopyWithImpl<$Res, DebtState>;
  @useResult
  $Res call(
      {DebtStatus status,
      List<ContractDto> contracts,
      int? companyId,
      int? choosedContract,
      List<DebtDto>? debts,
      List<PaymentDto>? payments,
      bool isMoreLoading});
}

/// @nodoc
class _$DebtStateCopyWithImpl<$Res, $Val extends DebtState>
    implements $DebtStateCopyWith<$Res> {
  _$DebtStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DebtState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? contracts = null,
    Object? companyId = freezed,
    Object? choosedContract = freezed,
    Object? debts = freezed,
    Object? payments = freezed,
    Object? isMoreLoading = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DebtStatus,
      contracts: null == contracts
          ? _value.contracts
          : contracts // ignore: cast_nullable_to_non_nullable
              as List<ContractDto>,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      choosedContract: freezed == choosedContract
          ? _value.choosedContract
          : choosedContract // ignore: cast_nullable_to_non_nullable
              as int?,
      debts: freezed == debts
          ? _value.debts
          : debts // ignore: cast_nullable_to_non_nullable
              as List<DebtDto>?,
      payments: freezed == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentDto>?,
      isMoreLoading: null == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DebtStateImplCopyWith<$Res>
    implements $DebtStateCopyWith<$Res> {
  factory _$$DebtStateImplCopyWith(
          _$DebtStateImpl value, $Res Function(_$DebtStateImpl) then) =
      __$$DebtStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DebtStatus status,
      List<ContractDto> contracts,
      int? companyId,
      int? choosedContract,
      List<DebtDto>? debts,
      List<PaymentDto>? payments,
      bool isMoreLoading});
}

/// @nodoc
class __$$DebtStateImplCopyWithImpl<$Res>
    extends _$DebtStateCopyWithImpl<$Res, _$DebtStateImpl>
    implements _$$DebtStateImplCopyWith<$Res> {
  __$$DebtStateImplCopyWithImpl(
      _$DebtStateImpl _value, $Res Function(_$DebtStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DebtState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? contracts = null,
    Object? companyId = freezed,
    Object? choosedContract = freezed,
    Object? debts = freezed,
    Object? payments = freezed,
    Object? isMoreLoading = null,
  }) {
    return _then(_$DebtStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DebtStatus,
      contracts: null == contracts
          ? _value._contracts
          : contracts // ignore: cast_nullable_to_non_nullable
              as List<ContractDto>,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      choosedContract: freezed == choosedContract
          ? _value.choosedContract
          : choosedContract // ignore: cast_nullable_to_non_nullable
              as int?,
      debts: freezed == debts
          ? _value._debts
          : debts // ignore: cast_nullable_to_non_nullable
              as List<DebtDto>?,
      payments: freezed == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentDto>?,
      isMoreLoading: null == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DebtStateImpl implements _DebtState {
  const _$DebtStateImpl(
      {this.status = DebtStatus.loading,
      final List<ContractDto> contracts = const [],
      this.companyId,
      this.choosedContract,
      final List<DebtDto>? debts,
      final List<PaymentDto>? payments,
      this.isMoreLoading = false})
      : _contracts = contracts,
        _debts = debts,
        _payments = payments;

  @override
  @JsonKey()
  final DebtStatus status;
  final List<ContractDto> _contracts;
  @override
  @JsonKey()
  List<ContractDto> get contracts {
    if (_contracts is EqualUnmodifiableListView) return _contracts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contracts);
  }

  @override
  final int? companyId;
  @override
  final int? choosedContract;
  final List<DebtDto>? _debts;
  @override
  List<DebtDto>? get debts {
    final value = _debts;
    if (value == null) return null;
    if (_debts is EqualUnmodifiableListView) return _debts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PaymentDto>? _payments;
  @override
  List<PaymentDto>? get payments {
    final value = _payments;
    if (value == null) return null;
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isMoreLoading;

  @override
  String toString() {
    return 'DebtState(status: $status, contracts: $contracts, companyId: $companyId, choosedContract: $choosedContract, debts: $debts, payments: $payments, isMoreLoading: $isMoreLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DebtStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._contracts, _contracts) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.choosedContract, choosedContract) ||
                other.choosedContract == choosedContract) &&
            const DeepCollectionEquality().equals(other._debts, _debts) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.isMoreLoading, isMoreLoading) ||
                other.isMoreLoading == isMoreLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_contracts),
      companyId,
      choosedContract,
      const DeepCollectionEquality().hash(_debts),
      const DeepCollectionEquality().hash(_payments),
      isMoreLoading);

  /// Create a copy of DebtState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DebtStateImplCopyWith<_$DebtStateImpl> get copyWith =>
      __$$DebtStateImplCopyWithImpl<_$DebtStateImpl>(this, _$identity);
}

abstract class _DebtState implements DebtState {
  const factory _DebtState(
      {final DebtStatus status,
      final List<ContractDto> contracts,
      final int? companyId,
      final int? choosedContract,
      final List<DebtDto>? debts,
      final List<PaymentDto>? payments,
      final bool isMoreLoading}) = _$DebtStateImpl;

  @override
  DebtStatus get status;
  @override
  List<ContractDto> get contracts;
  @override
  int? get companyId;
  @override
  int? get choosedContract;
  @override
  List<DebtDto>? get debts;
  @override
  List<PaymentDto>? get payments;
  @override
  bool get isMoreLoading;

  /// Create a copy of DebtState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DebtStateImplCopyWith<_$DebtStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
