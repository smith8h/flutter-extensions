import 'dart:convert';

extension MapExtensions<K, V> on Map<K, V> {
  /// Returns a parsed json [string] of this map.
  ///
  /// Example: `{"name": "John", "age": 30}.toJson` -> `'{"name": "John", "age": 30}'`.
  String get toJson => jsonEncode(this);

  /// Merges two maps, using a custom combine function when keys overlap.
  ///
  /// Example:
  /// ```dart
  /// // Below, the `combine` function adds the values of overlapping keys.
  /// final map1 = {'a': 1, 'b': 2};
  /// final map2 = {'b': 3, 'c': 4};
  /// final merged = map1.mergeWith(map2, (value1, value2) => value1 + value2);
  /// print(merged); // Output: {'a': 1, 'b': 5, 'c': 4}
  ///
  /// // and below, the `combine` function make changes to the values of overlapping keys.
  /// final map1 = {'name': 'Hussein Shakir', 'job': 'Flutter Developer'};
  /// final map2 = {'job': 'Senior', 'city': 'World'};
  /// final merged = map1.mergeWith(map2, (value1, value2) => "${value2} ${value1}");
  /// print(merged); // Output: {'name': 'Hussein Shakir', 'job': 'Senior Flutter Developer', 'city': 'World'}
  /// ```
  Map<K, V> mergeWith(Map<K, V> other, V Function(V value1, V value2) combine) {
    final result = Map<K, V>.from(this);
    other.forEach((key, value) {
      if (result.containsKey(key)) {
        result[key] = combine(result[key] as V, value);
      } else {
        result[key] = value;
      }
    });
    return result;
  }

  /// Returns a new map containing only entries whose keys satisfy a predicate.
  ///
  /// Example:
  /// ```dart
  /// final map = {'a': 1, 'b': 2, 'c': 3};
  /// final filtered = map.filterKeys((key) => key != 'b');
  /// print(filtered); // Output: {'a': 1, 'c': 3}
  /// ```
  Map<K, V> filterKeys(bool Function(K key) test) =>
      Map<K, V>.fromEntries(entries.where((e) => test(e.key)));

  /// Returns a new map containing only entries whose values satisfy a predicate.
  ///
  /// Example:
  /// ```dart
  /// final map = {'a': 1, 'b': 2, 'c': 3};
  /// final filtered = map.filterValues((value) => value != 2);
  /// print(filtered); // Output: {'a': 1, 'c': 3}
  /// ```
  Map<K, V> filterValues(bool Function(V value) test) =>
      Map<K, V>.fromEntries(entries.where((e) => test(e.value)));

  /// Returns a new map containing entries whose keys are not in the [keys] list.
  ///
  /// Example:
  /// ```dart
  /// final map = {'a': 1, 'b': 2, 'c': 3};
  /// final filtered = map.excludeKeys(['b']);
  /// print(filtered); // Output: {'a': 1, 'c': 3}
  /// ```
  Map<K, V> excludeKeys(List<K> keys) =>
      Map<K, V>.fromEntries(entries.where((e) => !keys.contains(e.key)));

  /// Returns a new map containing entries whose values are not in the [values] list.
  ///
  /// Example:
  /// ```dart
  /// final map = {'a': 1, 'b': 2, 'c': 3};
  /// final filtered = map.excludeValues([2, 3]);
  /// print(filtered); // Output: {'a': 1}
  /// ```
  Map<K, V> excludeValues(List<V> values) =>
      Map<K, V>.fromEntries(entries.where((e) => !values.contains(e.value)));

  /// Returns a new map containing entries whose keys are in the [keys] list.
  ///
  /// Example:
  /// ```dart
  /// final map = {'a': 1, 'b': 2, 'c': 3};
  /// final filtered = map.pickKeys(['b', 'c']);
  /// print(filtered); // Output: {'b': 2, 'c': 3}
  /// ```
  Map<K, V> pickKeys(List<K> keys) =>
      Map<K, V>.fromEntries(entries.where((e) => keys.contains(e.key)));

  /// Returns a new map containing entries whose values are in the [values] list.
  ///
  /// Example:
  /// ```dart
  /// final map = {'a': 1, 'b': 2, 'c': 3};
  /// final filtered = map.pickValues([2, 3]);
  /// print(filtered); // Output: {'b': 2, 'c': 3}
  /// ```
  Map<K, V> pickValues(List<V> values) =>
      Map<K, V>.fromEntries(entries.where((e) => values.contains(e.value)));

  /// Transforms all the keys in the map by applying a [transform] function.
  ///
  /// Example:
  /// ```dart
  /// final map = <int, int>{1: 1, 2: 2, 3: 3};
  /// final transformed = map.mapKeys((key) => key.toString());
  /// print(transformed); // Output: <String, int>{'1': 1, '2': 2, '3': 3}
  /// ```
  Map<K2, V> mapKeys<K2>(K2 Function(K key) transform) =>
      Map<K2, V>.fromEntries(
        entries.map((e) => MapEntry(transform(e.key), e.value)),
      );

  /// Transforms all the values in the map by applying a [transform] function.
  ///
  /// Example:
  /// ```dart
  /// final map = <int, int>{1: 1, 2: 2, 3: 3};
  /// final transformed = map.mapValues((value) => value * 2);
  /// print(transformed); // Output: <int, int>{1: 2, 2: 4, 3: 6}
  /// ```
  Map<K, V2> mapValues<V2>(V2 Function(V value) transform) =>
      Map<K, V2>.fromEntries(
        entries.map((e) => MapEntry(e.key, transform(e.value))),
      );

  /// Converts the map into a URL query-string style representation (e.g. ?key1=value1&key2=value2)
  ///
  /// Example:
  /// ```dart
  /// final url = 'https://www.example.com/search';
  /// final map = {'name': 'Hussein Shakir', 'job': 'Flutter Developer'};
  /// final urlWithQueryString = '$url${map.toQueryString()}';
  /// print(urlWithQueryString); // Output: 'https://www.example.com/search?name=Hussein%20Shakir&job=Flutter%20Developer'
  /// ```
  String toQueryString() => entries
      .map((e) => '?${e.key}=${Uri.encodeComponent(e.value.toString())}')
      .join('&');

  /// Swaps keys and values (values must be unique)
  ///
  /// Example:
  /// ```dart
  /// final map = {'a': 1, 'b': 2, 'c': 3};
  /// final swapped = map.swap();
  /// print(swapped); // Output: {1: 'a', 2: 'b', 3: 'c'}
  ///
  /// // Throws [ArgumentError] if values are not unique.
  /// try {
  ///   final map = {'a': 1, 'b': 2, 'c': 3, 'd': 3};
  ///   final swapped = map.swap(); // Throws ArgumentError
  /// } catch (e, stacktrace) {
  ///   print(stacktrace); // Output: 'SExtensionsError: Values must be unique, some values are duplicated.'
  /// }
  /// ```
  Map<V, K> invert() {
    if (values.toSet().length != values.length) {
      throw ArgumentError(
        'SExtensionsError: Values must be unique, some values are duplicated.',
      );
    }
    return Map<V, K>.fromEntries(entries.map((e) => MapEntry(e.value, e.key)));
  }

  /// Updates only if the key already exists. Else, do nothing.
  ///
  /// Example:
  /// ```dart
  /// final map = {'a': 1, 'b': 2, 'c': 3};
  /// map.safeUpdate('b', 4);
  /// print(map); // Output: {'a': 1, 'b': 4, 'c': 3}
  /// ```
  void safeUpdate(K key, V value) {
    if (containsKey(key)) {
      this[key] = value;
    }
  }

  /// Ensure that the map contains the [key].
  /// If not, add it with the [value] to prevent null or overriding values.
  ///
  /// Example:
  /// ```dart
  /// final map = {'a': 1, 'b': 2, 'c': 3};
  /// map.ensureKey('d', 4);
  /// print(map); // Output: {'a': 1, 'b': 2, 'c': 3, 'd': 4}
  ///
  /// // If the [key] already exists, its value will not be overridden.
  /// final map = {'a': 1, 'b': 2, 'c': 3};
  /// map.ensureKey('b', 4);
  /// print(map); // Output: {'a': 1, 'b': 2, 'c': 3}
  /// ```
  void ensureKey(K key, V value) {
    if (!containsKey(key)) {
      this[key] = value;
    }
  }

  /// Checks if it contains all required keys.
  ///
  /// Example:
  /// ```dart
  /// final map = {'a': 1, 'b': 2, 'c': 3};
  /// final requiredKeys = ['a', 'b', 'd'];
  /// final containsAllKeys = map.containsAllKeys(requiredKeys);
  /// print(containsAllKeys); // Output: false
  /// ```
  bool containsAllKeys(List<K> keys) => keys.every((key) => containsKey(key));

  /// Checks if it contains any key from a list.
  ///
  /// Example:
  /// ```dart
  /// final map = {'a': 1, 'b': 2, 'c': 3};
  /// final requiredKeys = ['a', 'b', 'd'];
  /// final containsAnyKey = map.containsAnyKey(requiredKeys);
  /// print(containsAnyKey); // Output: true
  /// ```
  bool containsAnyKey(List<K> keys) => keys.any((key) => containsKey(key));
}
