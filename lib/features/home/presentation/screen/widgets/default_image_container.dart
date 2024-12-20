import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:kansler/core/constants/app_images.dart';

import '../../../../../app/router.dart';
import '../../../../../core/network/constants.dart';

class DefaultImageContainer extends StatelessWidget {
  const DefaultImageContainer(
      {super.key,
      this.imageUrl,
      this.width,
      this.height,
      required this.radius,
      this.margin,
      this.padding,
      this.children,
      this.isActiveShadow = false,
      this.backgroundColor,
      this.fit = BoxFit.cover,
      this.alignment,
      this.widthCache,
      this.heightCache,
      this.onTap});

  final String? imageUrl;
  final double? width;
  final double? height;
  final int? widthCache;
  final int? heightCache;
  final double radius;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final List<Widget>? children;
  final bool isActiveShadow;
  final BoxFit fit;
  final Alignment? alignment;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        radius,
      ),
      child: Container(
        width: width,
        height: height,
        margin: margin,
        padding: padding,
        alignment: alignment,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            radius,
          ),
          color: backgroundColor ?? Theme.of(context).cardColor,
        ),
        child: Stack(children: [
          if (imageUrl == null)
            ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: Image.asset(
                AppImages.noPhoto,
                fit: fit,
                width: width,
                height: height,
              ),
            ),
          if (imageUrl?.isNotEmpty ?? false)
            ClipRRect(
                borderRadius: BorderRadius.circular(radius),
                child: kIsWeb
                    ? ImageNetwork(
                        onTap: onTap,
                        image: NetworkConstants.apiBaseUrl + imageUrl!,
                        fitWeb: BoxFitWeb.fill,
                        width: width!,
                        height: height!,
                      )
                    : GestureDetector(
                        onTap: onTap == null ? null : () => onTap!(),
                        child: CachedNetworkImage(
                          imageUrl: NetworkConstants.apiBaseUrl + imageUrl!,
                          fit: fit,
                          width: width,
                          height: height,
                          maxHeightDiskCache: heightCache,
                          maxWidthDiskCache: widthCache,
                          filterQuality: FilterQuality.low,
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.close),
                        ),
                      )),
          if (isActiveShadow)
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [Colors.black38, Colors.transparent])),
            ),
          if (children != null) ...children!
        ]),
      ),
    );
  }
}
