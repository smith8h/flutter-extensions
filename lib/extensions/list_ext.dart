import 'dart:convert';

extension ListExtensions on List {
  /// Returns a parsed json [string] of this list.
  ///
  /// Example: `[1, 2, 3].toJson` -> `'[1, 2, 3]'`.
  String? get toJson => jsonEncode(this);
}
