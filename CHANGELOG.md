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
