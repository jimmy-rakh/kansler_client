import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/auth/data/models/confirm_code/confirm_request.dart';
import 'package:kansler/features/auth/domain/domain.dart';
import '../../../../../../app/router.dart';
import '../../../../../../shared/services/logger/logger_service.dart';
import '../../../../data/models/confirm_code/confirm_response.dart';

part 'confirm_code_state.dart';
part 'confirm_code_event.dart';
part 'confirm_code_bloc.freezed.dart';

@injectable
class ConfirmCodeBloc extends Bloc<ConfirmCodeEvent, ConfirmCodeState> {
  final AuthRepository _authRepository;

  ConfirmCodeBloc(this._authRepository)
      : super(const ConfirmCodeState.ready()) {
    on<_Confirm>(_onConfirm);
  }

  final pinController = TextEditingController();

  void _onConfirm(_Confirm event, Emitter<ConfirmCodeState> emit) async {
    final request = ConfirmRequest(
      value: pinController.text,
      requestId: event.requestId,
    );

    final res = await _authRepository.confirmCode(request);

    res.fold((l) => log.e('incorrect'), (r) => _onSuccess());
  }

  void _onSuccess() {
    Navigator.pop(router.navigatorKey.currentContext!, true);
  }
}
