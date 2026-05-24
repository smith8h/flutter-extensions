extension ObjectExt on Object? {
  /// Check if the object is null
  ///
  /// Example: `object.isNull // true`
  bool get isNull => this == null;

  /// Check if the object is not null
  ///
  /// Example: `object.isNotNull // true`
  bool get isNotNull => this != null;

  /// Check if the object is in a list
  ///
  /// Example: `object.isInList([1, 2, 3]) // true`
  bool isInList<T>(List<T> list) => list.contains(this);

  /// Check if the object is in a list with validation
  ///
  /// Example: `object.isInList([1, 2, 3], (e) => e is int) // true`
  bool isInListWithValidation<T>(List<T> list, bool Function(T) validator) =>
      list.contains(this) && validator(this as T);
 
}
