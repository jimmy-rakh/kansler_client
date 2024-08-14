part of 'navbar_bloc.dart';

@freezed
class NavbarState with _$NavbarState {
  const factory NavbarState.initial() = _Initial;
  const factory NavbarState.ready(TabsRouter tabsRouter) = _Ready;
}
