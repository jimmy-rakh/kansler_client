import 'package:intl/intl.dart';

extension IntExtensions on int? {
  String formattedMoney() {
    if (this == 0) {
      return '0';
    }
    final nf = this != 0
        ? NumberFormat("#,###", "en_US")
        : NumberFormat.decimalPattern();

    if (this == null) return '0';
    if (double.parse(this!.toStringAsFixed(2)) < 1) {
      return '${double.parse(this!.toStringAsFixed(2)) < 0 ? '' : '0'}${nf.format(double.parse(this!.toStringAsFixed(2))).replaceAll(',', ' ')}';
    }
    return nf
        .format(double.parse(this!.toStringAsFixed(2)))
        .replaceAll(',', ' ');
  }
}
