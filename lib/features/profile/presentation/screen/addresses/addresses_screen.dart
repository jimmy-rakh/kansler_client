import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../../app/di.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../../../../core/widgets/appbar.dart';
import 'addresses/addresses_bloc.dart';

@RoutePage()
class AddressesScreen extends HookWidget implements AutoRouteWrapper {
  const AddressesScreen({
    super.key,
    required this.companyId,
  });

  final int companyId;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddressesBloc>();
    final state = useBlocBuilder(bloc);
    return Scaffold(
      appBar: const AppBarWidget(
          preferredSize: Size.fromHeight(60), child: Text('Адреса')),
      body: state.when(
          ready: (entities) => ListView.separated(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 60),
                itemBuilder: (context, index) => AppCard(
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(16),
                  borderRadius: 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(entities[index].name!),
                      verticalSpace8,
                      Text('Регион:\n${entities[index].region}'),
                      verticalSpace8,
                      Text(
                          'Телефон для связи:\n${entities[index].phoneNumbers}'),
                      verticalSpace8,
                      Text(
                          'Организация:\n${entities[index].organization?.name}'),
                      verticalSpace12,
                      AppCard(
                        fillColor: context.background,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        width: double.maxFinite,
                        borderRadius: 8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Менеджер:\n${entities[index].manager?.name ?? ''}'),
                            Text(
                                'Телефон для связи:\n${entities[index].manager?.phone ?? ''}'),
                          ],
                        ),
                      ),
                      verticalSpace8,
                      AppCard(
                        fillColor: context.background,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        width: double.maxFinite,
                        borderRadius: 8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Агент:\n${entities[index].agent?.name ?? ''}'),
                            Text(
                              'Телефон для связи:\n${entities[index].agent?.phone ?? ''}',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => verticalSpace12,
                itemCount: entities.length,
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
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) =>
            getIt<AddressesBloc>()..add(AddressesEvent.fetch(companyId)),
        child: this,
      );
}
