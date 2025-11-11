# s_extensions

<div align="center">
  <a href="https://pub.dev/packages/s_extensions/">
    <img src="https://img.shields.io/pub/v/s_extensions.svg" />
  </a>
  <a href="https://opensource.org/licenses/MIT" target="_blank">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg"/>
  </a>
  <a href="https://github.com/smith8h/flutter-extensions/issues" target="_blank">
    <img alt="GitHub: smith8h" src="https://img.shields.io/github/issues-raw/smith8h/flutter-extensions?style=flat" />
  </a>
  <img src="https://img.shields.io/github/last-commit/smith8h/flutter-extensions" />
  <a href="https://github.com/smith8h">
    <img alt="GitHub: smith8h" src="https://img.shields.io/github/followers/smith8h?label=Follow&style=social" />
  </a>
  <a href="https://github.com/smith8h/flutter-extensions">
    <img src="https://img.shields.io/github/stars/smith8h/flutter-extensions?style=social" />
  </a>
</div>

---

A dart package aiming to provide useful extensions and helper functions to ease and speed up development.

Works great for building responsive UIs — for example, News headers, Marketplace cards, or Prayer time widgets.

- 📋 Well Documented
- ⚔️ Fully Tested
- 👌 Follows Code Quality Guidelines
- 🦾 Production Ready

| On       | Extensions | Functions | Operators |
| -------- | --------   | --------  | --------  |
| Bool     |    1       |    0      |    0      |
| Context  |    6       |    1      |    0      |
| DateTime |    15      |    0      |    2      |
| List     |    4       |    3      |    1      |
| Map      |    1       |    0      |    0      |
| Number   |    18      |    2      |    0      |
| String   |    15      |    0      |    0      |
| Widget   |    21      |    1      |    0      |
| **Total**|    **71**  |    **7**  |    **3**  |
| **All**  |    **81**  |

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

## Features
Usage examples:

### Bool extensions
```dart
isLoaded.toggle; // toggles isLoaded to false if true, and true if false
```

### Context extensions
```dart
context.hideKeyboard; // hides the keyboard
context.orientation; // returns the device orientation
context.isDarkMode; // returns true if the device is in dark mode
context.isKeyboardVisible; // returns true if the keyboard is visible
context.keyboardHeight; // returns the height of the keyboard
context.isLandscape; // returns true if the device orientation is landscape
context.isPortrait; // returns true if the device orientation is portrait
```

#### DateTime extensions
```dart
DateTime.now().format('yyyy-MM-dd'); // 2023-08-24
now().yyyyMMdd; // 2023-08-24
now().yyyyMMddHHmmss; // 2023-08-24 12:34:56
now().yyyyMMddHHmm; // 2023-08-24 12:34
now().HHmm; // 12:34
now().isPast; // false
now().isFuture; // false
now().isToday; // true
now().isTomorrow; // false
now().isYesterday; // false
now().isInPreviousMonth; // false
now().isInPreviousYear; // false
now().isInNextMonth; // false
now().isInNextYear; // false

operator +(Duration duration) // Returns a new DateTime with this duration added.
(now() + 1.day); // 2023-08-25 12:34:56.000
operator -(Duration duration) // Returns a new DateTime with this duration subtracted.
(now() - 1.day); // 2023-08-23 12:34:56.000

(now() - 1.day).fromNow; // Duration(days: 1)
```

### List extensions
```dart
[1, 2, 3].sum; // 6
[1, 2, 3].average; // 2.0
[1, 2, 3].toJson; // '[1, 2, 3]'
operator +(element) // Adds new [element] or [elements] to this list.
[1, 2, 3].random; // 2
[Widgets].toStack(); // Stack(children: [Widgets])
[Widgets].toColumn(); // Column(children: [Widgets])
[Widgets].toRow(); // Row(children: [Widgets])
```

### Map extensions
```dart
{'name': 'John', 'age': 30}.toJson; // '{"name": "John", "age": 30}'
```

### Number extensions
```dart
8.half; // 4.0
8.quarter; // 2.0
8.square; // 64.0
8.sqRoot; // 2.8284271247461903

300.misec; // Duration(microseconds: 300)
300.msec; // Duration(milliseconds: 300)
300.sec; // Duration(seconds: 300)
300.min; // Duration(minutes: 300)
300.hr; // Duration(hours: 300)
300.day; // Duration(days: 300)

0.5.screenWidth; // half of the screen width
0.5.screenHeight; // half of the screen height

123.456.fixed00; // 123.46
123.456.fixed0; // 123.5
123.456.format('0.00'); // 123.46

16.verticalSpace; // SizedBox(height: 16.0)
16.horizontalSpace; // SizedBox(width: 16.0)

20.isDivisibleBy(5); // true
30.isBetween(20, 40); // true
50.isEven; // true
```

### String extensions
```dart
'hello'.capitalize; // Hello
'hello'.reverse; // olleh
'hello@example.com'.isEmail; // true
'+1234567890'.isPhoneNumber; // true
'https://www.example.com'.isUrl; // true
"23.4".toDouble; // 23.4
"23.4".toInt; // 23
"2023-08-24".toDate; // 2023-08-24 00:00:00.000
"Hello World!".words; // ["Hello", "World!"]
'{"name": "John", "age": 30}'.parseJson` // {'name': 'John', 'age': 30} as Map
'racecar'.isPalindrome; // true
'congratolations'.truncate(4); // 'cong...'
'Hello World!'.removeWhiteSpace; // 'HelloWorld!'
'Hello123 World!'.removeNumbers; // 'Hello World!'
```

### Widget extensions
```dart
[
  Text('Hello World!').marginAll(16.0),
  Text('Hello World!').marginSymmetric(vertical: 16.0, horizontal: 16.0),
  Text('Hello World!').marginOnly(left: 16.0, top: 16.0, right: 16.0, bottom: 16.0),

  Text('Hello World!').paddingAll(16.0),
  Text('Hello World!').paddingSymmetric(vertical: 16.0, horizontal: 16.0),
  Text('Hello World!').paddingOnly(left: 16.0, top: 16.0, right: 16.0, bottom: 16.0),

  [
    Text('Hello World!').expanded(),
    Text('Hello World!').expanded(),
  ].toColumn(spacer: 16),
  Text('Hello World!').flexible(),

  16.verticalSpace.center(),
  Text('Hello World!').directionality(direction: TextDirection.ltr),
  Image.asset('path').align(alignment: Alignment.center),

  [
    Text('Hello World!')
      .center()
      .paddingAll(12)
      .decoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
  ].toStack(),
  Text('Hello World!')
    .constrained(width: 100.0, height: 70.0)
    .rounded(radius: 16.0),
  Text('Hello World!')
    .height(70.0)
    .roundedTop(radius: 16.0),
  Text('Hello World!')
    .width(100.0)
    .roundedBottom(radius: 16.0)
    .gestures(
      onTap: () => print('tap'),
    ),

  [
    Widgets...
  ].toColumn()
    .scrollable()
    .refreshable(onRefresh: () async {
      await Future.delayed(2.seconds),
    }),
].toColumn();
```

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
