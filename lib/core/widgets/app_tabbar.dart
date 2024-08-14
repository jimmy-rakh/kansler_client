import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/tab_indicator.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({
    super.key,
    required this.tabController,
    required this.tabList,
    this.onTabTapped,
    this.indicatorColor,
    this.tabAligment,
    this.notifyCount,
    this.mainRadius = 0,
    this.childRadius = 0,
    this.borderColor,
    this.indicatorPadding = const EdgeInsets.all(4),
    this.labelPadding = const EdgeInsets.symmetric(vertical: 16),
    this.fillColor,
    this.isScrollable = false,
    this.alignment = Alignment.center,
  });

  final TabController tabController;
  final List<String> tabList;
  final TabAlignment? tabAligment;
  final Color? indicatorColor;
  final Function(int index)? onTabTapped;
  final List<int>? notifyCount;
  final double mainRadius;
  final double childRadius;
  final Color? borderColor;
  final EdgeInsets indicatorPadding;
  final EdgeInsets labelPadding;
  final Color? fillColor;
  final bool isScrollable;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(mainRadius)),
        border: borderColor == null
            ? null
            : Border.all(color: borderColor!, width: 1.5),
        color: fillColor,
      ),
      child: TabBar(
          tabAlignment: tabAligment,
          splashFactory: NoSplash.splashFactory,
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return states.contains(MaterialState.focused)
                  ? null
                  : Colors.transparent;
            },
          ),
          enableFeedback: false,
          indicatorPadding: indicatorPadding,
          controller: tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: CustomTabIndicator(
            radius: BorderRadius.all(Radius.circular(mainRadius)),
            color: context.cardColor,
          ),
          labelPadding: labelPadding,
          // labelStyle: context.textTheme.bodyMedium,
          dividerColor: Colors.transparent,
          unselectedLabelColor: context.titleSmall?.color,
          labelColor: context.colorScheme.onBackground,
          onTap: onTabTapped,
          isScrollable: isScrollable,
          tabs: [
            for (int i = 0; i < tabList.length; i++)
              Align(
                alignment: alignment,
                child: Text(
                  tabList[i],
                ),
              ),
          ]),
    );
  }
}
