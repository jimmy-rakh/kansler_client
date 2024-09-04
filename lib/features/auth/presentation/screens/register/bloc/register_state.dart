part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.ready({
    @Default(RegisterStep.inputInn) RegisterStep step,
    @Default(true) bool showPass,
    @Default(true) bool showRepeatedPass,
    @Default(false) bool isLoading,
    AddressRequest? address,
    int? addressId,
    String? requestId,
    String? error,
  }) = _Ready;
}
