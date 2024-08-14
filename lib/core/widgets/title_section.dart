import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';

class TitleSectionWidget extends StatelessWidget {
  const TitleSectionWidget({super.key, required this.name, this.onTap});

  final String name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Text(
            name,
            style: context.theme.textTheme.titleMedium!,
          ),
          // if (onTap != null) ...[
          //   const Spacer(),
          //   GestureDetector(
          //     behavior: HitTestBehavior.opaque,
          //     onTap: onTap,
          //     child: Text(
          //       'common.all'.tr(),
          //       style: Theme.of(context).textTheme.labelLarge!,
          //     ),
          //   ),
          // ]
        ],
      ),
    );
  }
}
