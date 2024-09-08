import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../../app/router.dart';
import '../../../../../core/constants/kaze_icons.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../../../../core/widgets/appbar.dart';
import '../../../domain/entities/company.entity.dart';
import '../profile/profile_bloc.dart';
import 'companies/companies_bloc.dart';

@RoutePage()
class CompaniesScreen extends HookWidget {
  const CompaniesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CompaniesBloc>();
    final profileBloc = context.read<ProfileBloc>();
    final profileState = useBlocBuilder(profileBloc);
    final state = useBlocBuilder(bloc);

    useEffect(() {
      bloc.add(const CompaniesEvent.fetchCompanies());

      return null;
    }, [bloc]);

    return Scaffold(
      appBar: const AppBarWidget(
          preferredSize: Size.fromHeight(60), child: Text('Мои компании')),
      body: state.whenOrNull(
            ready: (entities) => ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    if (index == 0) ...[
                      CompanyCard(
                          company: profileState.whenOrNull(
                        ready: (current) => current.company!.toEntity,
                      )),
                      verticalSpace16,
                    ],
                    CompanyCard(company: entities[index]),
                  ],
                );
              },
              separatorBuilder: (context, index) => verticalSpace12,
              itemCount: entities.length,
            ),
          ) ??
          const Center(
            child: CupertinoActivityIndicator(),
          ),
    );
  }
}

class CompanyCard extends StatelessWidget {
  const CompanyCard({
    super.key,
    this.company,
  });

  final CompanyEntity? company;

  @override
  Widget build(BuildContext context) {
    if (company == null) return const SizedBox.shrink();

    return AppCard(
      width: double.maxFinite,
      padding: const EdgeInsets.all(16),
      borderRadius: 12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Полное наименование:\n${company!.fullName ?? ""}"),
          verticalSpace12,
          Text("Наименование:\n${company!.name ?? ""}"),
          verticalSpace12,
          Text('Инн/ПИНФЛ:\n${company!.inn}'),
          verticalSpace12,
          Text('Телефон для связи:\n${company!.phoneNumbers}'),
          verticalSpace12,
          Text('Тип компании:\n${company!.companyType}'),
          verticalSpace12,
          AppCard(
            fillColor: context.background,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            width: double.maxFinite,
            borderRadius: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Менеджер:\n${company!.manager?.name ?? ''}'),
                Text('Телефон для связи:\n${company!.manager?.phone ?? ''}'),
              ],
            ),
          ),
          verticalSpace12,
          AppCard(
            fillColor: context.background,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            width: double.maxFinite,
            borderRadius: 8,
            onTap: () => router.push(LimitsRoute(id: company!.id)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Лимит / Бонус'),
                Transform.rotate(
                    angle: 3.2, child: const Icon(KazeIcons.arrowLeftOutline))
              ],
            ),
          ),
          verticalSpace12,
          AppCard(
            fillColor: context.background,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            width: double.maxFinite,
            borderRadius: 8,
            onTap: () => router.push(DebtRoute(id: company!.id)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Долг / История оплат'),
                Transform.rotate(
                    angle: 3.2, child: const Icon(KazeIcons.arrowLeftOutline))
              ],
            ),
          ),
          verticalSpace12,
          AppCard(
            fillColor: context.background,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            width: double.maxFinite,
            borderRadius: 8,
            onTap: () => router.push(AddressesRoute(companyId: company!.id)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Адреса (Торговые точки)'),
                Transform.rotate(
                    angle: 3.2, child: const Icon(KazeIcons.arrowLeftOutline))
              ],
            ),
          )
        ],
      ),
    );
  }
}
