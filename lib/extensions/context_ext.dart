import 'package:flutter/widgets.dart';

extension ContextExt on BuildContext {
  /// Hide keyboard
  ///
  /// Example: `context.hideKeyboard()`
  void hideKeyboard() => FocusScope.of(this).requestScopeFocus();

  /// Get the device orientation
  ///
  /// Example: `context.orientation`
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// Get the device dark mode
  ///
  /// Example: `context.isDarkMode`
  bool get isDarkMode =>
      MediaQuery.of(this).platformBrightness == Brightness.dark;
}
