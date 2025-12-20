extension BoolExtensions on bool {
  // ? =============== Conversions ===============
  /// Returns `false` if this boolean is `true`, and `true` if this boolean is `false`.
  ///
  /// Example: `true.toggle` -> `false`.
  bool get toggle => !this;

  /// Returns `1` if this boolean is `true`, and `0` if this boolean is `false`.
  ///
  /// Example: `true.toInt` -> `1`.
  int get toInt => this ? 1 : 0;

  /// Returns `'on'` if this boolean is `true`, and `'off'` if this boolean is `false`.
  ///
  /// Example: `true.toOnOff` -> `'on'`.
  String get toOnOff => this ? 'on' : 'off';

  /// Returns `'yes'` if this boolean is `true`, and `'no'` if this boolean is `false`.
  ///
  /// Example: `true.toYesNo` -> `'yes'`.
  String get toYesNo => this ? 'yes' : 'no';

  /// Returns `'enabled'` if this boolean is `true`, and `'disabled'` if this boolean is `false`.
  ///
  /// Example: `true.toEnabledDisabled` -> `'enabled'`.
  String get toEnabledDisabled => this ? 'enabled' : 'disabled';

  // ? =============== Actions ===============
  /// Executes [action] if this boolean is `true`.
  ///
  /// Example: `true.whenTrue(() => print('true'))` -> `'true'`.
  void whenTrue(void Function() action) {
    if (this) action();
  }

  /// Executes [action] if this boolean is `false`.
  ///
  /// Example: `false.whenFalse(() => print('false'))` -> `'false'`.
  void whenFalse(void Function() action) {
    if (!this) action();
  }

  /// Returns [whenTrue] if this boolean is `true`, and [whenFalse] if this boolean is `false`.
  ///
  /// ```dart
  /// bool isDark = true;
  /// String result = isDark.fold('dark', 'light');
  /// print(result); // 'dark'
  /// ```
  T fold<T>(T whenTrue, T whenFalse) => this ? whenTrue : whenFalse;

  /// Lazily evaluates and returns the result of [whenTrue] if this boolean is `true`,
  /// or the result of [whenFalse] if this boolean is `false`.
  ///
  /// This is useful when the values for the true/false branches are expensive to compute
  /// and you only want to compute the one that will actually be used.
  ///
  /// ```dart
  /// isLoggedIn.lazyFold(
  ///   () => heavyComputation(),
  ///   () => fallback(),
  /// );
  ///
  /// bool isDark = true;
  /// String status = isDark.lazyFold(
  ///   () => 'dark',
  ///   () => 'light',
  /// );
  /// print(status); // 'dark'
  /// ```
  T lazyFold<T>(T Function() whenTrue, T Function() whenFalse) {
    return this ? whenTrue() : whenFalse();
  }
}
