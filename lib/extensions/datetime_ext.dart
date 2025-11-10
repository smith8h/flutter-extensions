// ignore_for_file: non_constant_identifier_names

import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  // ? =================== Formaters ========================

  /// Returns a string representation of this date with the format
  /// provided as a parameter.
  ///
  /// Example: `DateTime.now().format('yyyy-MM-dd')` -> `2023-08-24`.
  String format(String formatStr) => DateFormat(formatStr).format(this);

  /// Returns a string representation of this date with the format
  /// `yyyy-MM-dd`.
  ///
  /// Example: `DateTime.now().yyyyMMdd` -> `2023-08-24`.
  String get yyyyMMdd => format('yyyy-MM-dd');

  /// Returns a string representation of this date with the format
  /// `yyyy-MM-dd HH:mm:ss`.
  ///
  /// Example: `DateTime.now().yyyyMMddHHmmss` -> `2023-08-24 12:34:56`.
  String get yyyyMMddHHmmss => format('yyyy-MM-dd HH:mm:ss');

  /// Returns a string representation of this date with the format
  /// `yyyy-MM-dd HH:mm`.
  ///
  /// Example: `DateTime.now().yyyyMMddHHmm` -> `2023-08-24 12:34`.
  String get yyyyMMddHHmm => format('yyyy-MM-dd HH:mm');

  /// Returns a string representation of this date with the format
  /// `HH:mm`.
  ///
  /// Example: `DateTime.now().HHmm` -> `12:34`.
  String get HHmm => format('HH:mm');
}
