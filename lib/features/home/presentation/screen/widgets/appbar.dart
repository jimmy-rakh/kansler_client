import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../../../app/router.dart';
import '../../../../../core/constants/kaze_icons.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/style/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => router.push(SearchRoute()),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: context.cardColor,
                borderRadius: BorderRadius.circular(0),
              ),
              child: Row(
                children: [
                  horizontalSpace12,
                  const Icon(
                    KazeIcons.searchOutline,
                    color: AppColors.grey,
                  ),
                  horizontalSpace12,
                  Text(
                    'common.search'.tr(),
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          ),
        ),
        // horizontalSpace12,
        // GestureDetector(
        //   onTap: () async {
        //     final res = await router.push(const ScannerRoute()) as String?;

        //     if (res != null) {
        //       router.push(SearchRoute(title: res));
        //     }
        //   },
        //   behavior: HitTestBehavior.opaque,
        //   child: Container(
        //     padding: const EdgeInsets.all(8),
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(8),
        //       color: context.cardColor,
        //     ),
        //     child: const Icon(Icons.barcode_reader),
        //   ),
        // ),
      ],
    );
  }
}
