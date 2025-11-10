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

  // ? =================== Validators ========================

  /// Returns `true` if this date is in the past.
  ///
  /// Example: `DateTime.now().isPast` -> `false`.
  bool get isPast => isBefore(DateTime.now());

  /// Returns `true` if this date is in the future.
  ///
  /// Example: `DateTime.now().isFuture` -> `true`.
  bool get isFuture => isAfter(DateTime.now());

  /// Returns `true` if this date is today.
  ///
  /// Example: `DateTime.now().isToday` -> `true`.
  bool get isToday => yyyyMMdd == DateTime.now().yyyyMMdd;

  /// Returns `true` if this date is tomorrow.
  ///
  /// Example: `DateTime.now().isTomorrow` -> `true`.
  bool get isTomorrow =>
      yyyyMMdd == DateTime.now().add(const Duration(days: 1)).yyyyMMdd;

  /// Returns `true` if this date is yesterday.
  ///
  /// Example: `DateTime.now().isYesterday` -> `true`.
  bool get isYesterday =>
      yyyyMMdd == DateTime.now().subtract(const Duration(days: 1)).yyyyMMdd;

  /// Returns `true` if this date is in the previous month.
  ///
  /// Example: `DateTime.now().isInPreviousMonth` -> `true`.
  bool get isInPreviousMonth =>
      month == DateTime.now().month - 1 && year == DateTime.now().year;

  /// Returns `true` if this date is in the previous year.
  ///
  /// Example: `DateTime.now().isInPreviousYear` -> `true`.
  bool get isInPreviousYear =>
      year == DateTime.now().year - 1 && month == DateTime.now().month;

  /// Returns `true` if this date is in the next month.
  ///
  /// Example: `DateTime.now().isInNextMonth` -> `true`.
  bool get isInNextMonth =>
      month == DateTime.now().month + 1 && year == DateTime.now().year;

  /// Returns `true` if this date is in the next year.
  ///
  /// Example: `DateTime.now().isInNextYear` -> `true`.
  bool get isInNextYear =>
      year == DateTime.now().year + 1 && month == DateTime.now().month;

  // ? =================== Operators ========================

  /// Ads this duration of time to this date and returns the result.
  ///
  /// Example: `"2023-08-24".toDate + 7.day` -> `2023-08-31 00:00:00`.
  DateTime operator +(Duration duration) => add(duration);

  /// Subtracts this duration of time from this date and returns the result.
  ///
  /// Example: `"2023-08-24".toDate - 7.day` -> `2023-08-17 00:00:00`.
  DateTime operator -(Duration duration) => subtract(duration);

  /// Returns the duration between this date and now.
  ///
  /// Example: `(DateTime.now() - 7.day).fromNow` -> `7 days`.
  Duration get fromNow => DateTime.now().difference(this);
}
