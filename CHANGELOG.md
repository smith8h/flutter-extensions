# 1.10.0

## Added
### NumberExtensions
- `fixed000` returns a string representation of this number with 3 decimal places.
- `isOdd` returns `true` if this number is a odd number.
- `week` returns the duration of weeks in this number.
- `month` returns the duration of months in this number.
- `year` returns the duration of years in this number.
- `isNegative` returns `true` if this number is a negative number.
- `isPositive` returns `true` if this number is a positive number.
- `isZero` returns `true` if this number is a zero number.
- `isDouble` returns `true` if this number is a double number.
- `isInt` returns `true` if this number is an integer number.

# 1.9.0
## Added
### BuildContextExtensions
- `appInfo` returns the app info.
- `packageInfo` returns the package info.
- `popAndPushNamed` pop the current route off the navigator stack and push a new route.
- `pushNamedAndRemoveUntil` push a named route and remove until a route is found.
- `popAndPushNamed` pop the current route off the navigator stack and push a new route.

# 1.8.0
## Added
### BoolExtensions
- `fold` do some logic according to the state of this bool.
- `lazyFold` do some async logic according to the state of this bool.

### BuildContextExtensions
- `pushReplacement` push and replace the current route with a new widget.
- `pushReplacementNamed` push and replace the current route with a new named route.

### NumberExtensions
- `w` get the dynamic width based on screen size provided, used in responsive UI.
- `h` get the dynamic height based on screen size provided, used in responive UI.

### ObjectExtensions
- `isNull` returns true if the object is null.
- `isNotNull` return true if the object is not null.

### StringExtensions
- `isNotBlank` returns true if the string is not empty in any chance.

### WidgetExtensions
- `safeArea` wrap current widget with SafeArea.

## Changes and Migrations
### BuildContextExtensions
- `pushNamedArgs` removed as the `pushNamed` do the same work now.

### StringExtensions
- `matches` is now accepts `r'String'` directly without the need for `RegExp(r'String')`.

### 🔧 Static Context Manager
From `1.8.0` on.. there is no need for calling `FlutterSExtensions.update(context)` in `MaterialApp.builder``FlutterSExtensions`. but it's still can be called in tests.
You can now wrap your app with `SExtensionsScreenUtil` for better dynamic scaling and responsive UI usage:
```dart
SExtensionsScreenUtil(
  screenSize: const Size(390.0, 844.0), // screen size from design (e.g., Figma, ...)
  app: MaterialApp(
    home: const MyHomePage(),
  ),
);
```

# 1.7.0
## Added
### BuildContextExtensions
- `deviceInfo` returns the device info.
- `androidInfo` returns the android device info.
- `iosInfo` returns the ios device info.
- `macOsInfo` returns the macos device info.
- `windowsInfo` returns the windows device info.
- `linuxInfo` returns the linux device info.
- `webBrowserInfo` returns the web browser info.

# 1.6.0
## Added
### WidgetExtensions
- `padding` returns a new widget with the given padding for all attributes.
- `margin` returns a new widget with the given margin for all attributes.
- `positioned` returns a new widget with the given position.
- `positionedDirectional` returns a new widget with the given position.
- `roundedRight` returns a new widget with the given radius for the right side.
- `roundedLeft` returns a new widget with the given radius for the left side.
- `card` wrap current widget with card.
- `hero` make a hero widget with the given tag.
- `tooltip` returns a new widget with the given tooltip.
- `intrinsicHeight` returns a new widget with the given height.
- `intrinsicWidth` returns a new widget with the given width.
- `onTap` returns a new widget with the given tap callback.
- `onDoubleTap` returns a new widget with the given double tap callback.
- `onLongPress` returns a new widget with the given long press callback.
- `onTouch` returns a new widget with the given touch callback.
- `ink` returns a new widget with the given ink splash radius.

# 1.5.0
## Added
### BuildContextExtensions
- `arguments` returns the arguments passed to the current route.
- `canPop` returns true if the navigator can pop.
- `isAnimationsDisabled` returns true if system's animations are disabled by the user.
- `longestSide` returns the longest screen dimension.
- `shortestSide` returns the shortest screen dimension.
- `pushNamedArgs` pushes a new page with MaterialPageRoute and the given arguments.

### StringExtensions
- `isUUID` returns `true` if this string is a valid UUID v4 format.
- `containsAny` returns `true` if this string contains any of the given [values].
- `containsAll` returns `true` if this string contains all the given [values].
- `match` returns `true` if this string matches the given [pattern].

## Changed
- `isScreenSmall` changed to `isSmallScreen` to match the new naming convention.

# 1.4.1
## Hotfix - Example
- Update the missing examples in the README.md file.

# 1.4.0
## Added
### NumberExtensions
- `area` returns the area of a circle with this number as radius.
- `perimeter` returns the perimeter of a circle with this number as radius.
- `sphere` returns the surface area of a sphere with this number as radius.
- `cubeVolume` returns the cube volume with this number as radius.
- `toColor` returns the color value of this number.

# 1.3.0
## Added
### StringExtensions
- `isDigit` returns `true` if this string is digit only.
- `isAlpha` returns `true` if this string is alphabetic only.
- `isAlphaNumeric` returns `true` if this string is alphanumeric only.
- `isJson` returns `true` if this string is a valid JSON string.
- `copyToClipboard` copies this string to the clipboard.
- `toColor` returns the color value of this string.

### ColorExtensions
- `toHex` returns the hexadecimal string representation of this color.
- `isDark` returns true if this color is dark.
- `isLight` returns true if this color is light.
- `opacity` returns the color with the given opacity.
- `brightness` returns the color with the given brightness.
- `oppositeColor` returns the opposite color of this color.

### WidgetExtensions
- `scaffold` returns a new Scaffold widget with the given body.

## Fixes
### StringExtensions
- `isBlank` was going in loop when checking for blank string.

# 1.2.0
## Added
### ListExtensions
- `toSet` returns a set with all the unique elements in this list (removes duplicates).
- `toCsv` serializes this list to a CSV line(s).
- `toStringList` converts each element to its toString().
- `mostFrequent` returns the most frequent element(s) in this list.
- `minimum` returns the minimum element in this list.
- `maximum` returns the maximum element in this list.
- `safeGet` returns the element at the given index or null if OOB.
- `removeNulls` removes all null elements from this list.
- `groupBy` groups this list into a map of lists, where each key is the result of applying [key] to each element.
- `containsAll` returns true if this list contains all the elements in [other].
- `containsAny` returns true if this list contains any of the elements in [other].
- `difference` returns a new list with all the elements in this list that are not in [other].
- `symmetricDifference` returns a new list with all the elements in either this list or [other], but not both.
- `wrapWith` wraps each element with a widget builder.

# 1.1.0
## Added
### BoolExtensions
- `toInt` returns `1` if this boolean is `true`, and `0` if this boolean is `false`.
- `toOnOff` returns `'on'` if this boolean is `true`, and `'off'` if this boolean is `false`.
- `toYesNo` returns `'yes'` if this boolean is `true`, and `'no'` if this boolean is `false`.
- `toEnabledDisabled` returns `'enabled'` if this boolean is `true`, and `'disabled'` if this boolean is `false`.
- `whenTrue` executes [action] if this boolean is `true`.
- `whenFalse` executes [action] if this boolean is `false`.

### BuildContextExtensions
- `theme` gets the current ThemeData.
- `textTheme` gets the current TextTheme.
- `colorScheme` gets the current ColorScheme.
- `isRTL` gets if the current directionality is right-to-left.
- `isLTR` gets if the current directionality is left-to-right.
- `topPadding` returns the top padding of the app bar.
- `bottomPadding` returns the bottom padding of the navigation bar.
- `devicePixelRatio` gets the device pixel ratio.
- `isTablet` gets if the device is tablet-sized (shortestSide ≥ 600).
- `pop` pops the current route off the navigator stack.
- `push` pushes a new page with MaterialPageRoute.
- `pushNamed` pushes a new page with MaterialPageRoute and the given name.
- `brightness` gets the current brightness independent of the theme.
- `isHighContrast` gets if device accessibility high contrast is enabled.
- `isScreenSmall` gets if width < 360px (useful for responsive).
- `widgetSize` gets the size of the widget tied to this context.
- `widgetPosition` gets the global position of the widget.

# 1.0.1
## Added
### MapExtensions
- `mergeWith` merges two maps, applying a custom combine function when keys overlap.
- `filterKeys` returns a new map containing only entries whose keys satisfy a predicate.
- `filterValues` returns a new map containing only entries whose values satisfy a predicate.
- `excludeKeys` returns a new map containing entries whose keys are not in the [keys] list.
- `excludeValues` returns a new map containing entries whose values are not in the [values] list.
- `pickKeys` returns a new map containing entries whose keys are in the [keys] list.
- `pickValues` returns a new map containing entries whose values are in the [values] list.
- `mapKeys` transforms all the keys in the map by applying a function, producing a new map.
- `mapValues` transforms all the values in the map by applying a function, producing a new map.
- `toQueryString` converts the map into a URL query-string style representation (e.g. ?key1=value1&key2=value2).
- `invert` swaps keys and values (values must be unique).
- `safeUpdate` updates the value of the key if it exists. Else, do nothing.
- `ensureKey` ensures that the map contains the [key].
  If not, add it with the [value] to prevent null or overriding values.
- `containsAllKeys` checks if it contains all required keys.
- `containsAnyKey` checks if it contains any key from a list.

# 1.0.0
## Fixes
This is the first version of the package.

Version `1.0.0` includes a hotfix for the animations extensions for widgets.

This version includes all the extensions and utils from the previous versions.

# 0.0.9
## Added
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

### BuildContextExtensions
- `isKeyboardVisible` returns `true` if the keyboard is visible.
- `keyboardHeight` returns the height of the keyboard.
- `isLandscape` returns `true` if the device orientation is landscape.
- `isPortrait` returns `true` if the device orientation is portrait.

# 0.0.5
## Added
### BuildContextExtensions
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
- Static initialization and context management with `FlutterSExtensions` to support property-based access without passing `BuildContext`.
- Initialization verification (`isInitialized`), explicit init (`init`), and
  hot-reload-safe updates (`update`).
