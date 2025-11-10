extension StringExtensions on String {
  // ? ================== Converters ========================

  /// Returns the first letter of this string in uppercase.
  ///
  /// Example: `'hello'.firstLetterUpperCase` -> `'Hello'`.
  String get firstLetterUpperCase =>
      isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : this;

  /// Returns the date time value of this string.
  ///
  /// Example: `'2023-01-01'.toDate` -> `2023-01-01 00:00:00.000`.
  DateTime get toDate => DateTime.parse(this);

  /// Returns the double value of this string.
  ///
  /// Example: `'123.45'.toDouble` -> `123.45`.
  double get toDouble => double.tryParse(this) ?? 0.0;

  /// Returns the int value of this string.
  ///
  /// Example: `'123'.toInt` -> `123`.
  int get toInt => int.tryParse(this) ?? 0;

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
}
