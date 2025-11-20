import 'dart:convert';

extension StringExtensions on String {
  // ? ================== Converters ========================

  /// Returns the date time value of this string.
  ///
  /// Example: `'2023-01-01'.toDate` -> `2023-01-01 00:00:00.000`.
  DateTime? get toDate => DateTime.tryParse(this);

  /// Returns the double value of this string.
  ///
  /// Example: `'123.45'.toDouble` -> `123.45`.
  double? get toDouble => double.tryParse(this);

  /// Returns the int value of this string.
  ///
  /// Example: `'123'.toInt` -> `123`.
  int? get toInt => int.tryParse(this);

  // ? ================== Validators ========================

  /// Returns `true` if this string is a valid email address.
  ///
  /// Example: `'example@domain.com'.isEmail` -> `true`.
  bool get isEmail =>
      RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(this);

  /// Returns `true` if this string is a valid phone number.
  ///
  /// Example: `'1234567890'.isPhoneNumber` -> `true`.
  bool get isPhoneNumber => RegExp(r'^[0-9]+$').hasMatch(this);

  /// Returns `true` if this string is a valid URL.
  ///
  /// Example: `'https://www.example.com'.isUrl` -> `true`.
  bool get isUrl => RegExp(
    r'^https?://[\w-]+(\.[\w-]+)+([\w.,@?^=%&:/~+#-]*[\w@?^=%&/~+#-])?$',
  ).hasMatch(this);

  /// Returns `true` if this string is a blank by any chance.
  ///
  /// Example: `'  '.isBlank` -> `true`.
  bool get isBlank => trim().isBlank;

  /// Checks whether the `String` is a palindrome.
  ///
  /// Example:
  /// ```dart
  /// String foo = 'Hello World';
  /// bool isPalindrome = foo.isPalindrome; // false;
  /// String foo = 'racecar';
  /// bool isPalindrome = foo.isPalindrome; // true;
  /// ```
  bool get isPalindrome {
    if (isBlank) {
      return false;
    }
    return this == reverse;
  }

  // ? ================== Operators ========================

  /// Truncates the `String` when more than `length` characters exist.
  ///
  /// [length] must be more than 0.
  ///
  /// If [length] > String.length the same `String` is returned without truncation.
  ///
  /// Example:
  /// ```dart
  /// String f = 'congratulations';
  /// String truncated = f.truncate(4); // 'cong...'
  /// ```
  String truncate(int length) {
    if (isBlank || length <= 0 || length >= this.length) {
      return this;
    }
    return '${substring(0, length)}...';
  }

  /// Removes all the white spaces from the `String`.
  ///
  /// Example:
  /// ```dart
  /// String f = 'Hello World';
  /// String noWhiteSpace = f.removeWhiteSpace; // 'HelloWorld'
  /// ```
  String get removeWhiteSpace => replaceAll(RegExp(r'\s+'), '');

  /// Removes all the numbers from the `String`.
  ///
  /// Example:
  /// ```dart
  /// String f = 'Hello123World'.removeNumbers; // 'HelloWorld'
  /// ```
  String get removeNumbers => replaceAll(RegExp(r'[0-9]'), '');

  /// Returns the capitalized version of this string.
  ///
  /// Example: `'hello'.capitalize` -> `'Hello'`.
  String get capitalize =>
      isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : this;

  /// Returns the reversed version of this string.
  ///
  /// Example: `'hello'.reverse` -> `'olleh'`.
  String get reverse => isNotEmpty ? substring(1).reverse + this[0] : this;

  /// Returns a list of words in this string.
  ///
  /// Example: `'hello world'.words` -> `['hello', 'world']`.
  List<String> get words => split(RegExp(r'\s+'));

  /// Returns a parsed json [map] of this string.
  ///
  /// Example: `'{"name": "John", "age": 30}'.parseJson` -> `{'name': 'John', 'age': 30}`.
  Map<String, dynamic>? get parseJson =>
      jsonDecode(this) as Map<String, dynamic>?;
}
