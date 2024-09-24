import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/constants/spaces.dart';
import '../../../../../core/style/pin_theme.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/sheet_parent.dart';
import 'confirm_code/confirm_code_bloc.dart';

class ConfirmCodeSheet extends StatelessWidget {
  const ConfirmCodeSheet(
      {super.key, required this.number, required this.requestId});

  final String number;
  final String requestId;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ConfirmCodeBloc>();

    return SheetParent(
      radius: 16,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      showDragContainer: true,
      isAcitveShadow: true,
      backgroundColor: context.background,
      child: SizedBox(
        height:context.isSmall ? context.height * .3 : 500,
        child: Column(
          children: [
            Text(
              'Подтверждение',
              style: context.theme.textTheme.titleMedium,
            ),
            verticalSpace5,
            Text.rich(
              TextSpan(
                text: 'Введите код, который вы получили на номер\n',
                children: [
                  TextSpan(
                    text: "+${number}",
                    style: context.theme.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              ),
              textAlign: TextAlign.center,
              style: context.theme.textTheme.bodyMedium,
            ),
            verticalSpace12,
            Pinput(
              length: 4,
              controller: bloc.pinController,
              preFilledWidget: const Text('*'),
              autofocus: true,
              separatorBuilder: (index) => horizontalSpace20,
              validator: (value) {
                return value == '400004' ? null : 'Некорректный код';
              },
              onClipboardFound: bloc.pinController.setText,
              onCompleted: (pin) =>
                  bloc.add(ConfirmCodeEvent.confirm(number, requestId)),
              cursor: const Text('*'),
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: context.primary))),
              submittedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: context.primary))),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: Colors.redAccent),
              ),
            ),
            // verticalSpace35,
            // AppButton(
            //   text: 'Запросить код повторно',
            //   textStyle: context.theme.textTheme.bodyMedium!.copyWith(
            //     fontWeight: FontWeight.w800,
            //     color: context.primary,
            //   ),
            //   onPressed: () {},
            // ),
            verticalSpace35,
          ],
        ),
      ),
    );
  }
}
