import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kansler/core/extensions/context.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    super.key,
    this.color,
    this.height,
    this.width,
    this.label,
    this.onTap,
    this.borderColor,
    this.shape = BoxShape.rectangle,
    this.padding,
    this.radius,
    this.bgColor,
    this.showBgLayer = false,
    this.boxHeight,
    this.boxWidth,
    this.borderWidth,
    this.labelDirection = Axis.vertical,
    this.emptySpace = 14,
    this.labelStyle,
    this.visible = true,
    this.labelLocation = LabelLocation.end,
    this.labelInside = false,
    this.alignment,
    this.isNetwork = false,
    this.fit = BoxFit.contain,
  });

  final dynamic icon;
  final Color? color, borderColor, bgColor;
  final double? height, width, boxHeight, boxWidth, borderWidth;
  final String? label;
  final void Function()? onTap;
  final BoxShape shape;
  final EdgeInsets? padding;
  final bool showBgLayer;
  final Axis labelDirection;
  final TextStyle? labelStyle;
  final bool visible;
  final dynamic radius;
  final LabelLocation labelLocation;
  final bool labelInside;
  final Alignment? alignment;
  final bool isNetwork;
  final double emptySpace;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: labelDirection == Axis.vertical
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (label != null &&
                        labelLocation == LabelLocation.start) ...[
                      Text(label!, style: labelStyle ?? context.titleSmall),
                      SizedBox(height: emptySpace)
                    ],
                    Container(
                      height: boxHeight,
                      width: boxWidth,
                      padding: padding,
                      alignment: alignment,
                      decoration: BoxDecoration(
                          color: bgColor,
                          border: borderColor == null
                              ? null
                              : Border.all(
                                  width: borderWidth ?? 1, color: borderColor!),
                          shape: shape,
                          borderRadius:
                              shape == BoxShape.rectangle && radius != null
                                  ? radius is BorderRadius
                                      ? radius
                                      : BorderRadius.circular(
                                          double.parse(radius!.toString()))
                                  : null),
                      child: icon is IconData
                          ? Icon(
                              icon,
                              size: height,
                              color: color,
                            )
                          : isNetwork
                              ? SvgPicture.network(
                                  icon,
                                  height: height,
                                  width: width,
                                  fit: fit,
                                  colorFilter: color == null
                                      ? null
                                      : ColorFilter.mode(
                                          color!, BlendMode.srcIn),
                                )
                              : SvgPicture.asset(
                                  icon,
                                  height: height,
                                  width: width,
                                  colorFilter: color == null
                                      ? null
                                      : ColorFilter.mode(
                                          color!, BlendMode.srcIn),
                                ),
                    ),
                    if (label != null &&
                        labelLocation == LabelLocation.end) ...[
                      SizedBox(height: emptySpace),
                      Text(
                        label!,
                        style: labelStyle ?? context.titleSmall,
                      )
                    ]
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                      if (label != null &&
                          labelLocation == LabelLocation.start &&
                          labelInside == false) ...[
                        Text(label!, style: labelStyle ?? context.titleSmall),
                        SizedBox(width: emptySpace)
                      ],
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          if (showBgLayer && bgColor != null)
                            Positioned(
                                left: -4,
                                child: Container(
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                      color: bgColor!.withOpacity(.4),
                                      shape: BoxShape.circle),
                                )),
                          Container(
                            height: boxHeight,
                            width: boxWidth,
                            padding: padding,
                            alignment: alignment,
                            decoration: BoxDecoration(
                                color: bgColor,
                                border: borderColor == null
                                    ? null
                                    : Border.all(
                                        width: borderWidth ?? 1,
                                        color: borderColor!),
                                shape: shape,
                                borderRadius: shape == BoxShape.rectangle &&
                                        radius != null
                                    ? radius is BorderRadius
                                        ? radius
                                        : BorderRadius.circular(radius!)
                                    : null),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (label != null &&
                                    labelLocation == LabelLocation.start &&
                                    labelInside) ...[
                                  Text(label!,
                                      style: labelStyle ?? context.titleSmall),
                                  SizedBox(width: emptySpace)
                                ],
                                isNetwork
                                    ? SvgPicture.network(
                                        icon,
                                        height: height,
                                        width: width,
                                        colorFilter: color == null
                                            ? null
                                            : ColorFilter.mode(
                                                color!, BlendMode.srcIn),
                                      )
                                    : SvgPicture.asset(
                                        icon,
                                        height: height,
                                        width: width,
                                        colorFilter: color == null
                                            ? null
                                            : ColorFilter.mode(
                                                color!, BlendMode.srcIn),
                                      ),
                                if (label != null &&
                                    labelLocation == LabelLocation.end &&
                                    labelInside) ...[
                                  SizedBox(width: emptySpace),
                                  Text(label!,
                                      style: labelStyle ?? context.titleSmall)
                                ]
                              ],
                            ),
                          ),
                        ],
                      ),
                      if (label != null &&
                          labelLocation == LabelLocation.end &&
                          labelInside == false) ...[
                        SizedBox(width: emptySpace),
                        Text(label!, style: labelStyle ?? context.titleSmall)
                      ]
                    ])),
    );
  }
}

enum LabelLocation { start, end }
