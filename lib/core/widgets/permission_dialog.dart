import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kansler/core/extensions/context.dart';

import '../constants/spaces.dart';
import '../style/colors.dart';
import 'app_button.dart';

class PermissionDialog extends StatelessWidget {
  const PermissionDialog({
    super.key,
    this.title,
    this.description,
    this.cancelText = 'Отмена',
    this.grantText = 'Разрешить',
    this.image,
    this.isNetworkImage = false,
    this.imageHeight = 94,
    this.widget,
  });

  final String? title;
  final String? description;
  final String cancelText;
  final String grantText;
  final dynamic image;
  final bool isNetworkImage;
  final double imageHeight;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.cardColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...widget != null
                  ? [widget!]
                  : [
                      if (image != null) ...[
                        if (image is String) ...[
                          SvgPicture.asset(
                            image,
                            height: imageHeight,
                          ),
                        ],
                        if (image is IconData) ...[
                          Icon(image),
                        ],
                        verticalSpace16,
                      ],
                      if (title != null)
                        Text(
                          title!,
                          style: context.titleMedium,
                        ),
                      if (description != null) ...[
                        verticalSpace8,
                        Text(
                          description!,
                          style: context.bodySmall?.copyWith(
                            color: context.colorScheme.onBackground,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 4,
                        ),
                      ],
                    ],
              verticalSpace16,
              Row(
                children: [
                  Expanded(
                    child: AppButton(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      fillColor: AppColors.grey,
                      text: cancelText,
                      onPressed: () => Navigator.pop(context, false),
                      borderRadius: 12,
                      textColor: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: AppButton(
                      onPressed: () => Navigator.pop(context, true),
                      text: grantText,
                      borderRadius: 12,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      fillColor: context.primary,
                      textColor: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
