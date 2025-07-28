import 'package:intl/intl.dart';

extension CurrencyFormatter on double {
  String get currencyFormat => NumberFormat('#,##0.00', 'en_US').format(this);
  String currencyFormatWithOptions({
    bool isPositionLeft = true,
    String? locale = 'en_US',
    String? currencySymbol = '\$',
  }) =>
      isPositionLeft
          ? '$currencySymbol ${NumberFormat('#,##0.00', locale).format(this)}'
          : '${NumberFormat('#,##0.00', locale).format(this)} $currencySymbol';
}
