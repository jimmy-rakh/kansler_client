import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../models/bonus_dto.dart';
import '../models/contract_dto.dart';
import '../models/debt_dto.dart';
import '../models/limit_dto.dart';
import '../models/payment_dto.dart';


abstract class LimitsRemoteSource {
  Future<Either<Failure, ({bool hasNext, List<LimitsDto> limits})>> fetchLimits(
      int id, int pageNumber);

  Future<Either<Failure, ({bool hasNext, List<BonusDto> bonuses})>>
      fetchBonuses(int id, int pageNumber);

  Future<Either<Failure, ({bool hasNext, List<DebtDto> debts})>> getDebts(
      int companyId, int contractId, int pageNumber);

  Future<Either<Failure, ({bool hasNext, List<PaymentDto> payments})>>
      getPayments(int companyId, int contractId, int pageNumber);

  Future<Either<Failure, ({bool hasNext, List<ContractDto> contracts})>>
      getContracts(int id, int pageNumber);
}
