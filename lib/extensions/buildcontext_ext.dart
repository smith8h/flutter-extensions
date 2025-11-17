import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  // ? =============== Actions ===============
  /// Hide keyboard
  ///
  /// Example: `context.hideKeyboard()`
  void hideKeyboard() => FocusScope.of(this).requestScopeFocus();

  /// Pop the current route off the navigator stack
  ///
  /// Example: `context.pop()`
  void pop() => Navigator.of(this).pop();

  /// Push a new page with MaterialPageRoute
  ///
  /// Example: `context.push(MyPage())`
  void push(Widget page) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));

  /// Push a new page with MaterialPageRoute and the given name
  ///
  /// Example: `context.pushNamed(MyPage.routeName)`
  void pushNamed(String routeName) =>
      Navigator.of(this).pushNamed(routeName);

  // ? =============== Getters ===============
  /// Get the device orientation
  ///
  /// Example: `context.orientation`
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// Get the height of the keyboard
  ///
  /// Example: `context.keyboardHeight`
  double get keyboardHeight => MediaQuery.of(this).viewInsets.bottom;

  /// Get the current ThemeData
  ///
  /// Example: `context.theme`
  ThemeData get theme => Theme.of(this);

  /// Get the current TextTheme
  ///
  /// Example: `context.textTheme`
  TextTheme get textTheme => theme.textTheme;

  /// Get the current ColorScheme
  ///
  /// Example: `context.colorScheme`
  ColorScheme get colorScheme => theme.colorScheme;

  /// Get the top padding of the MediaQuery
  ///
  /// Example: `context.topPadding`
  double get topPadding => MediaQuery.of(this).padding.top;

  /// Get the bottom padding of the MediaQuery
  ///
  /// Example: `context.bottomPadding`
  double get bottomPadding => MediaQuery.of(this).padding.bottom;

  /// Get the device pixel ratio
  ///
  /// Example: `context.devicePixelRatio`
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  /// Returns current brightness independent of the theme.
  ///
  /// Example: `context.brightness`
  Brightness get brightness => MediaQuery.of(this).platformBrightness;

  /// Returns the size of the widget tied to this context.
  ///
  /// Example: `context.widgetSize`
  Size get widgetSize => MediaQuery.of(this).size;

  /// Returns global position of the widget.
  ///
  /// Example: `context.widgetPosition`
  Offset get widgetPosition => MediaQuery.of(this).size.topLeft(.zero);

  // ? =============== Validators ===============
  /// Get the device dark mode
  ///
  /// Example: `context.isDarkMode`
  bool get isDarkMode =>
      MediaQuery.of(this).platformBrightness == Brightness.dark;

  /// Get if keyboard is visible
  ///
  /// Example: `context.isKeyboardVisible`
  bool get isKeyboardVisible => MediaQuery.of(this).viewInsets.bottom != 0;

  /// Check if the device orientation is landscape
  ///
  /// Example: `context.isLandscape`
  bool get isLandscape => orientation == Orientation.landscape;

  /// Check if the device orientation is portrait
  ///
  /// Example: `context.isPortrait`
  bool get isPortrait => orientation == Orientation.portrait;

  /// Check if the current directionality is right-to-left
  ///
  /// Example: `context.isRTL`
  bool get isRTL => Directionality.of(this) == TextDirection.rtl;

  /// Check if the current directionality is left-to-right
  ///
  /// Example: `context.isLTR`
  bool get isLTR => Directionality.of(this) == TextDirection.ltr;

  /// Check if the device is tablet-sized (shortestSide ≥ 600)
  ///
  /// Example: `context.isTablet`
  bool get isTablet => MediaQuery.of(this).size.shortestSide >= 600;

  /// Returns true if device accessibility high contrast is enabled.
  ///
  /// Example: `context.isHighContrast`
  bool get isHighContrast => MediaQuery.of(this).highContrast;

  /// Returns true if width < 360px (useful for responsive).
  ///
  /// Example: `context.isScreenSmall`
  bool get isScreenSmall => MediaQuery.of(this).size.width < 360;
}
