import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../app/di.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../cart/presentation/screen/bloc/cart_bloc.dart';
import '../../../profile/presentation/screen/profile/profile_bloc.dart';
import 'bloc/checkout_bloc.dart';
import 'widgets/products.dart';

@RoutePage()
class CheckoutScreen extends HookWidget implements AutoRouteWrapper {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CheckoutBloc>();
    final cartBloc = context.read<CartBloc>();
    final state = useBlocBuilder(bloc);

    final companyBloc = context.read<ProfileBloc>();
    final companyState = useBlocBuilder(companyBloc);

    useEffect(() {
      if (companyState.whenOrNull(
            ready: (company) => !company.children!,
          ) ??
          false) {
        bloc.add(CheckoutEvent.chooseCompany(
            company: companyState.whenOrNull(ready: (company) => company)));
      }

      return;
    }, const []);

    return Scaffold(
      appBar: const AppBarWidget(
        preferredSize: Size.fromHeight(60),
        centerTitle: true,
        child: Text('Оформление'),
      ),
      body: ListView(
        controller: cartBloc.checkoutController,
        padding: const EdgeInsets.fromLTRB(16, 25, 16, 64),
        children: [
          AppCard(
            width: double.maxFinite,
            borderRadius: 0,
            padding: const EdgeInsets.symmetric(vertical: 12),
            alignment: Alignment.center,
            onTap: () => companyState.whenOrNull(
              ready: (company) => company.children ?? false
                  ? bloc.add(const CheckoutEvent.chooseCompany())
                  : null,
            ),
            child: state.whenOrNull(
                  ready: (chosedCompanies) => Column(
                    children: [
                      Text(
                        'Данные клиента',
                        style: context.titleSmall,
                      ),
                      Text(chosedCompanies.fullName ?? chosedCompanies.name!),
                      verticalSpace5,
                      if(chosedCompanies.inn !=null)
                      Text(chosedCompanies.inn!)
                    ],
                  ),
                ) ??
                const Text('Выберите компанию'),
          ),
          const CheckoutProducts()
        ],
      ),
      bottomNavigationBar: AppCard(
        fillColor: Colors.transparent,
        height: 60,
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: AppButton(
          padding: const EdgeInsets.symmetric(vertical: 10),
          fillColor: context.primary,
          text: 'Оформить',
          textStyle: const TextStyle(fontSize: 19),
          textColor: Colors.white,
          borderRadius: 0,
          isActive: true,
          onPressed: () => bloc.add(const CheckoutEvent.checkOut()),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<CheckoutBloc>(),
        child: this,
      );
}
