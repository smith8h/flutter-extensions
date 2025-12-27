import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:s_extensions/models/app.dart';

extension BuildContextExt on BuildContext {
  // ? =============== Actions ===============
  /// Hide keyboard
  ///
  /// Example: `context.hideKeyboard()`
  void hideKeyboard() => FocusScope.of(this).requestScopeFocus();

  /// Pop the current route off the navigator stack
  ///
  /// Example: `context.pop(result: true)`
  void pop<T extends Object?>({T? result}) => Navigator.of(this).pop<T>(result);

  /// Push a new page with the given widget directly.
  ///
  /// Example: `context.push(MyPage())`
  Future<T?> push<T extends Object?>(Widget page) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));

  /// Push a named route onto the navigator.
  ///
  /// ```dart
  /// final result = await context.pushNamed(MyPage.routeName, arguments: {'id': 1});
  /// ```
  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) => Navigator.of(this).pushNamed(routeName, arguments: arguments);

  /// Push a replacement page with the given widget directly.
  ///
  /// If non-null, result will be used as the result of the route that is removed; the future that had been returned from pushing that old route will complete with result. Routes such as dialogs or popup menus typically use this mechanism to return the value selected by the user to the widget that created their route. The type of result, if provided, must match the type argument of the class of the old route (TO).
  ///
  /// ```dart
  /// // some logic..
  /// await context.pushReplacement(MyPage(), result: await getObjectRequired());
  /// ```
  Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
    Widget page, {
    Object? result,
  }) => Navigator.of(this).pushReplacement(
    MaterialPageRoute(builder: (context) => page),
    result: result,
  );

  /// Push a replacement named route with arguments if needed.
  ///
  /// If non-null, result will be used as the result of the route that is removed; the future that had been returned from pushing that old route will complete with result. Routes such as dialogs or popup menus typically use this mechanism to return the value selected by the user to the widget that created their route. The type of result, if provided, must match the type argument of the class of the old route (TO).
  ///
  /// ```dart
  /// // some logic..
  /// await context.pushReplacementNamed(
  ///   AppRoutes.nextScreen,
  ///   arguments: {"id": 1},
  ///   result: await getObjectRequired(),
  /// );
  /// ```
  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String route, {
    Object? result,
    Object? arguments,
  }) => Navigator.of(
    this,
  ).pushReplacementNamed(route, result: result, arguments: arguments);

  /// Push a page and remove until a route is found.
  ///
  /// ```dart
  /// // some logic..
  /// await context.pushAndRemoveUntil(
  ///   NextScreen(),
  ///   (route) => route.isFirst,
  /// );
  /// ```
  Future<T?> pushAndRemoveUntil<T extends Object?, TO extends Object?>(
    Widget page,
    bool Function(Route<dynamic>) predicate,
  ) => Navigator.of(this).pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => page),
    predicate,
  );

  /// Push a named route and remove until a route is found.
  ///
  /// ```dart
  /// // some logic..
  /// await context.pushNamedAndRemoveUntil(
  ///   AppRoutes.nextScreen,
  ///   (route) => route.isFirst,
  /// );
  /// ```
  Future<T?> pushNamedAndRemoveUntil<T extends Object?, TO extends Object?>(
    String route,
    bool Function(Route<dynamic>) predicate, {
    Object? arguments,
  }) => Navigator.of(
    this,
  ).pushNamedAndRemoveUntil(route, predicate, arguments: arguments);

  /// Pop the current route off the navigator stack and push a new route.
  ///
  /// ```dart
  /// // some logic..
  /// await context.popAndPushNamed(
  ///   AppRoutes.nextScreen,
  ///   result: await getObjectRequired(),
  ///   arguments: {"id": 1},
  /// );
  /// ```
  Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
    String route, {
    TO? result,
    Object? arguments,
  }) => Navigator.of(
    this,
  ).popAndPushNamed(route, result: result, arguments: arguments);

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

  /// Returns the shortest screen dimension.
  ///
  /// ```dart
  /// double shortestSide = context.shortestSide;
  /// bool isThinScreen = shortestSide <= 400;
  /// ```
  double get shortestSide => MediaQuery.of(this).size.shortestSide;

  /// Returns the longest screen dimension.
  ///
  /// Example: `context.longestSide`
  double get longestSide => MediaQuery.of(this).size.longestSide;

  /// Get the arguments passed to the current route.
  ///
  /// ```dart
  /// var args = context.arguments;
  /// if (args != null) {
  ///   // Use the arguments
  /// }
  /// ```
  Object? get arguments => ModalRoute.of(this)?.settings.arguments;

  // ? =============== Validators ===============
  /// Get the device dark mode
  ///
  /// Example: `context.isDarkMode`
  bool get isDarkMode => MediaQuery.of(this).platformBrightness == .dark;

  /// Get if keyboard is visible
  ///
  /// Example: `context.isKeyboardVisible`
  bool get isKeyboardVisible => MediaQuery.of(this).viewInsets.bottom != 0;

  /// Check if the device orientation is landscape
  ///
  /// Example: `context.isLandscape`
  bool get isLandscape => orientation == .landscape;

  /// Check if the device orientation is portrait
  ///
  /// Example: `context.isPortrait`
  bool get isPortrait => orientation == .portrait;

  /// Check if the current directionality is right-to-left
  ///
  /// Example: `context.isRTL`
  bool get isRTL => Directionality.of(this) == .rtl;

  /// Check if the current directionality is left-to-right
  ///
  /// Example: `context.isLTR`
  bool get isLTR => Directionality.of(this) == .ltr;

  /// Check if the device is tablet-sized (shortestSide ≥ 600)
  ///
  /// Example: `context.isTablet`
  bool get isTablet => shortestSide >= 600;

  /// Returns true if device accessibility high contrast is enabled.
  ///
  /// Example: `context.isHighContrast`
  bool get isHighContrast => MediaQuery.of(this).highContrast;

  /// Returns true if width < 360px (useful for responsive).
  ///
  /// Example: `context.isSmallScreen`
  bool get isSmallScreen => MediaQuery.of(this).size.width < 360;

  /// Returns true if the navigator can pop.
  ///
  /// Example: `context.canPop`
  bool get canPop => Navigator.of(this).canPop();

  /// Returns true if system's animations are disabled by the user.
  ///
  /// Example: `context.isAnimationsDisabled`
  bool get isAnimationsDisabled => MediaQuery.of(this).disableAnimations;

  // ? =============== Package Info ===============
  /// Get the package info
  ///
  /// Example: `context.packageInfo`
  Future<PackageInfo> get packageInfo async => await PackageInfo.fromPlatform();

  /// Get the app info
  ///
  /// Example: `await context.appInfo`
  Future<ExAppModel> get appInfo async {
    final pInfo = await packageInfo;
    return ExAppModel(
      versionCode: pInfo.buildNumber,
      versionName: pInfo.version,
      version: '${pInfo.buildNumber} (${pInfo.version})',
      packageName: pInfo.packageName,
      appName: pInfo.appName,
      installTime: pInfo.installTime,
      updateTime: pInfo.updateTime,
      installedFromStore: pInfo.installerStore,
    );
  }

  // ? =============== Device Info ===============
  /// Get the device info
  ///
  /// Example: `context.deviceInfo`
  Future<BaseDeviceInfo> get deviceInfo async =>
      await DeviceInfoPlugin().deviceInfo;

  /// Get the android device info
  ///
  /// Example: `context.androidInfo`
  Future<AndroidDeviceInfo> get androidInfo async =>
      await DeviceInfoPlugin().androidInfo;

  /// Get the ios device info
  ///
  /// Example: `context.iosInfo`
  Future<IosDeviceInfo> get iosInfo async => await DeviceInfoPlugin().iosInfo;

  /// Get the windows device info
  ///
  /// Example: `context.windowsInfo`
  Future<WindowsDeviceInfo> get windowsInfo async =>
      await DeviceInfoPlugin().windowsInfo;

  /// Get the macos device info
  ///
  /// Example: `context.macosInfo`
  Future<MacOsDeviceInfo> get macosInfo async =>
      await DeviceInfoPlugin().macOsInfo;

  /// Get the web browser info
  ///
  /// Example: `context.webBrowserInfo`
  Future<WebBrowserInfo> get webBrowserInfo async =>
      await DeviceInfoPlugin().webBrowserInfo;

  /// Get the Linux device info
  ///
  /// Example: `context.linuxInfo`
  Future<LinuxDeviceInfo> get linuxInfo async =>
      await DeviceInfoPlugin().linuxInfo;
}
