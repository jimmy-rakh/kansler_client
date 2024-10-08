import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/cart/presentation/screen/cart_bloc/cart_bloc.dart';

import '../../../../app/router.dart';
import '../../../../core/constants/kaze_icons.dart';
import '../../../auth/presentation/screens/auth/bloc/auth_bloc.dart';
import '../../../cart/presentation/screen/preorders_bloc/preorders_bloc.dart';
import '../../domain/entities/navbar_item.entity.dart';

part 'navbar_state.dart';
part 'navbar_event.dart';
part 'navbar_bloc.freezed.dart';

@injectable
class NavbarBloc extends Bloc<NavbarEvent, NavbarState> {
  NavbarBloc() : super(const NavbarState.initial()) {
    on<_Init>(_onInit);
    on<_ChangeIndex>(_onChangeIndex);
  }

  List<NavBarItemEntity> navbarItems = [
    NavBarItemEntity(
      label: "Главная",
      icon: KazeIcons.homeOutline,
      activeIcon: KazeIcons.homeBold,
    ),
    NavBarItemEntity(
      label: "Категории",
      icon: KazeIcons.categoryOutline,
      activeIcon: KazeIcons.categoryBold,
    ),
    NavBarItemEntity(
      label: "Корзина",
      icon: KazeIcons.cartOutline,
      activeIcon: KazeIcons.cartBold,
    ),
    NavBarItemEntity(
      label: "Заказы",
      icon: KazeIcons.bagOutline,
      activeIcon: KazeIcons.bagBold,
    ),
    NavBarItemEntity(
      label: "Профиль",
      icon: KazeIcons.profileOutline,
      activeIcon: KazeIcons.profileBold,
    )
  ];

  void _onInit(_Init event, Emitter<NavbarState> emit) {
    emit(NavbarState.ready(event.tabsRouter));
  }

  void _onChangeIndex(_ChangeIndex event, Emitter<NavbarState> emit) async {
    final currentState = state as _Ready;

    final authState =
        BlocProvider.of<AuthBloc>(router.navigatorKey.currentContext!);

    bool authenticated = authState.state == const AuthState.authenticated();

    if(event.value==2) {
      BlocProvider.of<CartBloc>(router.navigatorKey.currentContext!).add(const CartEvent.retry());
      BlocProvider.of<PreordersBloc>(router.navigatorKey.currentContext!).add(const PreordersEvent.retry());
    }


    if ([ 3].contains(event.value) && !authenticated) {
      final res = await router.push(const AuthRoute());
      if (res == null) return;
    }

    currentState.tabsRouter.setActiveIndex(event.value);
  }
}
