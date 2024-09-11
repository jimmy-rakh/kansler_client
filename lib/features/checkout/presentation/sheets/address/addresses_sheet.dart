import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kansler/core/extensions/context.dart';
import '../../../../../core/constants/spaces.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../../../profile/data/models/address_dto.dart';

class AddressesSheet extends HookWidget {
  const AddressesSheet({
    super.key,
    required this.addresses,
  });

  final List<AddressDto> addresses;

  @override
  Widget build(BuildContext context) {
    if (addresses.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(12),
        child: Text(
          'У вас нет адресов для данной компании. Чтобы вы могли заказывать товары с этой организацией свяжитесь с вашим менеджером',
          textAlign: TextAlign.center,
        ),
      );
    }
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      itemBuilder: (context, index) => AppCard(
        width: double.maxFinite,
        padding: const EdgeInsets.all(16),
        borderRadius: 12,
        fillColor: context.background,
        onTap: () => Navigator.pop(context, addresses[index]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Полное наименование:\n${addresses[index].name ?? ""}"),
            verticalSpace12,
            Text('Номер:\n${addresses[index].phoneNumber}'),
            verticalSpace12,
            Text('Регион:\n${addresses[index].region}'),
            verticalSpace12,
          ],
        ),
      ),
      separatorBuilder: (context, index) => verticalSpace12,
      itemCount: addresses.length,
    );
  }
}
