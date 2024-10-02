import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/spaces.dart';
import 'app_icon.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    super.key,
    this.padding,
    this.borderRadius,
    this.borderColor,
    this.fillColor,
    this.icon,
    this.height,
    this.width,
    required this.text,
    this.textStyle = const TextStyle(),
    required this.onPressed,
    this.isActive = true,
    this.textColor,
    this.shape,
    this.margin,
    this.isLoading = false,
    this.loadingColor,
    this.image,
    this.iconHeight,
    this.animate = false,
    this.visible = true,
    this.childAlignment = MainAxisAlignment.center,
    this.size = MainAxisSize.max,
  });

  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final dynamic borderRadius;
  final Color? borderColor;
  final Color? fillColor;
  final Color? textColor;
  final Color? loadingColor;
  final bool isActive;
  final bool isLoading;
  final IconData? icon;
  final double? height;
  final double? width;
  final BoxShape? shape;
  final dynamic text;
  final TextStyle textStyle;
  final String? image;
  final void Function()? onPressed;
  final double? iconHeight;
  final bool animate;
  final bool visible;
  final MainAxisAlignment childAlignment;
  final MainAxisSize size;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Durations.short3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onPressed() {
    if (widget.isActive && !widget.isLoading && widget.onPressed != null) {
      if (widget.animate) {
        _controller.forward();
        Future.delayed(Durations.short3, () {
          _controller.reverse();
        });
      }
      widget.onPressed!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.visible,
      child: GestureDetector(
        onTap: onPressed,
        onLongPressStart: widget.isActive &&
                !widget.isLoading &&
                widget.onPressed != null &&
                widget.animate
            ? (details) => _controller.animateTo(.9)
            : null,
        onLongPressEnd: widget.isActive &&
                !widget.isLoading &&
                widget.onPressed != null &&
                widget.animate
            ? (details) => _controller.reverse()
            : null,
        behavior: HitTestBehavior.opaque,
        child: ScaleTransition(
          scale: Tween<double>(
            begin: 1,
            end: .9,
          ).animate(_controller),
          child: Container(
              padding: widget.padding,
              margin: widget.margin,
              height: widget.height,
              width: widget.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: widget.borderRadius is BorderRadiusGeometry?
                      ? widget.borderRadius
                      : BorderRadius.circular(
                          double.parse(widget.borderRadius.toString())),
                  color:
                      widget.fillColor?.withAlpha(widget.isActive ? 255 : 100),
                  shape: widget.shape ?? BoxShape.rectangle,
                  border: widget.borderColor != null
                      ? Border.all(width: 1, color: widget.borderColor!)
                      : null),
              child: Row(
                mainAxisAlignment: widget.childAlignment,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: widget.size,
                children: [
                  if (widget.image != null) ...[
                    Image.asset(widget.image!, height: widget.iconHeight),
                    verticalSpace8
                  ],
                  if (widget.icon != null) ...[
                    AppIcon(widget.icon!, height: widget.iconHeight),
                    const SizedBox(
                      width: 12,
                    )
                  ],
                  widget.isLoading
                      ? CupertinoActivityIndicator(color: widget.loadingColor)
                      : widget.text is Widget
                          ? widget.text
                          : Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8),
                            child: Text(widget.text,
                                style: widget.textStyle
                                    .copyWith(color: widget.textColor)),
                          ),
                ],
              )),
        ),
      ),
    );
  }
}
