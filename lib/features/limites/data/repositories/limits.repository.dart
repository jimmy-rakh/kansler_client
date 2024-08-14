import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/repositories/limits.repository.dart';
import '../models/bonus_dto.dart';
import '../models/contract_dto.dart';
import '../models/debt_dto.dart';
import '../models/limit_dto.dart';
import '../models/payment_dto.dart';
import '../source/remote.dart';

@Injectable(as: LimitsRepository)
class LimitsRepositoryImpl implements LimitsRepository {
  final LimitsRemoteSource _remoteSource;

  LimitsRepositoryImpl(this._remoteSource);

  @override
  Future<Either<Failure, ({bool hasNext, List<BonusDto> bonuses})>>
      fetchBonuses(int id, int pageNumber) async {
    final res = await _remoteSource.fetchBonuses(id, pageNumber);

    return res;
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<LimitsDto> limits})>> fetchLimits(
      int id, int pageNumber) async {
    final res = await _remoteSource.fetchLimits(id, pageNumber);

    return res;
  }

  @override
  Future<Either<Failure, ({List<ContractDto> contracts, bool hasNext})>>
      getContracts(int id, int pageNumber) async {
    final res = await _remoteSource.getContracts(id, pageNumber);

    return res;
  }

  @override
  Future<Either<Failure, ({List<DebtDto> debts, bool hasNext})>> getDebts(
      int companyId, int contractId, int pageNumber) async {
    final res = await _remoteSource.getDebts(companyId, contractId, pageNumber);

    return res;
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<PaymentDto> payments})>>
      getPayments(int companyId, int contractId, int pageNumber) async {
    final res =
        await _remoteSource.getPayments(companyId, contractId, pageNumber);

    return res;
  }
}
