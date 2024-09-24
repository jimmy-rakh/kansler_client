

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/auth/presentation/screens/register/widgets/actions.dart';
import 'package:kansler/features/auth/presentation/screens/register/widgets/form.dart';
import 'package:kansler/features/auth/presentation/screens/register/widgets/header.dart';

import '../../../../../app/di.dart';
import '../../../../../app/router.dart';
import '../../../../../core/constants/kaze_icons.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/appbar.dart';
import '../../../../../core/widgets/keyboard_escape.dart';
import '../../../data/models/register/address_request.dart';
import 'bloc/register_bloc.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget implements AutoRouteWrapper {
  const RegisterScreen({
    super.key,
    required this.requestId,
    required this.phone,
    this.inn,
    this.address,
    this.addressId,
  });

  final String requestId;
  final String phone;
  final String? inn;
  final AddressRequest? address;
  final int? addressId;

  @override
  Widget build(BuildContext context) {
    return KeyboardEscape(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600,maxHeight: 900),
          child: Scaffold(
            appBar: AppBarWidget(
              showLeading: true,
              leading: Padding(
                padding: const EdgeInsets.all(8),
                child: IconButton.filled(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(context.cardColor),
                  ),
                  onPressed: router.popForced,
                  icon: const Icon(KazeIcons.closeCircleOutline),
                ),
              ),
              leadingWidth: 58,
              preferredSize: const Size.fromHeight(60), child: const SizedBox(),
            ),
            body: Center(
              child: SizedBox(
                width: context.isSmall ? context.width * .9 : 600,
                child: ListView(
                  children:  [
                    verticalSpace35,
                    SizedBox(
                        width: context.isSmall ? context.width * .7 : context.width * .2,
                        child: const RegisterHeaderWidget()),
                    verticalSpace12,
                    const RegisterFormWidget(),
                    verticalSpace12,
                    const RegisterActionWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<RegisterBloc>()
          ..add(RegisterEvent.init(
            requestId,
            phone,
            inn,
            address,
            addressId,
          )),
        child: this,
      );
}
