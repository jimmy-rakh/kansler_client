part of 'confirm_code_bloc.dart';

@freezed
class ConfirmCodeState with _$ConfirmCodeState {
  const factory ConfirmCodeState.ready() = _Ready;
  const factory ConfirmCodeState.loadInProgress() = _LoadInProgress;
}
