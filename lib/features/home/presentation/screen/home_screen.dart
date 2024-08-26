import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kansler/features/home/presentation/screen/widgets/appbar.dart';
import 'package:kansler/features/home/presentation/screen/widgets/discounts.dart';
import 'package:kansler/features/home/presentation/screen/widgets/hits.dart';
import 'package:kansler/features/home/presentation/screen/widgets/latest.dart';
import 'package:kansler/features/home/presentation/screen/widgets/popular.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/keyboard_escape.dart';


@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardEscape(
      child: Scaffold(
          appBar: const AppBarWidget(
            preferredSize: Size.fromHeight(60),
            showLeading: false,
            child: HomeAppBar(),
          ),
          body: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(const [
                  DiscountsWidget(),
                  HitsWidget(),
                  PopularWidget(),
                  LatestWidget(),
                  verticalSpace120,
                ]),
              ),
            ],
          )),
    );
  }
}
