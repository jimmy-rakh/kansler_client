part of 'recs_bloc.dart';

@freezed
class RecsState with _$RecsState {
  const factory RecsState.loadInProgress() = _LoadInProgress;
  const factory RecsState.success() = _Success;
  const factory RecsState.failure() = _Failure;
}
