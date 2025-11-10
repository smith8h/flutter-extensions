import 'dart:convert';
import 'dart:math';

import 'package:flutter/widgets.dart';

extension ListExtensions<T> on List<T> {
  // ? =================== Operators ========================

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

  /// Returns a parsed json [string] of this list.
  ///
  /// Example: `[1, 2, 3].toJson` -> `'[1, 2, 3]'`.
  String? get toJson => jsonEncode(this);

  /// Ads new [element] to this list.
  ///
  /// Example: `[1, 2, 3] + 4` -> `[1, 2, 3, 4]`.
  void operator +(T element) =>
      element is List<T> ? addAll(element) : add(element);

  /// Returns a random element from this list.
  ///
  /// Example: `[1, 2, 3].random` -> `2`.
  T get random => this[Random().nextInt(length)];

  // ? =================== Widgets Converters ========================

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
}
