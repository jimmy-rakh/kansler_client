import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:pinput/pinput.dart';

import '../../app/router.dart';

PinTheme defaultPinTheme = PinTheme(
    height: 61,
    width: 51,
    decoration: BoxDecoration(
        color: router.navigatorKey.currentContext!.cardColor,
        borderRadius: BorderRadius.circular(10)));
