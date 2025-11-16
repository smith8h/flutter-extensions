import 'package:flutter/widgets.dart';

extension BuildContextExt on BuildContext {
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

  /// Get if keyboard is visible
  ///
  /// Example: `context.isKeyboardVisible`
  bool get isKeyboardVisible => MediaQuery.of(this).viewInsets.bottom != 0;

  /// Get the height of the keyboard
  ///
  /// Example: `context.keyboardHeight`
  double get keyboardHeight => MediaQuery.of(this).viewInsets.bottom;

  /// Check if the device orientation is landscape
  ///
  /// Example: `context.isLandscape`
  bool get isLandscape => orientation == Orientation.landscape;

  /// Check if the device orientation is portrait
  ///
  /// Example: `context.isPortrait`
  bool get isPortrait => orientation == Orientation.portrait;
}
