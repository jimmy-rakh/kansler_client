import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../../app/di.dart';
import '../../../../../app/router.dart';
import '../../../../../core/constants/kaze_icons.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/app_card.dart';
import 'addresses/addresses_bloc.dart';

@RoutePage()
class AddressesScreen extends HookWidget implements AutoRouteWrapper {
  const AddressesScreen({
    super.key,
    @PathParam() required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddressesBloc>();
    final state = useBlocBuilder(bloc);
    return SelectionArea(
      child: Container(
        color: context.background,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900,maxHeight: 900),
            child: Scaffold(
              appBar:  AppBar(
                  centerTitle: false,
                  leading: Padding(
                    padding: const EdgeInsets.all(8),
                    child: IconButton.filled(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(context.cardColor),
                      ),
                      onPressed: router.popForced,
                      icon: const Icon(KazeIcons.arrowLeftOutline),
                    ),
                  ),
                  leadingWidth: 58, title: const Text('Адреса')),
              body: SizedBox(
                width: context.isSmall ? context.width : context.width * .4,
                child: state.when(
                    ready: (entities) => ListView.separated(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 60),
                          itemBuilder: (context, index) => AppCard(
                            width: double.maxFinite,
                            padding: const EdgeInsets.all(16),
                            borderRadius: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(entities.name!),
                                verticalSpace8,
                                Text('Регион:\n${entities.region ?? ""}'),
                                verticalSpace8,
                                Text(
                                    'Телефон для связи:\n${entities.phoneNumber ?? ""}'),
                                verticalSpace8,
                                Text(
                                    'Организация:\n${entities.organization?.name ?? ""}'),
                                verticalSpace12,
                                AppCard(
                                  fillColor: context.background,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 10),
                                  width: double.maxFinite,
                                  borderRadius: 4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Менеджер:\n${entities.manager?.name ?? ''}'),
                                      Text(
                                          'Телефон для связи:\n${entities.manager?.phone ?? ''}'),
                                    ],
                                  ),
                                ),
                                verticalSpace8,
                                AppCard(
                                  fillColor: context.background,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 10),
                                  width: double.maxFinite,
                                  borderRadius: 4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Агент:\n${entities.agent?.name ?? ''}'),
                                      Text(
                                        'Телефон для связи:\n${entities.agent?.phone ?? ''}',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          separatorBuilder: (context, index) => verticalSpace12,
                          itemCount: 1,
                        ),
                    loadInProgress: () => const Center(
                          child: CupertinoActivityIndicator(),
                        ),
                    notFound: () => Center(
                          child: Text(
                            'Адреса не найдены',
                            style: context.headlineSmall,
                          ),
                        )),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) =>
            getIt<AddressesBloc>()..add(AddressesEvent.fetch(id)),
        child: this,
      );
}
