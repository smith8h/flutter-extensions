# 0.0.3

## Added
### StringExtensions
- `reverse` now returns the reversed version of this string.
- `words` now returns a list of words in this string.
- `parseJson` now returns a parsed json [map] of this string.
- `isBlank` now returns `true` if this string is a blank by any chance.

### MapExtensions
- `toJson` now returns a parsed json [string] of this map.

### ListExtensions
- `toJson` now returns a parsed json [string] of this list.

### NumberExtensions
- `isBetween` now returns `true` if this number is between the provided [min] and [max] values.
- `isDivisibleBy` now returns `true` if this number is divisible by the provided [divisor].

## Changes
### StringExtensions
- `firstLetterUpperCase` is now deleted. Use `capitalize` instead.
- `toDate` now returns `DateTime?` to handle invalid formats.
- `toDouble` now returns `double?` to handle invalid formats.
- `toInt` now returns `int?` to handle invalid formats.

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
