# s_extensions

A dart package aiming to provide useful extensions and helper functions to ease and speed up development.

Works great for building responsive UIs — for example, Baghdad news headers, Mosul marketplace cards, or Erbil prayer time widgets.

- 📋 Well Documented
- ⚔️ Fully Tested
- 👌 Follows Code Quality Guidelines
- 🦾 Production Ready

## Installation

1. Add to `pubspec.yaml`:

    ```yaml
    dependencies:
      s_extensions: <latest_version>
    ```

2. Import library into your code.

    ```dart
    import 'package:s_extensions/s_extensions.dart';
    ```

## Quick Start

Recommended initialization (supports hot reload and navigation changes):

```dart
MaterialApp(
  builder: (context, child) {
    FlutterExtensions.update(context); // keep stored view & media fresh
    return child!;
  },
  home: const MyHomePage(),
);
```

Usage examples:

```dart
// News header spanning 90% of the screen width
SizedBox(width: 0.9.screenWidth);
// or use: 0.9.screenWidth.horizontalSpace

// Marketplace card spacing
final spacing = 16.half; // 8.0

// Prayer reminder interval
final interval = 15.min; // Duration(minutes: 15)

// Button ripple timing
final ripple = 250.msec; // Duration(milliseconds: 250)

// List item padding
final padding = 80.quarter; // 20.0

// Daily refresh window
final refreshWindow = 2.hr; // Duration(hours: 2)

// Custom number format
final customFormat = 1234.567.format('###,###.00'); // 1,234.57

// Custom date format
final customFormat = DateTime.now().format('yyyy-MM-dd'); // 2023-08-24

// Prayer time format
final timeFormat = DateTime.now().HHmm; // 12:34
```

## Features

### Number extensions

- `half`, `quarter` — simple fractions as `double`.
- `square`, `sqRoot` — square and square root.
- `misec`, `msec`, `sec`, `min`, `hr`, `day` — `Duration` factories.
- `screenWidth`, `screenHeight` — property-based screen size queries using a static context manager.
- `horizontalSpace`, `verticalSpace` — quick `SizedBox` builders.
- `fixed00`, `fixed0` — string representations with 2 and 1 decimal places.
- `format` — format numbers with custom decimal places.

### String extensions

- `firstLetterUpperCase` — capitalize the first letter.
- `isEmail`, `isPhoneNumber`, `isUrl` — basic validation.
- `toDouble`, `toInt` — safe parsing with fallbacks.
- `toDate` — convert string to `DateTime`.

### DateTime extensions

- `format` — format dates with custom patterns.
- `yyyyMMdd`, `yyyyMMddHHmm`, `yyyyMMddHHmmss`, `HHmm` — common date and time representations.

## Static Context Manager

`FlutterExtensions` is a tiny singleton managing a `FlutterView` and a cached `MediaQueryData`. It powers property access like `0.9.screenWidth` and `0.9.screenHeight` without explicitly passing `BuildContext`.

Initialization patterns:

- Explicit (recommended): call `FlutterExtensions.update(context)` in `MaterialApp.builder`.
- Lazy: first use attempts `WidgetsBinding.instance.platformDispatcher.views.first`. This works after `runApp`; it throws if no view is available (e.g., too early in tests).

Key API:

- `FlutterExtensions.init([context])` — initialize explicitly; optional `BuildContext`.
- `FlutterExtensions.update(context)` — refresh stored `FlutterView` and `MediaQueryData` on rebuilds/hot reload.
- `FlutterExtensions.isInitialized` — check readiness.
- `FlutterExtensions.mediaQuery()` — get the current `MediaQueryData` (attempts lazy init; may throw).
- `FlutterExtensions.reset()` — clear cached references (useful for tests).

Hot reload and metrics:

- Implements `WidgetsBindingObserver.didChangeMetrics` to refresh cached `MediaQueryData` on orientation or size changes.

## Error Handling

- `mediaQuery()` may throw `StateError` if Flutter is not fully initialized or no `FlutterView` is available.
- Ensure your app has started (`runApp`) and prefer using `FlutterExtensions.update(context)` for determinism.

## Testing

- Call `WidgetsFlutterBinding.ensureInitialized()` in tests.
- Use `FlutterExtensions.reset()` to clear cached state between tests.

## Examples

- Headlines: `SizedBox(width: 0.9.screenWidth)` for responsive title bars.
- Marketplace grid: `8.verticalSpace` and `8.horizontalSpace` for compact spacing.
- Prayer times: `15.min` intervals for notifications.
- UI animations: `250.msec` ripple duration for buttons.
- List views: `80.quarter` padding for neat item spacing.

## Notes & Best Practices

- Prefer `FlutterExtensions.update(context)` at the app root to avoid edge cases.
- Values for `screenWidth` and `screenHeight` are typically between `0` and `1` for proportional sizing.
- Duration conversions truncate fractional values via `toInt()`.

## License

Licensed under the MIT License. See `LICENSE` for details.

## Changelog

See `CHANGELOG.md` for release notes.
