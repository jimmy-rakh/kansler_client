import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/home/presentation/screen/widgets/appbar.dart';
import 'package:kansler/features/home/presentation/screen/widgets/banners.dart';
import 'package:kansler/features/home/presentation/screen/widgets/discounts.dart';
import 'package:kansler/features/home/presentation/screen/widgets/footer.dart';
import 'package:kansler/features/home/presentation/screen/widgets/hits.dart';
import 'package:kansler/features/home/presentation/screen/widgets/latest.dart';
import 'package:kansler/features/home/presentation/screen/widgets/popular.dart';
import 'package:kansler/features/home/presentation/screen/widgets/step.dart';
import '../../../../core/constants/spaces.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/keyboard_escape.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardEscape(
      child: SelectionArea(
        child: Scaffold(
            appBar: context.isSmall
                ? const AppBarWidget(
                    preferredSize: Size.fromHeight(60),
                    showLeading: false,
                    child: HomeAppBar(),
                  )
                : const PreferredSize(
                    preferredSize: Size.zero, child: SizedBox()),
            body: ListView(
              children: [
                    const Center(
                        child: BannerWidget()),
                    const Center(child: StepCard()),
                    Center(
                        child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 1300),
                            child: const HitsWidget())),
                    Center(
                        child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 1300),
                            child: const PopularWidget())),
                    Center(
                        child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 1300),
                            child: const LatestWidget())),
                    Center(
                        child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 1300),
                            child: const DiscountsWidget())),
                    verticalSpace80,
                     Center(
                            child: ConstrainedBox(
                                constraints: const BoxConstraints(maxWidth: 1300),
                                child: const Footer())),
              ],
            )),
      ),
    );
  }
}
