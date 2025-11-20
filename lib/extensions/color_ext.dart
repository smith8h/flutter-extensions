import 'package:flutter/widgets.dart';
import 'package:scolors/scolors.dart';

extension ColorExtensions on Color {
  // ? ============== Converters ==============

  /// Returns the hexadecimal string representation of this color.
  ///
  /// Example: `Color(0xFF000000).toHex` -> `'#000000'`.
  String get toHex => '#${toARGB32().toRadixString(16).substring(2)}';

  /// Returns the HSV color representation of this color.
  ///
  /// Example: `Color(0xFF000000).toHsv` -> `HSVColor(0.0, 0.0, 0.0)`.
  HSVColor get toHsv => HSVColor.fromColor(this);

  // ? ============== Validators ==============

  /// Returns true if this color is dark.
  ///
  /// Example: `Color(0xFF000000).isDark` -> `true`.
  bool get isDark => (r * 0.299 + g * 0.587 + b * 0.114) < 128;

  /// Returns true if this color is light.
  ///
  /// Example: `Color(0xFF000000).isLight` -> `false`.
  bool get isLight => !isDark;

  // ? ============== Operators ==============

  /// Returns the color with the given opacity.
  ///
  /// Example: `Color(0xFF000000).opacity(0.5)` -> `Color(0x80000000)`.
  Color opacity(double opacity) => withValues(alpha: opacity);

  /// Returns the color with the given brightness.
  ///
  /// If [isLighter] is true, the color will be lighter.
  /// If [isLighter] is false, the color will be darker.
  ///
  /// Example: `Color(0xFF000000).brightness(0.5, isLighter: true)` -> `Color(0x80000000)`.
  Color? brightness(double brightness, {bool isLighter = true}) => isLighter
      ? SColors.lighterColor(brightness)
      : SColors.darkerColor(brightness);

  /// Returns the opposite color of this color.
  ///
  /// Example: `Color(0xFF000000).oppositeColor` -> `Color(0xFFFFFFFF)`.
  Color? get oppositeColor => SColors.oppositeColor(color: this);
}
