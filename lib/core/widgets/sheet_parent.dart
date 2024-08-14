import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';

import '../constants/spaces.dart';

class SheetParent extends StatelessWidget {
  const SheetParent({
    super.key,
    required this.child,
    this.padding = 0,
    this.isAcitveShadow = false,
    this.radius = 0,
    this.showDragContainer = false,
    this.backgroundColor,
    this.extraWidget,
  }) : assert(padding is double || padding is int || padding is EdgeInsets);

  final Widget child;
  final Widget? extraWidget;
  final bool isAcitveShadow;
  final dynamic padding;
  final double radius;
  final bool showDragContainer;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(radius)),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (extraWidget != null) ...[
              extraWidget!,
              verticalSpace20,
            ],
            Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: backgroundColor ?? context.cardColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(radius)),
                    boxShadow: isAcitveShadow
                        ? [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: const Offset(3, 0),
                            ),
                          ]
                        : null),
                child: Column(
                  children: [
                    if (showDragContainer)
                      Container(
                          height: 4,
                          width: 42,
                          decoration: BoxDecoration(
                              color: context.colorScheme.outlineVariant,
                              borderRadius: BorderRadius.circular(12)),
                          margin: const EdgeInsets.only(bottom: 10, top: 10)),
                    Padding(
                      padding: padding is double || padding is int
                          ? EdgeInsets.fromLTRB(padding.toDouble(),
                              padding.toDouble(), padding.toDouble(), 32)
                          : padding,
                      child: child,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
