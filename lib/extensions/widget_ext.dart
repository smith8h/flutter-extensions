import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:s_extensions/enums/animation_type.dart';

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

  /// Returns a new [GestureDetector] widget with the given [onTap] callback.
  GestureDetector onTap(void Function()? onTap) {
    return GestureDetector(onTap: onTap, child: this);
  }

  /// Returns a new [GestureDetector] widget with the given [onDoubleTap] callback.
  GestureDetector onDoubleTap(void Function()? onDoubleTap) {
    return GestureDetector(onDoubleTap: onDoubleTap, child: this);
  }

  /// Returns a new [GestureDetector] widget with the given [onTouch] callback.
  GestureDetector onTouch(void Function(TapDownDetails tapDetails)? onTouch) {
    return GestureDetector(onTapDown: onTouch, child: this);
  }

  /// Returns a new [GestureDetector] widget with the given [onLongPress] callback.
  GestureDetector onLongPress(void Function()? onLongPress) {
    return GestureDetector(onLongPress: onLongPress, child: this);
  }

  /// Returns a new [InkWell] widget with the given [onTap] callback, and optional [radius] for the ink splash.
  Widget ink({VoidCallback? onTap, BorderRadius? radius}) {
    return InkWell(onTap: onTap, borderRadius: radius, child: this);
  }

  // ? ================ Animations ================

  /// Animates the widget with the given type.
  Widget _animate({
    AnimateType type = .fade,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeOut,
    double beginOpacity = 0,
    double beginScale = 0.95,
    Offset? beginOffset,
    double beginAngle = 0.05,
    required Widget child,
  }) {
    switch (type) {
      case .fade:
        return TweenAnimationBuilder<double>(
          tween: Tween(begin: beginOpacity, end: 1),
          duration: duration,
          curve: curve,
          child: child,
          builder: (context, value, child) =>
              Opacity(opacity: value, child: child),
        );
      case .scale:
        return TweenAnimationBuilder<double>(
          tween: Tween(begin: beginScale, end: 1),
          duration: duration,
          curve: curve,
          child: this,
          builder: (context, value, child) =>
              Transform.scale(scale: value, child: child),
        );
      case .slideUp:
      case .slideDown:
      case .slideLeft:
      case .slideRight:
        final Offset start =
            beginOffset ??
            (type == .slideUp
                ? const Offset(0, 12)
                : type == .slideDown
                ? const Offset(0, -12)
                : type == .slideLeft
                ? const Offset(12, 0)
                : const Offset(-12, 0));
        return TweenAnimationBuilder<Offset>(
          tween: Tween(begin: start, end: .zero),
          duration: duration,
          curve: curve,
          child: this,
          builder: (context, value, child) =>
              Transform.translate(offset: value, child: child),
        );
      case .rotate:
        return TweenAnimationBuilder<double>(
          tween: Tween(begin: beginAngle, end: 0),
          duration: duration,
          curve: curve,
          child: this,
          builder: (context, value, child) =>
              Transform.rotate(angle: value, child: child),
        );
    }
  }

  /// Fades the widget.
  Widget fade({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeOut,
    double beginOpacity = 0,
  }) {
    return _animate(
      type: .fade,
      duration: duration,
      curve: curve,
      beginOpacity: beginOpacity,
      child: this,
    );
  }

  /// Scales the widget.
  Widget scale({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeOut,
    double beginScale = 0.95,
  }) {
    return _animate(
      type: .scale,
      duration: duration,
      curve: curve,
      beginScale: beginScale,
      child: this,
    );
  }

  /// Slides the widget up.
  Widget slideUp({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeOut,
    Offset? beginOffset,
  }) {
    return _animate(
      type: .slideUp,
      duration: duration,
      curve: curve,
      beginOffset: beginOffset ?? const Offset(0, 12),
      child: this,
    );
  }

  /// Slides the widget down.
  Widget slideDown({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeOut,
    Offset? beginOffset,
  }) {
    return _animate(
      type: .slideDown,
      duration: duration,
      curve: curve,
      beginOffset: beginOffset ?? const Offset(0, -12),
      child: this,
    );
  }

  /// Slides the widget left.
  Widget slideLeft({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeOut,
    Offset? beginOffset,
  }) {
    return _animate(
      type: .slideLeft,
      duration: duration,
      curve: curve,
      beginOffset: beginOffset ?? const Offset(12, 0),
      child: this,
    );
  }

  /// Slides the widget right.
  Widget slideRight({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeOut,
    Offset? beginOffset,
  }) {
    return _animate(
      type: .slideRight,
      duration: duration,
      curve: curve,
      beginOffset: beginOffset ?? const Offset(-12, 0),
      child: this,
    );
  }

  /// Rotates the widget.
  Widget rotate({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeOut,
    double beginAngle = 0.05,
  }) {
    return _animate(
      type: .rotate,
      duration: duration,
      curve: curve,
      beginAngle: beginAngle,
      child: this,
    );
  }

  // ? ================ Shapes & Boxes ================

  /// Wrap this widget with safe area.
  SafeArea safeArea({
    Key? key,
    bool left = true,
    bool top = true,
    bool right = true,
    bool bottom = true,
    EdgeInsets minimum = .zero,
    bool maintainBottomViewPadding = false,
  }) => SafeArea(
    key: key,
    left: left,
    right: right,
    top: top,
    bottom: bottom,
    minimum: minimum,
    maintainBottomViewPadding: maintainBottomViewPadding,
    child: this,
  );

  /// Returns a new IntrinsicHeight widget.
  IntrinsicHeight intrinsicHeight({Key? key, double? stepHeight}) {
    return IntrinsicHeight(key: key, child: this);
  }

  /// Returns a new IntrinsicWidth widget.
  ///
  /// The [stepWidth] and [stepHeight] parameters are used to set the width and height of the widget.
  IntrinsicWidth intrinsicWidth({
    Key? key,
    double? stepWidth,
    double? stepHeight,
  }) {
    return IntrinsicWidth(
      key: key,
      stepHeight: stepHeight,
      stepWidth: stepWidth,
      child: this,
    );
  }

  /// Returns a new Tooltip widget with the given message.
  Tooltip tooltip({
    Key? key,
    String? message,
    InlineSpan? richMessage,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    double? verticalOffset,
    bool? preferBelow,
    bool? excludeFromSemantics,
    Decoration? decoration,
    TextStyle? textStyle,
    TextAlign? textAlign,
    Duration? waitDuration,
    Duration? showDuration,
    Duration? exitDuration,
    bool enableTapToDismiss = true,
    TooltipTriggerMode? triggerMode,
    bool? enableFeedback,
    void Function()? onTriggered,
    MouseCursor? mouseCursor,
    bool? ignorePointer,
  }) {
    return Tooltip(
      key: key,
      message: message,
      richMessage: richMessage,
      constraints: constraints,
      padding: padding,
      margin: margin,
      verticalOffset: verticalOffset,
      preferBelow: preferBelow,
      excludeFromSemantics: excludeFromSemantics,
      decoration: decoration,
      textStyle: textStyle,
      textAlign: textAlign,
      waitDuration: waitDuration,
      showDuration: showDuration,
      exitDuration: exitDuration,
      enableTapToDismiss: enableTapToDismiss,
      triggerMode: triggerMode,
      enableFeedback: enableFeedback,
      onTriggered: onTriggered,
      mouseCursor: mouseCursor,
      ignorePointer: ignorePointer,
      child: this,
    );
  }

  /// Returns a new Hero widget with the given tag.
  Hero hero({
    Key? key,
    required Object tag,
    Tween<Rect?> Function(Rect?, Rect?)? createRectTween,
    Widget Function(
      BuildContext,
      Animation<double>,
      HeroFlightDirection,
      BuildContext,
      BuildContext,
    )?
    flightShuttleBuilder,
    Widget Function(BuildContext, Size, Widget)? placeholderBuilder,
    bool transitionOnUserGestures = false,
  }) {
    return Hero(
      key: key,
      tag: tag,
      createRectTween: createRectTween,
      flightShuttleBuilder: flightShuttleBuilder,
      placeholderBuilder: placeholderBuilder,
      transitionOnUserGestures: transitionOnUserGestures,
      child: this,
    );
  }

  /// Returns a new Card widget with the given child.
  Card card({
    Key? key,
    bool borderOnForeground = true,
    bool semanticContainer = true,
    Color? surfaceTintColor,
    EdgeInsetsGeometry? margin,
    Color? color,
    Color? shadowColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
  }) {
    return Card(
      key: key,
      borderOnForeground: borderOnForeground,
      semanticContainer: semanticContainer,
      surfaceTintColor: surfaceTintColor,
      clipBehavior: clipBehavior,
      color: color,
      elevation: elevation,
      margin: margin,
      shadowColor: shadowColor,
      shape: shape,
      child: this,
    );
  }

  /// Returns a new Scaffold widget with the given body.
  Scaffold scaffold({
    Key? key,
    PreferredSizeWidget? appBar,
    Widget? body,
    Widget? floatingActionButton,
    FloatingActionButtonLocation? floatingActionButtonLocation,
    FloatingActionButtonAnimator? floatingActionButtonAnimator,
    List<Widget>? persistentFooterButtons,
    AlignmentDirectional persistentFooterAlignment = .centerEnd,
    BoxDecoration? persistentFooterDecoration,
    Widget? drawer,
    void Function(bool)? onDrawerChanged,
    Widget? endDrawer,
    void Function(bool)? onEndDrawerChanged,
    Widget? bottomNavigationBar,
    Widget? bottomSheet,
    Color? backgroundColor,
    bool? resizeToAvoidBottomInset,
    bool primary = true,
    DragStartBehavior drawerDragStartBehavior = .start,
    bool extendBody = false,
    bool drawerBarrierDismissible = true,
    bool extendBodyBehindAppBar = false,
    Color? drawerScrimColor,
    Widget? Function(BuildContext, Animation<double>) bottomSheetScrimBuilder =
        _defaultBottomSheetScrimBuilder,
    double? drawerEdgeDragWidth,
    bool drawerEnableOpenDragGesture = true,
    bool endDrawerEnableOpenDragGesture = true,
    String? restorationId,
  }) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomNavigationBar,
      bottomSheet: bottomSheet,
      bottomSheetScrimBuilder: bottomSheetScrimBuilder,
      drawer: drawer,
      drawerBarrierDismissible: drawerBarrierDismissible,
      drawerDragStartBehavior: drawerDragStartBehavior,
      drawerEdgeDragWidth: drawerEdgeDragWidth,
      drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
      drawerScrimColor: drawerScrimColor,
      endDrawer: endDrawer,
      endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonAnimator: floatingActionButtonAnimator,
      floatingActionButtonLocation: floatingActionButtonLocation,
      key: key,
      onDrawerChanged: onDrawerChanged,
      onEndDrawerChanged: onEndDrawerChanged,
      persistentFooterAlignment: persistentFooterAlignment,
      persistentFooterButtons: persistentFooterButtons,
      persistentFooterDecoration: persistentFooterDecoration,
      primary: primary,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      restorationId: restorationId,
      body: this,
    );
  }

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
    RefreshIndicatorTriggerMode triggerMode = .onEdge,
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
    Axis scrollDirection = .vertical,
    bool reverse = false,
    EdgeInsetsGeometry? padding,
    bool? primary,
    ScrollPhysics? physics,
    ScrollController? controller,
    Widget? child,
    DragStartBehavior dragStartBehavior = .start,
    Clip clipBehavior = .hardEdge,
    HitTestBehavior hitTestBehavior = .opaque,
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
    BoxShape shape = .rectangle,
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
    Clip clipBehavior = .antiAlias,
    CustomClipper<RRect>? clipper,
  }) {
    return ClipRRect(
      key: key,
      clipBehavior: clipBehavior,
      clipper: clipper,
      borderRadius: .circular(radius),
      child: this,
    );
  }

  /// Returns a new rounded widget from top with the given radius.
  ClipRRect roundedTop({
    Key? key,
    double radius = 8,
    Clip clipBehavior = .antiAlias,
    CustomClipper<RRect>? clipper,
  }) {
    return ClipRRect(
      key: key,
      clipBehavior: clipBehavior,
      clipper: clipper,
      borderRadius: .vertical(top: .circular(radius)),
      child: this,
    );
  }

  /// Returns a new rounded widget from bottom with the given radius.
  ClipRRect roundedBottom({
    Key? key,
    double radius = 8,
    Clip clipBehavior = .antiAlias,
    CustomClipper<RRect>? clipper,
  }) {
    return ClipRRect(
      key: key,
      clipBehavior: clipBehavior,
      clipper: clipper,
      borderRadius: .vertical(bottom: .circular(radius)),
      child: this,
    );
  }

  /// Returns a new rounded widget from left with the given radius.
  ClipRRect roundedLeft({
    Key? key,
    double radius = 8,
    Clip clipBehavior = .antiAlias,
    CustomClipper<RRect>? clipper,
  }) {
    return ClipRRect(
      key: key,
      clipBehavior: clipBehavior,
      clipper: clipper,
      borderRadius: .horizontal(left: .circular(radius)),
      child: this,
    );
  }

  /// Returns a new rounded widget from right with the given radius.
  ClipRRect roundedRight({
    Key? key,
    double radius = 8,
    Clip clipBehavior = .antiAlias,
    CustomClipper<RRect>? clipper,
  }) {
    return ClipRRect(
      key: key,
      clipBehavior: clipBehavior,
      clipper: clipper,
      borderRadius: .horizontal(right: .circular(radius)),
      child: this,
    );
  }

  // ? ================ Alignment ================

  /// Returns a new directional positioned widget with the given position.
  PositionedDirectional positionedDirectional({
    Key? key,
    double? start,
    double? top,
    double? end,
    double? bottom,
    double? width,
    double? height,
  }) => PositionedDirectional(
    key: key,
    start: start,
    top: top,
    end: end,
    bottom: bottom,
    width: width,
    height: height,
    child: this,
  );

  /// Returns a new positioned widget with the given position.
  Positioned positioned({
    Key? key,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
  }) {
    return Positioned(
      key: key,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      width: width,
      height: height,
      child: this,
    );
  }

  /// Returns a new aligned widget with the given alignment.
  Align align({
    Key? key,
    AlignmentGeometry alignment = .center,
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
  Container margin({
    double? all,
    double? horizontal,
    double? vertical,
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    return Container(
      margin: all != null
          ? .all(all)
          : .only(
              left: left ?? (horizontal ?? 0),
              right: right ?? (horizontal ?? 0),
              top: top ?? (vertical ?? 0),
              bottom: bottom ?? (vertical ?? 0),
            ),
      child: this,
    );
  }

  /// Returns a new widget with the given margin.
  Container marginAll(double margin) {
    return Container(margin: .all(margin), child: this);
  }

  /// Returns a new widget with the given margin.
  Container marginSymmetric({double? vertical = 0, double? horizontal = 0}) {
    return Container(
      margin: .symmetric(vertical: vertical!, horizontal: horizontal!),
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
      margin: .only(left: left!, top: top!, right: right!, bottom: bottom!),
      child: this,
    );
  }

  // ? ================ Padding ================

  /// Returns a new widget with the given padding.
  Widget padding({
    double? all,
    double? horizontal,
    double? vertical,
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    return Padding(
      padding: all != null
          ? .all(all)
          : .only(
              left: left ?? (horizontal ?? 0),
              right: right ?? (horizontal ?? 0),
              top: top ?? (vertical ?? 0),
              bottom: bottom ?? (vertical ?? 0),
            ),
      child: this,
    );
  }

  /// Returns a new widget with the given padding.
  Padding paddingAll(double padding) {
    return Padding(padding: .all(padding), child: this);
  }

  /// Returns a new widget with the given padding.
  Padding paddingSymmetric({double? vertical = 0, double? horizontal = 0}) {
    return Padding(
      padding: .symmetric(vertical: vertical!, horizontal: horizontal!),
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
      padding: .only(left: left!, top: top!, right: right!, bottom: bottom!),
      child: this,
    );
  }
}

Widget? _defaultBottomSheetScrimBuilder(
  BuildContext context,
  Animation<double> animation,
) {
  return null;
}
