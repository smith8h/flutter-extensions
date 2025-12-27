/// Represents information about an installed application.
class ExAppModel {
  /// The build number of the application.
  final String versionCode;

  /// The user-visible version name of the application.
  final String versionName;

  /// The full version string of the application.
  final String version;

  /// The unique package identifier of the application.
  final String packageName;

  /// The display name of the application.
  final String appName;

  /// The date and time when the application was first installed.
  final DateTime? installTime;

  /// The date and time when the application was last updated.
  final DateTime? updateTime;

  /// The store from which the application was installed, if available.
  final String? installedFromStore;

  /// Creates a new [ExAppModel] instance with the provided application details.
  ExAppModel({
    required this.versionCode,
    required this.versionName,
    required this.version,
    required this.packageName,
    required this.appName,
    required this.installTime,
    required this.updateTime,
    this.installedFromStore,
  });

  @override
  String toString() {
    return """
App Name: $appName,
Version: $version,
Package Name: $packageName,
Install Time: $installTime,
Update Time: $updateTime,
Installed From Store: $installedFromStore,
""";
  }
}
