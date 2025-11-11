import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  // ? ================ Functions ================

  /// Returns a new [GestureDetector] widget with the given gestures.
  GestureDetector gestures({
    Key? key,
    void Function(TapDownDetails)? onTapDown,
    void Function(TapUpDetails)? onTapUp,
    void Function()? onTap,
    void Function(TapMoveDetails)? onTapMove,
    void Function()? onTapCancel,
    void Function()? onSecondaryTap,
    void Function(TapDownDetails)? onSecondaryTapDown,
    void Function(TapUpDetails)? onSecondaryTapUp,
    void Function()? onSecondaryTapCancel,
    void Function(TapDownDetails)? onTertiaryTapDown,
    void Function(TapUpDetails)? onTertiaryTapUp,
    void Function()? onTertiaryTapCancel,
    void Function(TapDownDetails)? onDoubleTapDown,
    void Function()? onDoubleTap,
    void Function()? onDoubleTapCancel,
    void Function(LongPressDownDetails)? onLongPressDown,
    void Function()? onLongPressCancel,
    void Function()? onLongPress,
    void Function(LongPressStartDetails)? onLongPressStart,
    void Function(LongPressMoveUpdateDetails)? onLongPressMoveUpdate,
    void Function()? onLongPressUp,
    void Function(LongPressEndDetails)? onLongPressEnd,
    void Function(LongPressDownDetails)? onSecondaryLongPressDown,
    void Function()? onSecondaryLongPressCancel,
    void Function()? onSecondaryLongPress,
    void Function(LongPressStartDetails)? onSecondaryLongPressStart,
    void Function(LongPressMoveUpdateDetails)? onSecondaryLongPressMoveUpdate,
    void Function()? onSecondaryLongPressUp,
    void Function(LongPressEndDetails)? onSecondaryLongPressEnd,
    void Function(LongPressDownDetails)? onTertiaryLongPressDown,
    void Function()? onTertiaryLongPressCancel,
    void Function()? onTertiaryLongPress,
    void Function(LongPressStartDetails)? onTertiaryLongPressStart,
    void Function(LongPressMoveUpdateDetails)? onTertiaryLongPressMoveUpdate,
    void Function()? onTertiaryLongPressUp,
    void Function(LongPressEndDetails)? onTertiaryLongPressEnd,
    void Function(DragDownDetails)? onVerticalDragDown,
    void Function(DragStartDetails)? onVerticalDragStart,
    void Function(DragUpdateDetails)? onVerticalDragUpdate,
    void Function(DragEndDetails)? onVerticalDragEnd,
    void Function()? onVerticalDragCancel,
    void Function(DragDownDetails)? onHorizontalDragDown,
    void Function(DragStartDetails)? onHorizontalDragStart,
    void Function(DragUpdateDetails)? onHorizontalDragUpdate,
    void Function(DragEndDetails)? onHorizontalDragEnd,
    void Function()? onHorizontalDragCancel,
    void Function(ForcePressDetails)? onForcePressStart,
    void Function(ForcePressDetails)? onForcePressPeak,
    void Function(ForcePressDetails)? onForcePressUpdate,
    void Function(ForcePressDetails)? onForcePressEnd,
    void Function(DragDownDetails)? onPanDown,
    void Function(DragStartDetails)? onPanStart,
    void Function(DragUpdateDetails)? onPanUpdate,
    void Function(DragEndDetails)? onPanEnd,
    void Function()? onPanCancel,
    void Function(ScaleStartDetails)? onScaleStart,
    void Function(ScaleUpdateDetails)? onScaleUpdate,
    void Function(ScaleEndDetails)? onScaleEnd,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      key: key,
      behavior: behavior,
      dragStartBehavior: dragStartBehavior,
      excludeFromSemantics: excludeFromSemantics,
      onDoubleTap: onDoubleTap,
      onDoubleTapCancel: onDoubleTapCancel,
      onDoubleTapDown: onDoubleTapDown,
      onForcePressEnd: onForcePressEnd,
      onForcePressPeak: onForcePressPeak,
      onForcePressStart: onForcePressStart,
      onForcePressUpdate: onForcePressUpdate,
      onHorizontalDragCancel: onHorizontalDragCancel,
      onLongPress: onLongPress,
      onLongPressCancel: onLongPressCancel,
      onLongPressDown: onLongPressDown,
      onLongPressEnd: onLongPressEnd,
      onLongPressMoveUpdate: onLongPressMoveUpdate,
      onLongPressStart: onLongPressStart,
      onLongPressUp: onLongPressUp,
      onPanCancel: onPanCancel,
      onPanDown: onPanDown,
      onPanEnd: onPanEnd,
      onPanStart: onPanStart,
      onPanUpdate: onPanUpdate,
      onScaleEnd: onScaleEnd,
      onScaleStart: onScaleStart,
      onScaleUpdate: onScaleUpdate,
      onTap: onTap,
      onTapCancel: onTapCancel,
      onTapDown: onTapDown,
      onTapMove: onTapMove,
      onTapUp: onTapUp,
      onHorizontalDragDown: onHorizontalDragDown,
      onHorizontalDragStart: onHorizontalDragStart,
      onHorizontalDragUpdate: onHorizontalDragUpdate,
      onHorizontalDragEnd: onHorizontalDragEnd,
      onVerticalDragDown: onVerticalDragDown,
      onVerticalDragStart: onVerticalDragStart,
      onVerticalDragUpdate: onVerticalDragUpdate,
      onVerticalDragEnd: onVerticalDragEnd,
      onVerticalDragCancel: onVerticalDragCancel,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      onSecondaryLongPress: onSecondaryLongPress,
      onSecondaryLongPressCancel: onSecondaryLongPressCancel,
      onSecondaryLongPressDown: onSecondaryLongPressDown,
      onSecondaryLongPressEnd: onSecondaryLongPressEnd,
      onSecondaryLongPressMoveUpdate: onSecondaryLongPressMoveUpdate,
      onSecondaryLongPressStart: onSecondaryLongPressStart,
      onSecondaryLongPressUp: onSecondaryLongPressUp,
      onTertiaryLongPress: onTertiaryLongPress,
      onTertiaryLongPressCancel: onTertiaryLongPressCancel,
      onTertiaryLongPressDown: onTertiaryLongPressDown,
      onTertiaryLongPressEnd: onTertiaryLongPressEnd,
      onTertiaryLongPressMoveUpdate: onTertiaryLongPressMoveUpdate,
      onTertiaryLongPressStart: onTertiaryLongPressStart,
      onTertiaryLongPressUp: onTertiaryLongPressUp,
      onSecondaryTap: onSecondaryTap,
      onSecondaryTapCancel: onSecondaryTapCancel,
      onSecondaryTapDown: onSecondaryTapDown,
      onSecondaryTapUp: onSecondaryTapUp,
      onTertiaryTapCancel: onTertiaryTapCancel,
      onTertiaryTapDown: onTertiaryTapDown,
      onTertiaryTapUp: onTertiaryTapUp,
      child: this,
    );
  }

  // ? ================ Shapes & Boxes ================

  /// Returns a new constrained widget with the given width and height.
  SizedBox constrained({double? width, double? height}) {
    return SizedBox(width: width, height: height, child: this);
  }

  /// Returns a new constrained widget with the given width.
  SizedBox width(double width) {
    return SizedBox(width: width, child: this);
  }

  /// Returns a new constrained widget with the given height.
  SizedBox height(double height) {
    return SizedBox(height: height, child: this);
  }

  /// Returns a new refresh indicator widget.
  RefreshIndicator refreshable({
    Key? key,
    double displacement = 40.0,
    double edgeOffset = 0.0,
    required Future<void> Function() onRefresh,
    Color? color,
    Color? backgroundColor,
    bool Function(ScrollNotification) notificationPredicate =
        defaultScrollNotificationPredicate,
    String? semanticsLabel,
    String? semanticsValue,
    double strokeWidth = RefreshProgressIndicator.defaultStrokeWidth,
    RefreshIndicatorTriggerMode triggerMode =
        RefreshIndicatorTriggerMode.onEdge,
    double elevation = 2.0,
  }) {
    return RefreshIndicator(
      key: key,
      displacement: displacement,
      edgeOffset: edgeOffset,
      onRefresh: onRefresh,
      color: color,
      backgroundColor: backgroundColor,
      notificationPredicate: notificationPredicate,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
      strokeWidth: strokeWidth,
      triggerMode: triggerMode,
      elevation: elevation,
      child: this,
    );
  }

  /// Returns a new scrollable widget.
  SingleChildScrollView scrollable({
    Key? key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    EdgeInsetsGeometry? padding,
    bool? primary,
    ScrollPhysics? physics,
    ScrollController? controller,
    Widget? child,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    Clip clipBehavior = Clip.hardEdge,
    HitTestBehavior hitTestBehavior = HitTestBehavior.opaque,
    String? restorationId,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
  }) {
    return SingleChildScrollView(
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      padding: padding,
      dragStartBehavior: dragStartBehavior,
      clipBehavior: clipBehavior,
      hitTestBehavior: hitTestBehavior,
      restorationId: restorationId,
      keyboardDismissBehavior: keyboardDismissBehavior,
      child: this,
    );
  }

  /// Returns a decorated widget with the given decoration.
  Container decoration({
    Key? key,
    Color? color,
    DecorationImage? image,
    BoxBorder? border,
    BorderRadiusGeometry? borderRadius,
    List<BoxShadow>? boxShadow,
    Gradient? gradient,
    BlendMode? backgroundBlendMode,
    BoxShape shape = BoxShape.rectangle,
  }) {
    return Container(
      key: key,
      decoration: BoxDecoration(
        backgroundBlendMode: backgroundBlendMode,
        color: color,
        borderRadius: borderRadius,
        border: border,
        boxShadow: boxShadow,
        gradient: gradient,
        image: image,
        shape: shape,
      ),
      child: this,
    );
  }

  /// Returns a new rounded widget with the given radius.
  ClipRRect rounded({
    Key? key,
    double radius = 8,
    Clip clipBehavior = Clip.antiAlias,
    CustomClipper<RRect>? clipper,
  }) {
    return ClipRRect(
      key: key,
      clipBehavior: clipBehavior,
      clipper: clipper,
      borderRadius: BorderRadius.circular(radius),
      child: this,
    );
  }

  /// Returns a new rounded widget from top with the given radius.
  ClipRRect roundedTop({
    Key? key,
    double radius = 8,
    Clip clipBehavior = Clip.antiAlias,
    CustomClipper<RRect>? clipper,
  }) {
    return ClipRRect(
      key: key,
      clipBehavior: clipBehavior,
      clipper: clipper,
      borderRadius: BorderRadius.vertical(top: Radius.circular(radius)),
      child: this,
    );
  }

  /// Returns a new rounded widget from bottom with the given radius.
  ClipRRect roundedBottom({
    Key? key,
    double radius = 8,
    Clip clipBehavior = Clip.antiAlias,
    CustomClipper<RRect>? clipper,
  }) {
    return ClipRRect(
      key: key,
      clipBehavior: clipBehavior,
      clipper: clipper,
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(radius)),
      child: this,
    );
  }

  // ? ================ Alignment ================

  /// Returns a new aligned widget with the given alignment.
  Align align({
    Key? key,
    AlignmentGeometry alignment = Alignment.center,
    double? widthFactor,
    double? heightFactor,
  }) {
    return Align(
      key: key,
      alignment: alignment,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  /// Returns a new directed text widget with the given text direction.
  Directionality directionality({required TextDirection direction}) {
    return Directionality(textDirection: direction, child: this);
  }

  /// Returns a new centered widget.
  Center center({Key? key, double? widthFactor, double? heightFactor}) {
    return Center(
      key: key,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  // ? ================ Flexes ================

  /// Returns a new expanded widget with the given flex.
  Expanded expanded({Key? key, int flex = 1}) {
    return Expanded(key: key, flex: flex, child: this);
  }

  /// Returns a new flexible widget with the given flex.
  Flexible flexible({Key? key, int flex = 1}) {
    return Flexible(key: key, flex: flex, child: this);
  }

  // ? ================ Margin =================

  /// Returns a new widget with the given margin.
  Container marginAll(double margin) {
    return Container(margin: EdgeInsets.all(margin), child: this);
  }

  /// Returns a new widget with the given margin.
  Container marginSymmetric({double? vertical = 0, double? horizontal = 0}) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: vertical!,
        horizontal: horizontal!,
      ),
      child: this,
    );
  }

  /// Returns a new widget with the given margin.
  Container marginOnly({
    double? left = 0,
    double? top = 0,
    double? right = 0,
    double? bottom = 0,
  }) {
    return Container(
      margin: EdgeInsets.only(
        left: left!,
        top: top!,
        right: right!,
        bottom: bottom!,
      ),
      child: this,
    );
  }

  // ? ================ Padding ================

  /// Returns a new widget with the given padding.
  Padding paddingAll(double padding) {
    return Padding(padding: EdgeInsets.all(padding), child: this);
  }

  /// Returns a new widget with the given padding.
  Padding paddingSymmetric({double? vertical = 0, double? horizontal = 0}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical!,
        horizontal: horizontal!,
      ),
      child: this,
    );
  }

  /// Returns a new widget with the given padding.
  Padding paddingOnly({
    double? left = 0,
    double? top = 0,
    double? right = 0,
    double? bottom = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left!,
        top: top!,
        right: right!,
        bottom: bottom!,
      ),
      child: this,
    );
  }
}
