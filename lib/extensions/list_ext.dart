import 'dart:convert';
import 'dart:math';

import 'package:flutter/widgets.dart';

extension ListExtensions<T> on List<T> {
  // ? =================== Operators ========================

  /// Ads new [element] to this list.
  ///
  /// Example: `[1, 2, 3] + 4` -> `[1, 2, 3, 4]`.
  void operator +(T element) =>
      element is List<T> ? addAll(element) : add(element);

  // ? =================== Actions ========================

  /// Elements in this list not in other.
  ///
  /// Example: `[1, 2, 3].difference([1, 4])` -> `[2, 3]`.
  List<T> difference(Iterable<T> other) =>
      where((e) => !other.contains(e)).toList();

  /// Elements in either but not both.
  ///
  /// Example: `[1, 2, 3].symmetricDifference([1, 4])` -> `[2, 3, 4]`.
  List<T> symmetricDifference(Iterable<T> other) =>
      where((e) => !other.contains(e)).toList() +
      other.where((e) => !contains(e)).toList();

  /// Returns true if this list contains all the elements in [other].
  ///
  /// Example: `[1, 2, 3].containsAll([1, 2])` -> `true`.
  bool containsAll(Iterable<T> other) => other.every((e) => contains(e));

  /// Returns true if this list contains any of the elements in [other].
  ///
  /// Example: `[1, 2, 3].containsAny([1, 5])` -> `true`.
  bool containsAny(Iterable<T> other) => other.any((e) => contains(e));

  /// Group into Map<key, List>.
  ///
  /// Example: `[1, 2, 3, 4, 5, 6].groupBy((e) => e % 2)` -> `{0: [2, 4, 6], 1: [1, 3, 5]}`.
  Map<K, List<T>> groupBy<K>(K Function(T element) key) =>
      fold<Map<K, List<T>>>(
        {},
        (map, element) =>
            map
              ..addAll({key(element): (map[key(element)] ?? [])..add(element)}),
      );

  /// Remove null elements.
  ///
  /// Example: `[1, 2, null, 3].removeNulls` -> `[1, 2, 3]`.
  void removeNulls() => removeWhere((element) => element == null);

  /// Element at index or null if OOB.
  ///
  /// Example: `[1, 2, 3].safeGet(2)` -> `3`.
  ///
  /// Example: `[1, 2, 3].safeGet(4)` -> `null`.
  T? safeGet(int index) => index < 0 || index >= length ? null : this[index];

  /// Returns a random element from this list.
  ///
  /// Example: `[1, 2, 3].random` -> `2`.
  T get random => this[Random().nextInt(length)];

  /// Returns the sum of all elements in this list.
  ///
  /// Example: `[1, 2, 3].sum` -> `6`.
  num get sum {
    if (T == int || T == double || T == num) {
      return fold(0, (prev, element) => prev + (element as num));
    }
    throw StateError(
      'sum is only defined for List<num>, List<int> or List<double>',
    );
  }

  /// Returns the average of all elements in this list.
  ///
  /// Example: `[1, 2, 3].average` -> `2.0`.
  num get average => (sum / length) as num;

  /// Returns the most frequent element(s) in this list.
  ///
  /// Example: `[1, 2, 2, 3].mostFrequent` -> `[2]`.
  List<T> get mostFrequent {
    final map = <T, int>{};
    for (final element in this) {
      map[element] = (map[element] ?? 0) + 1;
    }
    final maxCount = map.values.reduce(max);
    return map.entries
        .where((e) => e.value == maxCount)
        .map((e) => e.key)
        .toList();
  }

  /// Returns the minimum element in this list.
  ///
  /// Example: `[1, 2, 3].min` -> `1`.
  ///
  /// Returns `null` if this list is empty.
  T? get minimum => isEmpty
      ? null
      : reduce(
          (a, b) => (a as Comparable).compareTo(b as Comparable) < 0 ? a : b,
        );

  /// Returns the maximum element in this list.
  ///
  /// Example: `[1, 2, 3].max` -> `3`.
  ///
  /// Returns `null` if this list is empty.
  T? get maximum => isEmpty
      ? null
      : reduce(
          (a, b) => (a as Comparable).compareTo(b as Comparable) > 0 ? a : b,
        );

  // ? =================== Converters ========================

  /// Convert each element to its toString().
  ///
  /// Example: `[1, 2, 3].toStringList` -> `['1', '2', '3']`.
  List<String> get toStringList => map((e) => e.toString()).toList();

  /// Serialize to CSV line(s).
  ///
  /// Example: `[1, 2, 3].toCsv` -> `'1,2,3'`.
  String get toCsv => map((e) => e.toString()).join(',');

  /// Returns a set with all the unique elements in this list
  /// (removes duplicates).
  ///
  /// Example: `[1, 2, 2, 3].toSet` -> `{1, 2, 3}`.
  Set<T> get toSet => Set<T>.from(this);

  /// Returns a parsed json [string] of this list.
  ///
  /// Example: `[1, 2, 3].toJson` -> `'[1, 2, 3]'`.
  String? get toJson => jsonEncode(this);

  /// Returns a stack widget with this list as children.
  ///
  /// Example: `[1, 2, 3].toStack` -> `Stack(children: [1, 2, 3])`.
  Stack toStack({
    Key? key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    StackFit fit = StackFit.loose,
    Clip clipBehavior = Clip.hardEdge,
  }) => Stack(
    key: key,
    alignment: alignment,
    textDirection: textDirection,
    fit: fit,
    clipBehavior: clipBehavior,
    children: this as List<Widget>,
  );

  /// Returns a column widget with this list as children.
  ///
  /// Example: `[1, 2, 3].toColumn` -> `Column(children: [1, 2, 3])`.
  Column toColumn({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    double spacing = 0.0,
  }) => Column(
    key: key,
    mainAxisAlignment: mainAxisAlignment,
    mainAxisSize: mainAxisSize,
    crossAxisAlignment: crossAxisAlignment,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    textBaseline: textBaseline,
    spacing: spacing,
    children: this as List<Widget>,
  );

  /// Returns a row widget with this list as children.
  ///
  /// Example: `[1, 2, 3].toRow` -> `Row(children: [1, 2, 3])`.
  Row toRow({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    double spacing = 0.0,
  }) => Row(
    key: key,
    mainAxisAlignment: mainAxisAlignment,
    mainAxisSize: mainAxisSize,
    crossAxisAlignment: crossAxisAlignment,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    textBaseline: textBaseline,
    spacing: spacing,
    children: this as List<Widget>,
  );

  /// Wrap each element with a widget builder.
  ///
  /// Example: `[1, 2, 3].wrapWith((e) => Text(e.toString()))` -> `[Text('1'), Text('2'), Text('3')]`.
  List<Widget> wrapWith(Widget Function(T element) builder) =>
      map(builder).toList();
}
