import 'package:intl/intl.dart';

extension IntExt on int {
  String toCurrency() {
    if (this == 0) {
      return '';
    }

    final formatter = NumberFormat.simpleCurrency(
      locale: "nl",
      decimalDigits: 0,
    );
    return formatter.format(this);
  }
}
