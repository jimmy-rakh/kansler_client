import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';
import 'package:kansler/core/widgets/app_card.dart';
import 'package:kansler/features/auth/data/models/client_info/client_adress_dto.dart';
import 'package:kansler/features/auth/data/models/client_info/client_info_response.dart';

import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/sheet_parent.dart';

class CompanyInfoSheet extends StatefulWidget {
  const CompanyInfoSheet({super.key, required this.clientData});

  final ClientInfoResponse clientData;

  @override
  State<CompanyInfoSheet> createState() => _CompanyInfoSheetState();
}

class _CompanyInfoSheetState extends State<CompanyInfoSheet> {
  ClientAdressDto? _selectedAddress;

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
            widget.clientData.name,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.titleMedium,
          ),
          verticalSpace5,
          Text(
            'Выберите адрес',
            style: context.theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          verticalSpace24,
          // AppTextField(
          //   fieldController: _phoneController,
          //   hint: '+998 (__) ___ __ __',
          //   textInputFormatter: [
          //     MaskTextInputFormatter(
          //         mask: '+998 (##) ### ## ##', filter: {"#": RegExp(r'[0-9]')})
          //   ],
          // ),
          SizedBox(
            height: context.height * 0.5,
            child: ListView.separated(
              itemBuilder: (context, index) => AppCard(
                width: context.width,
                borderColor: _selectedAddress ==
                        widget.clientData.deliveryaddressSet?[index]
                    ? context.primaryColor
                    : null,
                onTap: () => setState(() => _selectedAddress =
                    widget.clientData.deliveryaddressSet?[index]),
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                child: Text(
                    widget.clientData.deliveryaddressSet?[index].name ?? ''),
              ),
              separatorBuilder: (context, index) => verticalSpace12,
              itemCount: widget.clientData.deliveryaddressSet?.length ?? 0,
            ),
          ),
          verticalSpace24,
          AppButton(
            text: 'Подтвердить',
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            onPressed: () => Navigator.pop(context, _selectedAddress),
            fillColor: context.primary,
            borderRadius: 12,
            textColor: context.onPrimary,
            isActive: _selectedAddress != null,
          ),
          verticalSpace35,
        ],
      ),
    );
  }
}
