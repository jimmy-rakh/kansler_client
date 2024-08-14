import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../app/router.dart';
import '../../../../../../shared/services/logger/logger_service.dart';
import '../../../../domain/usecases/confirm_code.usecase.dart';

part 'confirm_code_state.dart';
part 'confirm_code_event.dart';
part 'confirm_code_bloc.freezed.dart';

@injectable
class ConfirmCodeBloc extends Bloc<ConfirmCodeEvent, ConfirmCodeState> {
  final ConfirmCodeUseCase _confirmCodeUseCase;

  ConfirmCodeBloc(this._confirmCodeUseCase)
      : super(const ConfirmCodeState.ready()) {
    on<_Confirm>(_onConfirm);
  }

  final pinController = TextEditingController();

  void _onConfirm(_Confirm event, Emitter<ConfirmCodeState> emit) async {
    final res = await _confirmCodeUseCase.call((
      code: pinController.text,
      phoneNumber: event.phone,
      requestId: event.requestId,
    ));

    res.fold((l) => log.e('incorrect'), (r) => _onSuccess());
  }

  void _onSuccess() {
    Navigator.pop(router.navigatorKey.currentContext!, true);
  }
}
