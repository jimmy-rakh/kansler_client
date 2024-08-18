part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login() = _Login;
  const factory LoginEvent.showPassToggle() = _ShowPassToggle;
  const factory LoginEvent.init(TabController tabController) = _Init;
  const factory LoginEvent.changeTabIndex(int index) = _ChangeTabIndex;
}
