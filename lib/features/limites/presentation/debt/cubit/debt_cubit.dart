import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/contract_dto.dart';
import '../../../data/models/debt_dto.dart';
import '../../../data/models/payment_dto.dart';
import '../../../domain/repositories/limits.repository.dart';


part 'debt_state.dart';
part 'debt_cubit.freezed.dart';

@injectable
class DebtCubit extends Cubit<DebtState> {
  final LimitsRepository _repository;

  DebtCubit(this._repository) : super(const DebtState());

  final paymentsController = ScrollController();

  int pageNumber = 1;
  bool hasNext = true;

  void init(int id) async {
    final res = await _repository.getContracts(id, 1);

    res.fold(
      (l) => null,
      (r) => emit(
        state.copyWith(
          companyId: id,
          contracts: r.contracts,
        ),
      ),
    );

    paymentsController.addListener(() {
      if (paymentsController.position.pixels >=
              paymentsController.position.maxScrollExtent - 200 &&
          hasNext &&
          !state.isMoreLoading) {
        getPayments(isMore: true);
      }
    });
  }

  void chooseContract(int? contract) {
    if (contract == null) return;

    emit(state.copyWith(choosedContract: contract));

    getPayments();
    getDebts();
  }

  void getPayments({bool isMore = false}) async {
    if (!isMore) pageNumber = 1;

    final res = await _repository.getPayments(
      state.companyId!,
      state.choosedContract!,
      pageNumber,
    );

    res.fold(
      (l) => null,
      (r) {
        hasNext = r.hasNext;
        if (hasNext) pageNumber++;

        return emit(state.copyWith(payments: r.payments));
      },
    );
  }

  void getDebts() async {
    final res = await _repository.getDebts(
      state.companyId!,
      state.choosedContract!,
      1,
    );

    res.fold(
      (l) => null,
      (r) => emit(
        state.copyWith(
          debts: r.debts,
        ),
      ),
    );
  }
}
