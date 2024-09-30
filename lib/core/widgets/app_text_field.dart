import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kansler/core/constants/spaces.dart';
import 'package:kansler/core/extensions/context.dart';

class AppTextField extends StatelessWidget {
  final String? label;
  final bool isRequired;
  final VoidCallback? onFieldTap;
  final TextEditingController? fieldController;
  final double? height;
  final double? width;
  final EdgeInsets? prefixPadding;
  final Widget? suffix;
  final TextInputType? textInputType;
  final Color? fillColor;
  final bool autoFocus;
  final FocusNode? focusNode;
  final void Function(String)? onChange;
  final List<TextInputFormatter> textInputFormatter;
  final bool readOnly;
  final int? maxLength;
  final int maxLines;
  final String? Function(String?)? validator;
  final TextCapitalization textCapitalization;
  final bool? alignLabelWithHint;
  final double radius;
  final TextInputAction? inputAction;
  final Widget? prefix;
  final void Function(String)? onFieldSubmitted;
  final EdgeInsets? contentPadding;
  final TextStyle? hintStyle;
  final String? hint;
  final String? prefixText;
  final bool obscureText;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final TextStyle? floatingLabelStyle;
  final double enabledBorderWith;
  final Color? enabledBorderColor;
  final double focusedBorderWith;
  final Color? focusedBorderColor;
  final TextAlign textAlign;
  final VoidCallback? onEditingComplete;

  const AppTextField({
    super.key,
    this.isRequired = false,
    this.label,
    this.onFieldTap,
    this.fieldController,
    this.height,
    this.suffix,
    this.prefix,
    this.textInputType = TextInputType.text,
    this.fillColor,
    this.autoFocus = false,
    this.focusNode,
    this.onChange,
    this.prefixPadding,
    this.readOnly = false,
    this.textInputFormatter = const [],
    this.maxLength,
    this.validator,
    this.textCapitalization = TextCapitalization.none,
    this.maxLines = 1,
    this.alignLabelWithHint,
    this.radius = 8,
    this.inputAction,
    this.onFieldSubmitted,
    this.contentPadding,
    this.hintStyle,
    this.hint,
    this.width,
    this.obscureText = false,
    this.style,
    this.labelStyle,
    this.enabledBorderWith = 0,
    this.enabledBorderColor,
    this.focusedBorderWith = 0,
    this.focusedBorderColor,
    this.textAlign = TextAlign.start,
    this.onEditingComplete,
    this.floatingLabelStyle, this.prefixText,
  });

  @override
  Widget build(BuildContext context) {
    final Color bgColor = fillColor != null ? fillColor! : context.cardColor;
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        readOnly: readOnly,
        validator: validator,
        style: style ?? context.bodyLarge!.copyWith(fontSize: 16),
        onTap: onFieldTap,
        textAlign: textAlign,
        maxLength: maxLength,
        focusNode: focusNode,
        onEditingComplete: onEditingComplete,
        textInputAction: inputAction,
        controller: fieldController,
        keyboardType: textInputType,
        autofocus: autoFocus,
        inputFormatters: textInputFormatter,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChange,
        textCapitalization: textCapitalization,
        cursorColor: context.primaryColor,
        maxLines: maxLines,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelStyle: labelStyle,
          contentPadding: contentPadding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          counterText: '',
          prefixIcon: prefix != null
              ? Padding(
                  padding: prefixPadding ?? const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      prefix!,
                      horizontalSpace10,
                      Text(prefixText ?? ""),
                    ],
                  ),
                )
              : null,
          suffixIcon: suffix,
          isDense: true,
          prefixIconConstraints:
              const BoxConstraints(minWidth: 0, minHeight: 0),
          filled: true,
          hintText: hint,
          labelText: label,
          hintStyle: hintStyle,
          alignLabelWithHint: alignLabelWithHint,
          fillColor: bgColor,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelStyle: floatingLabelStyle,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: focusedBorderWith,
              color: focusedBorderColor ?? context.primaryColor,
              style:
                  focusedBorderWith == 0 ? BorderStyle.none : BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(radius),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: enabledBorderWith,
              color: enabledBorderColor ?? context.theme.colorScheme.outline,
              style:
                  enabledBorderWith == 0 ? BorderStyle.none : BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(radius),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: context.colorScheme.error),
            borderRadius: BorderRadius.circular(radius),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: context.colorScheme.error),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
    );
  }
}
