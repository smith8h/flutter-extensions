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
}
