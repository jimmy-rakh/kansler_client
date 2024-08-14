import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';

import '../constants/spaces.dart';

class AppCard extends StatelessWidget {
  const AppCard(
      {super.key,
      this.padding,
      this.child,
      this.borderColor,
      this.borderRadius,
      this.showShadow = true,
      this.height,
      this.width,
      this.alignment,
      this.fillColor,
      this.items,
      this.margin,
      this.onTap,
      this.borderWidth,
      this.label,
      this.labelStyle,
      this.subTitle,
      this.dividerColor,
      this.showDivider = false,
      this.shape = BoxShape.rectangle,
      this.gradient,
      this.itemsAlignment = CrossAxisAlignment.start});

  final double? height, width, borderWidth;
  final EdgeInsets? padding, margin;
  final Color? borderColor, fillColor;
  final bool showShadow;
  final Alignment? alignment;
  final Widget? child;
  final List<Widget>? items;
  final dynamic borderRadius;
  final void Function()? onTap;
  final String? label;
  final TextStyle? labelStyle;
  final Widget? subTitle;
  final Color? dividerColor;
  final bool showDivider;
  final BoxShape shape;
  final Gradient? gradient;
  final CrossAxisAlignment itemsAlignment;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Column(
        crossAxisAlignment: itemsAlignment,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (label != null) ...[
            Text(label!, style: labelStyle),
            verticalSpace8
          ],
          AnimatedContainer(
            duration: Durations.medium2,
            margin: margin,
            padding: padding,
            height: height,
            width: width,
            alignment: alignment,
            decoration: BoxDecoration(
                shape: shape,
                borderRadius: borderRadius is double || borderRadius is int
                    ? BorderRadius.circular(
                        double.parse(borderRadius.toString()))
                    : borderRadius,
                color: gradient != null ? null : fillColor ?? context.cardColor,
                boxShadow: [
                  if (showShadow)
                    const BoxShadow(
                      color: Color(0x07000000),
                      blurRadius: 28,
                      offset: Offset(2, 6),
                      spreadRadius: 0,
                    )
                ],
                gradient: gradient,
                border: borderColor != null
                    ? Border.all(width: borderWidth ?? 1, color: borderColor!)
                    : null),
            child: items == null
                ? child
                : Column(
                    crossAxisAlignment: itemsAlignment,
                    children: List.generate(items?.length ?? 0, (index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          items![index],
                          if (index != items!.length - 1 && showDivider)
                            Divider(height: 0, color: dividerColor)
                        ],
                      );
                    }),
                  ),
          ),
          if (subTitle != null) ...[verticalSpace8, subTitle!]
        ],
      ),
    );
  }
}
