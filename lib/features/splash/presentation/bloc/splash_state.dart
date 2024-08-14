part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.loadInProgress() = _LoadInProgress;
  const factory SplashState.ready() = _Ready;
}
