import 'dart:convert';

extension MapExtensions on Map {
  /// Returns a parsed json [string] of this map.
  ///
  /// Example: `{"name": "John", "age": 30}.toJson` -> `'{"name": "John", "age": 30}'`.
  String? get toJson => jsonEncode(this);
}
