part of 'navbar_bloc.dart';

@freezed
class NavbarEvent with _$NavbarEvent {
  const factory NavbarEvent.init(TabsRouter tabsRouter) = _Init;
  const factory NavbarEvent.changeIndex(int value) = _ChangeIndex;
}
