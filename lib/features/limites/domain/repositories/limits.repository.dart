import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/bonus_dto.dart';
import '../../data/models/contract_dto.dart';
import '../../data/models/debt_dto.dart';
import '../../data/models/limit_dto.dart';
import '../../data/models/payment_dto.dart';


abstract class LimitsRepository {
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
