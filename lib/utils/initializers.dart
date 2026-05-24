import 'package:intl/date_symbol_data_local.dart';

class SExtensionsInitializers {
  static Future<void> initDateTimeFormatterLocale(String locale) async {
    await initializeDateFormatting(locale, null);
  }
}
