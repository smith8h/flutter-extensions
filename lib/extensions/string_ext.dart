import 'dart:convert';

import 'package:flutter/services.dart';

extension StringExtensions on String {
  // ? ================== Converters ========================

  /// Returns the date time value of this string.
  ///
  /// Example: `'2023-01-01'.toDate` -> `2023-01-01 00:00:00.000`.
  DateTime? get toDate => .tryParse(this);

  /// Returns the double value of this string.
  ///
  /// Example: `'123.45'.toDouble` -> `123.45`.
  double? get toDouble => .tryParse(this);

  /// Returns the int value of this string.
  ///
  /// Example: `'123'.toInt` -> `123`.
  int? get toInt => .tryParse(this);

  /// Returns the color value of this string.
  ///
  /// Example: `'#FF0000'.toColor` -> `Color(0xFFFF0000)`.
  Color? get toColor {
    if (isBlank) return null;
    var hex = trim();
    if (hex.startsWith('#')) hex = hex.substring(1);
    if (hex.startsWith('0x')) hex = hex.substring(2);
    if (!RegExp(r'^[0-9a-fA-F]{6}$|^[0-9a-fA-F]{8}$').hasMatch(hex)) {
      return null;
    }
    if (hex.length == 6) hex = 'FF$hex';
    return Color(.parse(hex, radix: 16));
  }

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
  bool get isBlank => trim().isEmpty;

  /// Returns `true` if this string is a not blank by any chance.
  ///
  /// Example: `' a '.isNotBlank` -> `true`.
  bool get isNotBlank => trim().isNotEmpty;

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

  /// Checks if this string is digit only.
  ///
  /// Example: `'123456'.isDigit` -> `true`.
  bool get isDigit => RegExp(r'^[0-9]+$').hasMatch(this);

  /// Checks if this string is alphabetic only.
  ///
  /// Example: `'abcABC'.isAlpha` -> `true`.
  bool get isAlpha => RegExp(r'^[a-zA-Z]+$').hasMatch(this);

  /// Checks if this string is alphanumeric only.
  ///
  /// Example: `'abc123ABC'.isAlphaNumeric` -> `true`.
  bool get isAlphaNumeric => RegExp(r'^[a-zA-Z0-9]+$').hasMatch(this);

  /// Checks if this string is a valid JSON string.
  ///
  /// Example: `'{"name": "John", "age": 30}'.isJson` -> `true`.
  bool get isJson {
    if (isBlank) return false;
    try {
      jsonDecode(this);
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Checks if this string is a valid UUID v4 format.
  ///
  /// Example: `"123e4567-e89b-12d3-a456-426614174000".isUUID` -> `true`.
  bool get isUUID => RegExp(
    r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$',
  ).hasMatch(this);

  /// Checks if this string contains any of the given [values].
  ///
  /// Example: `"123e4567-e89b-12d3-a456-426614174000".containsAny(['123', '456'])` -> `true`.
  bool containsAny(List<String> values) =>
      values.any((value) => contains(value));

  /// Checks if this string contains all the given [values].
  ///
  /// Example: `"123e4567-e89b-12d3-a456-426614174000".containsAll(['123', '456'])` -> `true`.
  bool containsAll(List<String> values) =>
      values.every((value) => contains(value));

  /// Matches this string against the given [pattern].
  ///
  /// ```dart
  /// final text = "123e4567-e89b-12d3-a456-426614174000";
  /// final pattern = r'[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}';
  /// bool hasMatch = text.match(pattern); // true.
  bool match(String pattern) => RegExp(pattern).hasMatch(this);

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

  // ? ================== Functions ========================

  /// Copies this string to the clipboard.
  void copyToClipboard() => Clipboard.setData(ClipboardData(text: this));
}
