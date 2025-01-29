import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

const String dateTimeFormatPattern = 'dd/MM/yyyy';

extension DateTimeExtension on DateTime {
  Future<String> format({
    String pattern = dateTimeFormatPattern,
    String? locale,
  }) async {
    if (locale != null && locale.isNotEmpty) {
      await initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }
}
