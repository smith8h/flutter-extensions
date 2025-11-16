import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import '../utils/extensions_context.dart';

extension NumExtensions on num {
  // ? =================== Equations ========================

  /// Returns half of this number as `double`.
  ///
  /// Useful for responsive sizing or spacing in layouts.
  /// Example: `300.half` -> `150.0`.
  double get half => this / 2;

  /// Returns one quarter (25%) of this number as `double`.
  ///
  /// Example: `80.quarter` -> `20.0`.
  double get quarter => this / 4;

  /// Returns the square of this number as `double` (`n * n`).
  ///
  /// Example: `5.square` -> `25.0` for simple area/animation calculations.
  double get square => (this * this).toDouble();

  /// Returns the square root (√) of this number.
  ///
  /// Note: for negative values, `sqrt` returns `NaN`.
  /// Example: `81.sqRoot` -> `9.0`.
  double get sqRoot => sqrt(this);

  // ? =================== Durations ========================

  /// Converts this number to a `Duration` in microseconds.
  ///
  /// Fractional values are truncated with `toInt()`.
  /// Example: `150.misec` -> `Duration(microseconds: 150)` for
  /// micro-animations.
  Duration get misec => Duration(microseconds: toInt());

  /// Converts this number to a `Duration` in milliseconds.
  ///
  /// Fractional values are truncated with `toInt()`.
  /// Example: `250.msec` -> `Duration(milliseconds: 250)` for ripple timing.
  Duration get msec => Duration(milliseconds: toInt());

  /// Converts this number to a `Duration` in seconds.
  ///
  /// Fractional values are truncated with `toInt()`.
  /// Example: `10.sec` -> `Duration(seconds: 10)` for polling.
  Duration get sec => Duration(seconds: toInt());

  /// Converts this number to a `Duration` in minutes.
  ///
  /// Fractional values are truncated with `toInt()`.
  /// Example: `15.min` -> `Duration(minutes: 15)` for prayer
  /// reminder intervals.
  Duration get min => Duration(minutes: toInt());

  /// Converts this number to a `Duration` in hours.
  ///
  /// Fractional values are truncated with `toInt()`.
  /// Example: `2.hr` -> `Duration(hours: 2)` for daily refresh.
  Duration get hr => Duration(hours: toInt());

  /// Converts this number to a `Duration` in days.
  ///
  /// Fractional values are truncated with `toInt()`.
  /// Example: `2.day` -> `Duration(days: 2)` for news cache TTL.
  Duration get day => Duration(days: toInt());

  // ? =================== Spaces & Fixed Values ========================

  /// Get the logical screen width multiplied by this number.
  ///
  /// Initialization requirements:
  /// - Recommended: call `FlutterSExtensions.update(context)` in your
  ///   `MaterialApp.builder` to keep values fresh across hot reloads.
  /// - Lazy init: if no explicit init has occurred, a first view is used
  ///   from `WidgetsBinding.instance.platformDispatcher.views`. This throws
  ///   when no view is available (e.g., very early or certain tests).
  ///
  /// Usage example in layout:
  /// ```dart
  /// // In a news app header: take 90% of screen width
  /// SizedBox(width: 0.9.screenWidth);
  /// ```
  ///
  /// Error handling:
  /// - Throws `StateError` if the extension cannot be initialized (no binding
  ///   or no available view). Ensure the app is running and initialized.
  ///
  /// Value of this should be between 0 and 1.
  double get screenWidth {
    final mq = FlutterSExtensions.mediaQuery();
    return this * mq.size.width;
  }

  /// Get the logical screen height multiplied by this number.
  ///
  /// Initialization requirements:
  /// - Recommended: call `FlutterSExtensions.update(context)` in your
  ///   `MaterialApp.builder` to keep values fresh across hot reloads.
  /// - Lazy init: if no explicit init has occurred, a first view is used
  ///   from `WidgetsBinding.instance.platformDispatcher.views`. This throws
  ///   when no view is available (e.g., very early or certain tests).
  ///
  /// Usage example in layout:
  /// ```dart
  /// // In a news app header: take 90% of screen height
  /// SizedBox(height: 0.9.screenHeight);
  /// ```
  ///
  /// Error handling:
  /// - Throws `StateError` if the extension cannot be initialized (no binding
  ///   or no available view). Ensure the app is running and initialized.
  ///
  /// Value of this should be between 0 and 1.
  double get screenHeight {
    final mq = FlutterSExtensions.mediaQuery();
    return this * mq.size.height;
  }

  // ? =================== Widgets ========================

  /// Returns a `SizedBox` widget with the width set to this number.
  ///
  /// Example: `100.horizontalSpace` -> `SizedBox(width: 100.0)`.
  SizedBox get horizontalSpace => SizedBox(width: toDouble());

  /// Returns a `SizedBox` widget with the height set to this number.
  ///
  /// Example: `100.verticalSpace` -> `SizedBox(height: 100.0)`.
  SizedBox get verticalSpace => SizedBox(height: toDouble());

  // ? =================== Formaters ========================

  /// Returns a string representation of this number with 2 decimal places.
  ///
  /// Example: `123.456.fixed00` -> `123.46`.
  String get fixed00 => toStringAsFixed(2);

  /// Returns a string representation of this number with 1 decimal place.
  ///
  /// Example: `123.456.fixed0` -> `123.5`.
  String get fixed0 => toStringAsFixed(1);

  /// Returns a string representation of this number with the format
  /// provided as a parameter.
  ///
  /// Example: `123.456.format('0.00')` -> `123.46`.
  String format(String formatStr) => NumberFormat(formatStr).format(toDouble());

  // ? =================== Validators ========================

  /// Returns `true` if this number is between the provided [min] and [max] values.
  ///
  /// Example: `123.isBetween(100, 200)` -> `true`.
  bool isBetween(num min, num max) => this > min && this < max;

  /// Returns `true` if this number is divisible by the provided [divisor].
  ///
  /// Example: `123.isDivisibleBy(10)` -> `false`.
  bool isDivisibleBy(int divisor) => toInt() % divisor == 0;

  /// Returns `true` if this number is a even number.
  ///
  /// Example: `12.isEven` -> `true`.
  bool get isEven => toInt() % 2 == 0;
}
