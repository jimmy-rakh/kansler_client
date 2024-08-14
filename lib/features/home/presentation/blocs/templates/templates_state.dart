part of 'templates_bloc.dart';

@freezed
class TemplatesState with _$TemplatesState {
  const factory TemplatesState.loadInProgress() = _LoadInProgress;
  const factory TemplatesState.success() = _Success;
  const factory TemplatesState.failure() = _Failure;
}
