import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


import '../../../../../core/constants/spaces.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_text_field.dart';
import '../../../../../core/widgets/sheet_parent.dart';
import '../../../domain/entities/client_data.entity.dart';

class CompanyInfoSheet extends StatelessWidget {
  CompanyInfoSheet({super.key, required this.clientData});

  final ClientDataEntity clientData;

  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SheetParent(
      radius: 16,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      showDragContainer: true,
      isAcitveShadow: true,
      backgroundColor: context.background,
      child: Column(
        children: [
          Text(
            clientData.fullName ?? clientData.name ?? clientData.inn!,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.titleMedium,
          ),
          verticalSpace5,
          clientData.phoneNumbers == null ? const Text(
            'Номер телефона не найдено',
            style: TextStyle(color: AppColors.red,fontSize: 16),
            textAlign: TextAlign.center,
          ) : Text(
            'Введите номер телефона\nчтобы подтвердить вашу личность',
            style: context.theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          verticalSpace24,
          clientData.phoneNumbers == null ? Column(
            children: [
              Text(
                'Для получения доступа на сайт, свяжитесь с сотрудником компании:',
                style: context.theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              verticalSpace16,
              Text(
                '+998 78 129 00 44 СГ',
                style: context.theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                '+998 78 129 00 88 ДТ',
                style: context.theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                '+998 78 148 00 44 ГТ',
                style: context.theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ) : AppTextField(
            fieldController: _phoneController,
            hint: '+998 (__) ___ __ __',
            textInputFormatter: [
              MaskTextInputFormatter(
                  mask: '+998 (##) ### ## ##', filter: {"#": RegExp(r'[0-9]')})
            ],
          ),
          verticalSpace24,
          AppButton(
            text: 'Подтвердить',
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            onPressed: () => Navigator.pop<String>(context,
                _phoneController.text.replaceAll(RegExp(r'[^0-9]'), '')),
            fillColor: context.primary,
            borderRadius: 12,
            textColor: context.onPrimary,
          ),
          verticalSpace35,
        ],
      ),
    );
  }
}
