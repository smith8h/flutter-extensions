extension BoolExtensions on bool {
  /// Returns `false` if this boolean is `true`, and `true` if this boolean is `false`.
  ///
  /// Example: `true.toggle` -> `false`.
  bool get toggle => !this;
}
