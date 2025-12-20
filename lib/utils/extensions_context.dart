import 'dart:ui';
import 'package:flutter/widgets.dart';

/// Manages shared Flutter context and view dependencies for extension getters.
///
/// This singleton-style utility stores a `FlutterView` and derived
/// `MediaQueryData` so extension properties like `0.2.screenWidth` can be
/// accessed without passing a `BuildContext` explicitly.
///
/// Initialization patterns:
/// - Lazy: If you don't call [init], the first access attempts a lazy
///   initialization using `WidgetsBinding.instance.platformDispatcher.views.first`.
///   This generally works after `runApp`, but will throw if no view is available
///   (e.g., early in tests).
/// - Explicit: Call [init] with a `BuildContext` as early as possible.
///   A convenient place is `MaterialApp.builder` or `WidgetsApp.builder`:
///
/// ```dart
/// MaterialApp(
///   builder: (context, child) {
///     FlutterSExtensions.update(context); // keeps data fresh on hot reload
///     return child!;
///   },
///   home: const MyHomePage(),
/// )
/// ```
///
/// Hot reload: Use [update] inside a widget `builder` to refresh the stored
/// `FlutterView` and `MediaQueryData` whenever the tree rebuilds, including hot
/// reloads and route changes.
class FlutterSExtensions with WidgetsBindingObserver {
  FlutterSExtensions._internal();

  static final _singleton = FlutterSExtensions._internal();

  static bool _observerRegistered = false;
  static FlutterView? _view;
  static MediaQueryData? _media;
  static bool _initialized = false;
  static double designWidth = 390.0;
  static double designHeight = 844.0;

  /// Initialize the shared context.
  ///
  /// If [context] is provided, the current `FlutterView` is obtained via
  /// `View.of(context)` and `MediaQueryData` is derived from it.
  ///
  /// If [context] is omitted, the method attempts lazy initialization using the
  /// first available view from `WidgetsBinding.instance.platformDispatcher.views`.
  /// This requires the Flutter binding to be ready (i.e., after `runApp` or
  /// `WidgetsFlutterBinding.ensureInitialized()` in tests).
  static void init([BuildContext? context]) {
    final binding = WidgetsBinding.instance;

    final FlutterView view;
    if (context != null) {
      view = View.of(context);
    } else {
      final views = binding.platformDispatcher.views;
      if (views.isEmpty) {
        throw StateError(
          'FlutterSExtensions initialization failed: No FlutterView available. '
          'Provide a BuildContext to FlutterSExtensions.init(context).',
        );
      }
      view = views.first;
    }

    _view = view;
    _media = MediaQueryData.fromView(view);
    _initialized = true;

    if (!_observerRegistered) {
      binding.addObserver(_singleton);
      _observerRegistered = true;
    }
  }

  /// Update the stored view and media using the latest [context].
  ///
  /// Call this inside a top-level `builder` or a widget's lifecycle where
  /// `BuildContext` is stable. This keeps values fresh across hot reloads,
  /// navigation, and metric changes.
  static void update(BuildContext context) {
    if (!_initialized) {
      init(context);
      return;
    }
    final FlutterView view = View.of(context);
    _view = view;
    _media = MediaQueryData.fromView(view);
  }

  static void setDesignSize(Size size) {
    designWidth = size.width;
    designHeight = size.height;
  }

  /// Returns whether initialization has happened and the data is ready.
  static bool get isInitialized => _initialized && _media != null;

  /// Returns the current `MediaQueryData`, ensuring initialization.
  ///
  /// If not initialized, attempts a lazy initialization. Throws a `StateError`
  /// when no view is available or when Flutter isn't fully initialized.
  static MediaQueryData mediaQuery() {
    if (_media != null) return _media!;
    init();
    if (_media != null) return _media!;
    throw StateError(
      'FlutterSExtensions not initialized: call FlutterSExtensions.init(context) '
      'early (e.g., in MaterialApp.builder) or ensure a FlutterView is available.',
    );
  }

  /// Reset stored references. Useful for tests or full app restarts.
  static void reset() {
    _initialized = false;
    _media = null;
    _view = null;
    if (_observerRegistered) {
      WidgetsBinding.instance.removeObserver(_singleton);
      _observerRegistered = false;
    }
  }

  /// Reacts to metric changes (e.g., orientation, window resize) and refreshes
  /// the cached `MediaQueryData`. This supports dynamic screen changes.
  @override
  void didChangeMetrics() {
    final WidgetsBinding binding = WidgetsBinding.instance;
    if (_view != null) {
      _media = MediaQueryData.fromView(_view!);
      return;
    }
    final views = binding.platformDispatcher.views;
    if (views.isNotEmpty) {
      _view = views.first;
      _media = MediaQueryData.fromView(_view!);
      _initialized = true;
    }
  }
}
