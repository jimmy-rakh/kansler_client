import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_card.dart';

class Footer extends HookWidget {
  const Footer({
    super.key,
  });


  @override
  Widget build(BuildContext context) {


    return  AppCard(
      fillColor: context.theme.cardColor,
      height: context.height * .2,
      width: context.width,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1400),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Image.asset("assets/images/logo.png",width: context.width * .08,),
                ),

              ],
            ),
            SizedBox(
              width:context.isDesktop ? 500 : context.width * .38,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
