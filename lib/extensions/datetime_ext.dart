// ignore_for_file: non_constant_identifier_names

import 'package:intl/intl.dart';
import 'package:s_extensions/extensions/number_ext.dart';

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
  /// Example: `DateTime.now().formatYearMonthDay` -> `2023-08-24`.
  String get formatYearMonthDay => format('yyyy-MM-dd');

  /// Returns a string representation of this date with the format
  /// `dd-MM-yyyy`.
  ///
  /// Example: `DateTime.now().formatDayMonthYear` -> `24-08-2023`.
  String get formatDayMonthYear => format('dd-MM-yyyy');

  /// Returns a string representation of this date with the format
  /// `yyyy-MM-dd HH:mm:ss`.
  ///
  /// Example: `DateTime.now().formatYearMonthDayHrMinSec` -> `2023-08-24 12:34:56`.
  String get formatYearMonthDayHrMinSec => format('yyyy-MM-dd hh:mm:ss');

  /// Returns a string representation of this date with the format
  /// `yyyy-MM-dd HH:mm`.
  ///
  /// Example: `DateTime.now().formatYearMonthDayHrMin` -> `2023-08-24 12:34`.
  String get formatYearMonthDayHrMin => format('yyyy-MM-dd hh:mm');

  /// Returns a string representation of this date with the format
  /// `HH:mm` in 12 hour format.
  ///
  /// Example: `DateTime.now().formatHrMin12` -> `12:34 PM`.
  String get formatHrMin12 => format('HH:mm a');

  /// Returns a string representation of this date with the format
  /// `HH:mm` in 24 hour format.
  ///
  /// Example: `DateTime.now().formatHrMin24` -> `15:34`.
  String get formatHrMin24 => format('hh:mm');

  /// Returns a string representation of this date with the format
  /// `HH:mm` in 12 hour format.
  ///
  /// Example: `DateTime.now().formatHrMinSec12` -> `12:34:56 PM`.
  String get formatHrMinSec12 => format('HH:mm:ss a');

  /// Returns a string representation of this date with the format
  /// `HH:mm` in 24 hour format.
  ///
  /// Example: `DateTime.now().formatHrMinSec24` -> `15:34:56`.
  String get formatHrMinSec24 => format('hh:mm:ss');

  /// Returns a string representation of this date with the format
  /// `dd`.
  ///
  /// Example: `DateTime.now().formatDay` -> `Wednesday`.
  String get formatDay => format('EEEE');

  /// Returns a string representation of this date with the format
  /// `MMMM`.
  ///
  /// Example: `DateTime.now().formatMonth` -> `August`.
  String get formatMonth => format('MMMM');

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
  bool get isToday => formatYearMonthDay == DateTime.now().formatYearMonthDay;

  /// Returns `true` if this date is tomorrow.
  ///
  /// Example: `DateTime.now().isTomorrow` -> `true`.
  bool get isTomorrow =>
      formatYearMonthDay == (DateTime.now() + 1.day).formatYearMonthDay;

  /// Returns `true` if this date is yesterday.
  ///
  /// Example: `DateTime.now().isYesterday` -> `true`.
  bool get isYesterday =>
      formatYearMonthDay == (DateTime.now() - 1.day).formatYearMonthDay;

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
  /// Example: `"2023-08-24".toDate + 7.day` -> `2023-08-31`.
  DateTime operator +(Duration duration) => add(duration);

  /// Subtracts this duration of time from this date and returns the result.
  ///
  /// Example: `"2023-08-24".toDate - 7.day` -> `2023-08-17`.
  DateTime operator -(Duration duration) => subtract(duration);

  /// Returns the duration between this date and now.
  ///
  /// Example: `(DateTime.now() - 7.day).fromNow` -> `7 days`.
  Duration get fromNow => DateTime.now().difference(this);
}
