import 'package:flutter/material.dart';
import 'package:kansler/core/extensions/context.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key, required this.keyI, required this.value});

  final String keyI;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          SizedBox(
            width: context.isSmall ? context.width * .47 : context.width * .19,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  keyI,
                  style: const TextStyle(fontSize: 13),
                ),
                const Text(':'),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              value,
              style: const TextStyle(fontSize: 13),
              maxLines: 2,
            ),
          ))
        ],
      ),
    );
  }
}
