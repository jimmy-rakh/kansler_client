import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/auth/domain/domain.dart';
import '../../../../../../app/router.dart';
import '../../../../../../core/enums/auth_status.dart';
import '../../../../../../core/usecase/usecase.dart';
import '../../../../../cart/presentation/screen/cart_bloc/cart_bloc.dart';
import '../../../../../home/presentation/blocs/hit/hit_bloc.dart';
import '../../../../../home/presentation/blocs/latest/latest_bloc.dart';
import '../../../../../home/presentation/blocs/popular/popular_bloc.dart';
import '../../../../../main/presentation/bloc/navbar_bloc.dart';
import '../../../../../orders/presentation/screen/bloc/orders_bloc.dart';
import '../../../../../profile/presentation/screen/profile/profile_bloc.dart';
import '../../../../domain/usecases/get_user_status.usecase.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GetAuthStatusUseCase _getAuthStatusUseCase;
  final AuthRepository _authRepository;

  final navbarBloc =
      BlocProvider.of<NavbarBloc>(router.navigatorKey.currentContext!);

  AuthBloc(this._getAuthStatusUseCase, this._authRepository)
      : super(const AuthState.unknown()) {
    on<_CheckStatus>(_onCheckStatus);
    on<_LogOut>(_onLogOut);

    add(const AuthEvent.checkStatus());
  }

  void _onCheckStatus(_CheckStatus event, Emitter<AuthState> emit) async {
    final status = _getAuthStatusUseCase.call(NoParams());
    final popularBloc =
        BlocProvider.of<PopularBloc>(router.navigatorKey.currentContext!);
    final hitBloc =
        BlocProvider.of<HitBloc>(router.navigatorKey.currentContext!);
    final latestBloc =
        BlocProvider.of<LatestBloc>(router.navigatorKey.currentContext!);
    final profileBloc =
        BlocProvider.of<ProfileBloc>(router.navigatorKey.currentContext!);
    final cartBloc =
        BlocProvider.of<CartBloc>(router.navigatorKey.currentContext!);
    final ordersBloc =
        BlocProvider.of<OrdersBloc>(router.navigatorKey.currentContext!);

    switch (status) {
      case AuthStatus.authenticated:
        emit(const AuthState.authenticated());
        await Future.delayed(const Duration(seconds: 1));
        popularBloc.add(const PopularEvent.fetch());
        hitBloc.add(const HitEvent.fetch());
        latestBloc.add(const LatestEvent.fetch());
        profileBloc.add(const ProfileEvent.getCompany());
        cartBloc.add(const CartEvent.retry());
        ordersBloc.add(const OrdersEvent.fetchOrders());
        break;
      case AuthStatus.guest:
        emit(const AuthState.guest());
        break;
      case AuthStatus.unknown:
        emit(const AuthState.unknown());
      default:
    }
  }

  void _onLogOut(_LogOut event, Emitter<AuthState> emit) async {
    final popularBloc =
        BlocProvider.of<PopularBloc>(router.navigatorKey.currentContext!);
    final latestBloc =
        BlocProvider.of<LatestBloc>(router.navigatorKey.currentContext!);
    final profileBloc =
        BlocProvider.of<ProfileBloc>(router.navigatorKey.currentContext!);
    final ordersBloc =
        BlocProvider.of<OrdersBloc>(router.navigatorKey.currentContext!);

    await _authRepository.logout();
    add(const AuthEvent.checkStatus());
    ordersBloc.add(const OrdersEvent.fetchOrders());
    navbarBloc.add(const NavbarEvent.changeIndex(0));
    popularBloc.add(const PopularEvent.fetch());
    latestBloc.add(const LatestEvent.fetch());
    profileBloc.add(const ProfileEvent.setInit());
  }
}
