# 1.0.0
## Fixes
This is the first version of the package.

Version `1.0.0` includes a hotfix for the animations extensions for widgets.

This version includes all the extensions and utils from the previous versions.

# 0.0.9

### Added
### DateTimeExtensions
- `formatHrMin12` formats the time in 12-hour format.
- `formatHrMinSec12` formats the time in 12-hour format with seconds.
- `formatHrMin24` formats the time in 24-hour format.
- `formatHrMinSec24` formats the time in 24-hour format with seconds.
- `formatDay` gets the full name of this day of this date.
- `formatMonth` gets the full name of this month of this date.

## Changed
### DateTimeExtensions
- `yyyyMMdd` changed to `formatYearMonthDay` for better readability.
- `ddMMyyyy` changed to `formatDayMonthYear` for better readability.
- `yyyyMMddHHmmss` changed to `formatYearMonthDayHrMinSec` for better readability.
- `yyyyMMddHHmm` changed to `formatYearMonthDayHrMin` for better readability.

# 0.0.8

## Added
### WidgetExtensions
- `fade` fades the widget.
- `scale` scales the widget.
- `slideUp` slides the widget up.
- `slideDown` slides the widget down.
- `slideLeft` slides the widget left.
- `slideRight` slides the widget right.
- `rotate` rotates the widget.

# 0.0.7

## Added
### StringExtensions
- `removeNumbers` removes all the numbers from the `String`.
- `removeWhiteSpace` removes all the white spaces from the `String`.

### WidgetExtensions
- `marginAll` returns a new widget with the given margin.
- `marginSymmetric` returns a new widget with the given margin.
- `marginOnly` returns a new widget with the given margin.
- `paddingAll` returns a new widget with the given padding.
- `paddingSymmetric` returns a new widget with the given padding.
- `paddingOnly` returns a new widget with the given padding.
- `expanded` returns a new expanded widget with the given flex.
- `flexible` returns a new flexible widget with the given flex.
- `align` returns a new aligned widget with the given alignment.
- `center` returns a new centered widget.
- `directionality` returns a new directed text widget with the given text direction.
- `rounded` returns a new rounded widget with the given radius.
- `roundedTop` returns a new rounded widget from top with the given radius.
- `roundedBottom` returns a new rounded widget from bottom with the given radius.
- `decoration` returns a new decorated widget with the given decoration.
- `refreshable` returns a new refresh indicator widget.
- `scrollable` returns a new scrollable widget with the given scroll physics.
- `constrained` returns a new constrained widget with the given width and height.
- `width` returns a new constrained widget with the given width.
- `height` returns a new constrained widget with the given height.
- `gestures` returns a new [GestureDetector] widget with the given gestures.

# 0.0.6

## Added
### StringExtensions
- `isPalindrome` returns `true` if this string is a palindrome.
- `truncate` truncates the `String` when more than `length` characters exist.

### ContextExtensions
- `isKeyboardVisible` returns `true` if the keyboard is visible.
- `keyboardHeight` returns the height of the keyboard.
- `isLandscape` returns `true` if the device orientation is landscape.
- `isPortrait` returns `true` if the device orientation is portrait.

# 0.0.5

## Added
### ContextExtensions
- `hideKeyboard` hides the keyboard.
- `orientation` returns the device orientation.
- `isDarkMode` returns `true` if the device is in dark mode.

# 0.0.4

## Added
### DateTimeExtensions
- `operator +` ads this duration of time to this date and returns the result.
- `operator -` subtracts this duration of time from this date and returns the result.
- `fromNow` returns the duration between this date and now.
- `isPast` returns `true` if this date is in the past.
- `isFuture` returns `true` if this date is in the future.
- `isInPreviousMonth` returns `true` if this date is in the previous month.
- `isInNextMonth` returns `true` if this date is in the next month.
- `isInNextYear` returns `true` if this date is in the next year.
- `isInPreviousYear` returns `true` if this date is in the previous year.
- `isToday` returns `true` if this date is today.
- `isTomorrow` returns `true` if this date is tomorrow.
- `isYesterday` returns `true` if this date is yesterday.

# 0.0.3

## Added
### StringExtensions
- `reverse` returns the reversed version of this string.
- `words` returns a list of words in this string.
- `parseJson` returns a parsed json [map] of this string.
- `isBlank` returns `true` if this string is a blank by any chance.

### MapExtensions
- `toJson` returns a parsed json [string] of this map.

### ListExtensions
- `toJson` returns a parsed json [string] of this list.
- `operator +` ads new [element] or [elements] to this list.
  ```dart
  [1, 2, 3] + 4; // [1, 2, 3, 4]
  [1, 2, 3] + [4, 5, 6]; // [1, 2, 3, 4, 5, 6]
  ```
- `toStack` returns a stack widget with this list as children.
- `toColumn` returns a column widget with this list as children.
- `toRow` returns a row widget with this list as children.
- `random` returns a random element from this list.

### NumberExtensions
- `isBetween` returns `true` if this number is between the provided [min] and [max] values.
- `isDivisibleBy` returns `true` if this number is divisible by the provided [divisor].
- `isEven` returns `true` if this number is a even number.

### BoolExtensions
- `toggle` returns `false` if this boolean is `true`, and `true` if this boolean is `false`.

## Changes
### StringExtensions
- `firstLetterUpperCase` is deleted. Use `capitalize` instead.
- `toDate` returns `DateTime?` to handle invalid formats.
- `toDouble` returns `double?` to handle invalid formats.
- `toInt` returns `int?` to handle invalid formats.

# 0.0.2

## Added
- `NumberExtensions`:  with format helper `format`.
- `DateTimeExtensions`: with format helpers `format`, `yyyyMMdd`, `yyyyMMddHHmm`, `yyyyMMddHHmmss`, `HHmm`.

# 0.0.1

## Added
- `StringExtensions`: `toDate`.
- `NumberExtensions`: `fixed00`, `fixed0`.

# 0.0.0

## Added
- `NumExtensions` with numeric helpers: `half`, `quarter`, `square`, `sqRoot`.
- Duration helpers: `misec`, `msec`, `sec`, `min`, `hr`, `day`.
- `screenWidth` extension getter for responsive layouts via property access
  (e.g., `0.9.screenWidth`).
- Static initialization and context management with `FlutterExtensions` to support property-based access without passing `BuildContext`.
- Initialization verification (`isInitialized`), explicit init (`init`), and
  hot-reload-safe updates (`update`).
