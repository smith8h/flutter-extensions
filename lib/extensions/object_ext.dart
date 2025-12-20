extension ObjectExt on Object? {
  /// Check if the object is null
  /// 
  /// Example: `object.isNull // true`
  bool get isNull => this == null;

  /// Check if the object is not null
  /// 
  /// Example: `object.isNotNull // true`
  bool get isNotNull => this != null;
}