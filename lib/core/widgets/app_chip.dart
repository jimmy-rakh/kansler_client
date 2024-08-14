import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';

import '../constants/spaces.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    super.key,
    this.value = true,
    this.label,
    this.icon,
    this.activeColor,
    this.disabledColor,
    this.activeLabelColor,
    this.disableLabelColor,
    this.onTap,
    this.style,
    this.padding,
    this.borderColor,
    this.shape = BoxShape.rectangle,
    this.iconBorderColor,
    this.iconPadding,
    this.iconSize,
    this.disableIconBorderColor,
    this.isActive = true,
    this.radius,
    this.trailing,
    this.size,
    this.gradient,
    this.iconColor,
  });

  final bool value;
  final String? label;
  final dynamic icon;
  final TextStyle? style;
  final Color? activeColor,
      disabledColor,
      activeLabelColor,
      disableLabelColor,
      borderColor,
      iconBorderColor,
      disableIconBorderColor,
      iconColor;
  final EdgeInsets? padding, iconPadding;
  final void Function()? onTap;
  final BoxShape shape;
  final bool isActive;
  final double? iconSize, radius;
  final dynamic trailing;
  final Size? size;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: isActive ? onTap : null,
      child: AnimatedContainer(
        duration: Durations.short4,
        width: size?.width,
        height: size?.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 16),
          border: borderColor != null
              ? Border.all(width: 1, color: borderColor!)
              : null,
          color: gradient != null
              ? null
              : value
                  ? activeColor ?? context.primary
                  : disabledColor,
          gradient: gradient,
        ),
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (label != null && icon != null) horizontalSpace5,
            if (label != null)
              Text(
                label!,
                style: (style ?? context.labelLarge)?.copyWith(
                  color: value
                      ? activeLabelColor ?? Colors.white
                      : disableLabelColor ?? context.colorScheme.onBackground,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
