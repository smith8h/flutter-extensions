import 'package:flutter/widgets.dart';
import 'extensions_context.dart';

/// A widget that initializes the FlutterSExtensions package with a given
/// design-time [screenSize] and wraps the provided [app] widget.
///
/// This widget should be placed at the root of the widget tree (above [MaterialApp]/[CupertinoApp])
/// so that the design-size is set once and the extension context is updated
/// before any descendant widgets are built.
class SExtensionsScreenUtil extends StatelessWidget {
  /// Creates an [SExtensionsScreenUtil].
  ///
  /// [screenSize] is the design-time size (in logical pixels) used for
  /// scaling utilities such as responsive dimensions.
  /// 
  /// [app] is the root widget of the application.
  const SExtensionsScreenUtil({
    super.key,
    required this.screenSize,
    required this.app,
  });

  /// The design-time size (in logical pixels) used for scaling calculations.
  final Size screenSize;

  /// The root widget of the application.
  final Widget app;

  @override
  Widget build(BuildContext context) {
    FlutterSExtensions.setDesignSize(screenSize);
    FlutterSExtensions.update(context);
    return app;
  }
}
