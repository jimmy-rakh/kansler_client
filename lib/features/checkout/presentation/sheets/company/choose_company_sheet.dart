import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../../../profile/presentation/screen/companies/companies/companies_bloc.dart';
import '../../../../profile/presentation/screen/profile/profile_bloc.dart';


class ChooseCompanySheet extends HookWidget {
  const ChooseCompanySheet({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = useBloc<CompaniesBloc>(closeOnDispose: false);
    final profileBloc = context.read<ProfileBloc>();
    final state = useBlocBuilder(bloc);
    final profileState = useBlocBuilder(profileBloc);

    useEffect(() {
      bloc.add(const CompaniesEvent.fetchCompanies());

      return null;
    }, [bloc]);

    return state.whenOrNull(
          ready: (entities) => SizedBox(
            height: context.height * .9,
            child: DraggableScrollableSheet(
              expand: true,
              initialChildSize: .8,
              minChildSize: .4,
              maxChildSize: 1,
              builder: (context, scrollController) => ColoredBox(
                color: context.background,
                child: ListView.separated(
                  controller: scrollController,
                  shrinkWrap: true,
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        if (index == 0) ...[
                          profileState.whenOrNull(
                                ready: (company) => AppCard(
                                  width: double.maxFinite,
                                  padding: const EdgeInsets.all(16),
                                  borderRadius: 12,
                                  fillColor: context.cardColor,
                                  onTap: () => Navigator.pop(context, company),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "Полное наименование:\n${company.fullName ?? ""}"),
                                      verticalSpace12,
                                      Text('Инн/ПИНФЛ:\n${company.inn}'),
                                      verticalSpace12,
                                      Text('Регион:\n${company.region}'),
                                      verticalSpace12,
                                    ],
                                  ),
                                ),
                              ) ??
                              const SizedBox.shrink(),
                          verticalSpace12,
                        ],
                        AppCard(
                          width: double.maxFinite,
                          padding: const EdgeInsets.all(16),
                          borderRadius: 12,
                          fillColor: context.cardColor,
                          onTap: () => Navigator.pop(context, entities[index]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Полное наименование:\n${entities[index].fullName ?? ""}"),
                              verticalSpace12,
                              Text('Инн/ПИНФЛ:\n${entities[index].inn}'),
                              verticalSpace12,
                              Text('Регион:\n${entities[index].region}'),
                              verticalSpace12,
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => verticalSpace12,
                  itemCount: entities.length,
                ),
              ),
            ),
          ),
        ) ??
        const Center(
          child: CupertinoActivityIndicator(),
        );
  }
}
