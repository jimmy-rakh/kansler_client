import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/features/auth/data/models/send_code/request.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/constants/kaze_icons.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/style/pin_theme.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/sheet_parent.dart';
import 'confirm_code/confirm_code_bloc.dart';

class ConfirmCodeSheet extends HookWidget {
  const ConfirmCodeSheet({
    super.key,
    required this.number,
    required this.requestId,
    required this.request,
  });

  final String number;
  final String requestId;
  final SendCodeRequest request;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ConfirmCodeBloc>();
    final state = useBlocBuilder(bloc);

    useEffect(() {
      bloc.add(ConfirmCodeEvent.init(requestId, request));

      return null;
    }, const []);

    return SheetParent(
      radius: 16,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      showDragContainer: true,
      isAcitveShadow: true,
      backgroundColor: context.background,
      child: SizedBox(
        height: context.isSmall ? context.height * .5 : 500,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: IconButton.filled(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(context.cardColor),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(KazeIcons.closeCircleOutline),
                ),
              ),
            ),
            verticalSpace30,
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
                    text: number,
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
              onClipboardFound: bloc.pinController.setText,
              onCompleted: (pin) =>
                  bloc.add(ConfirmCodeEvent.confirm(number, requestId)),
              cursor: const Text('*'),
              errorText: 'Неправильный код',
              forceErrorState: state.status == ConfirmCodeStatus.error,
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
            verticalSpace30,
            Text(
              '    Разрешите определить геолокацию\nИначе вы не сможете регистрироватся!',
              style: context.theme.textTheme.titleSmall?.copyWith(color: Colors.orange),
            ),
            verticalSpace35,
            AppButton(
              text:
                  'Запросить код снова ${state.leftSeconds == 0 ? '' : '00:${state.leftSeconds.toString().padLeft(2, '0')}'}',
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              isActive: state.leftSeconds == 0,
              isLoading: state.status == ConfirmCodeStatus.loading,
              fillColor: context.cardColor,
              borderRadius: BorderRadius.circular(12),
              onPressed: () => bloc.add(const ConfirmCodeEvent.resend()),
            ),
            verticalSpace35,
          ],
        ),
      ),
    );
  }
}
