part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({@Default(ThemeMode.system) ThemeMode mode}) = _ThemeState;
}
