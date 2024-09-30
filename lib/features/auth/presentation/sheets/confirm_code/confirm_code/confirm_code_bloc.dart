import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/auth/data/models/confirm_code/confirm_request.dart';
import 'package:kansler/features/auth/data/models/send_code/request.dart';
import 'package:kansler/features/auth/domain/domain.dart';
import '../../../../../../app/router.dart';

part 'confirm_code_state.dart';
part 'confirm_code_event.dart';
part 'confirm_code_bloc.freezed.dart';

@injectable
class ConfirmCodeBloc extends Bloc<ConfirmCodeEvent, ConfirmCodeState> {
  final AuthRepository _authRepository;

  ConfirmCodeBloc(this._authRepository) : super(const ConfirmCodeState()) {
    on<_Confirm>(_onConfirm);
    on<_UpdateCountdown>(_onUpdateCountdown);
    on<_Resend>(_onResend);
    on<_Init>(_onInit);
  }

  Timer? _timer;

  final pinController = TextEditingController();

  void _onInit(_Init event, Emitter<ConfirmCodeState> emit) {
    emit(state.copyWith(
      status: ConfirmCodeStatus.initial,
      requestId: event.requestId,
      request: event.request,
    ));

    _initTimer();
  }

  void _onConfirm(_Confirm event, Emitter<ConfirmCodeState> emit) async {
    final request = ConfirmRequest(
      value: pinController.text,
      requestId: event.requestId,
    );

    final res = await _authRepository.confirmCode(request);

    res.fold((l) => emit(state.copyWith(status: ConfirmCodeStatus.error)),
        (r) => _onSuccess());
  }

  void _onSuccess() {
    Navigator.pop(router.navigatorKey.currentContext!, true);
  }

  void _onUpdateCountdown(
      _UpdateCountdown event, Emitter<ConfirmCodeState> emit) {
    emit(state.copyWith(
        leftSeconds: event.seconds, status: ConfirmCodeStatus.initial));
  }

  void _initTimer() {
    // if (state.leftSeconds != 59) return;
    int leftSeconds = 59;
    _timer = Timer.periodic(const Duration(seconds: 1), (tick) {
      leftSeconds--;
      if (!isClosed) add(ConfirmCodeEvent.updateCountdown(leftSeconds));

      if (leftSeconds == 0 || isClosed) {
        _timer?.cancel();
        return;
      }
    });
  }

  void _onResend(_Resend event, Emitter<ConfirmCodeState> emit) async {
    if (state.status == ConfirmCodeStatus.loading) return;

    emit(state.copyWith(status: ConfirmCodeStatus.loading));

    final res = await _authRepository.sendCode(
      state.requestId!,
      state.request!,
    );

    res.fold(
      (l) => print(l),
      (r) {
        _timer = null;
        _initTimer();
      },
    );
  }

  @override
  Future<void> close() {
    // TODO: implement close
    return super.close();
  }
}
