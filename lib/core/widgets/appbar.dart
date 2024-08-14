import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  const AppBarWidget( {
    super.key,
    required super.preferredSize,
    required super.child,
    this.showLeading = true,
    this.bottomSize,
    this.bottomChild,
    this.actions = const [],
    this.centerTitle = false,
    this.leadingWidth,
  });

  final bool showLeading;
  final Size? bottomSize;
  final Widget? bottomChild;
  final List<Widget> actions;
  final bool centerTitle;
  final double? leadingWidth;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      title: child,
      leading: showLeading ? const AutoLeadingButton() : null,
      leadingWidth: leadingWidth ?? 46,
      automaticallyImplyLeading: false,
      actions: actions,
      bottom: bottomChild == null
          ? null
          : PreferredSize(
              preferredSize: bottomSize!,
              child: bottomChild!,
            ),
    );
  }
}
