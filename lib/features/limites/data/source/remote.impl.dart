import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/limites/data/source/remote.dart';
import 'package:kansler/features/limites/data/source/remote.keys.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/models/pagination.dart';
import '../models/bonus_dto.dart';
import '../models/contract_dto.dart';
import '../models/debt_dto.dart';
import '../models/limit_dto.dart';
import '../models/payment_dto.dart';

@Injectable(as: LimitsRemoteSource)
class LimitsRemoteImpl implements LimitsRemoteSource {
  final DioClient _dioClient;

  LimitsRemoteImpl(this._dioClient);

  @override
  Future<Either<Failure, ({bool hasNext, List<BonusDto> bonuses})>>
      fetchBonuses(int id, int pageNumber) async {
    final res = await _dioClient.getRequest(
      LimitsRemoteKeys.bonus.replaceAll('id', id.toString()),
      queryParameters: {'page': pageNumber},
      converter: (response) {
        final res =
            PaginationResponse.fromJson(response as Map<String, dynamic>);

        final products = res.results.map((e) => BonusDto.fromJson(e)).toList();

        return (hasNext: res.next != null, bonuses: products);
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<LimitsDto> limits})>> fetchLimits(
      int id, int pageNumber) async {
    final res = await _dioClient.getRequest(
      LimitsRemoteKeys.limits.replaceAll('id', id.toString()),
      queryParameters: {'page': pageNumber},
      converter: (response) {
        final res =
            PaginationResponse.fromJson(response as Map<String, dynamic>);

        final products = res.results.map((e) => LimitsDto.fromJson(e)).toList();

        return (hasNext: res.next != null, limits: products);
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, ({List<ContractDto> contracts, bool hasNext})>>
      getContracts(int id, int pageNumber) async {
    final res = await _dioClient.getRequest(
      LimitsRemoteKeys.contracts.replaceAll('id', id.toString()),
      queryParameters: {'page': pageNumber},
      converter: (response) {
        final res =
            PaginationResponse.fromJson(response as Map<String, dynamic>);

        final products =
            res.results.map((e) => ContractDto.fromJson(e)).toList();

        return (hasNext: res.next != null, contracts: products);
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, ({List<DebtDto> debts, bool hasNext})>> getDebts(
      int companyId, int contractId, int pageNumber) async {
    final res = await _dioClient.getRequest(
      LimitsRemoteKeys.debts.replaceAll('id', companyId.toString()).replaceAll(
            'cnteId',
            contractId.toString(),
          ),
      queryParameters: {'page': pageNumber},
      converter: (response) {
        final res =
            PaginationResponse.fromJson(response as Map<String, dynamic>);

        final products = res.results.map((e) => DebtDto.fromJson(e)).toList();

        return (hasNext: res.next != null, debts: products);
      },
    );

    return res;
  }

  @override
  Future<Either<Failure, ({bool hasNext, List<PaymentDto> payments})>>
      getPayments(int companyId, int contractId, int pageNumber) async {
    final res = await _dioClient.getRequest(
      LimitsRemoteKeys.payment
          .replaceAll('id', companyId.toString())
          .replaceAll(
            'cnteId',
            contractId.toString(),
          ),
      queryParameters: {'page': pageNumber},
      converter: (response) {
        final res =
            PaginationResponse.fromJson(response as Map<String, dynamic>);

        final products =
            res.results.map((e) => PaymentDto.fromJson(e)).toList();

        return (hasNext: res.next != null, payments: products);
      },
    );

    return res;
  }
}
