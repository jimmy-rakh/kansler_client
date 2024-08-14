part of 'last_viewed_bloc.dart';

@freezed
class LastViewedState with _$LastViewedState {
  const factory LastViewedState.loadInProgress() = _LoadInProgress;
  const factory LastViewedState.success() = _Success;
  const factory LastViewedState.failure() = _Failure;
}
