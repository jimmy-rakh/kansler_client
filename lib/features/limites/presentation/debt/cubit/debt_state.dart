part of 'debt_cubit.dart';

enum DebtStatus { loading, success }

@freezed
class DebtState with _$DebtState {
  const factory DebtState({
    @Default(DebtStatus.loading) DebtStatus status,
    @Default([]) List<ContractDto> contracts,
    int? companyId,
    int? choosedContract,
    List<DebtDto>? debts,
    List<PaymentDto>? payments,
    @Default(false) bool isMoreLoading
  }) = _DebtState;
}
