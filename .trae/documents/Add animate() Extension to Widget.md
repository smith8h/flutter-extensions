## Goal
Add an `animate()` extension to `WidgetExtensions` in `lib/extensions/widget_ext.dart` that auto-animates a widget on first build using selectable animation types.

## API
- Enum: `AnimateType { fade, scale, slideUp, slideDown, slideLeft, slideRight, rotate }`
- Extension method on `Widget`:
  - `Widget animate({ AnimateType type = AnimateType.fade, Duration duration = Duration(milliseconds: 300), Curve curve = Curves.easeOut, double beginOpacity = 0, double beginScale = 0.95, Offset beginOffset = const Offset(0, 12), double beginAngle = 0.05 })`
- Chainable: returns a `Widget`, compatible with existing extensions (e.g., `Text('Hi').paddingAll(8).animate(type: AnimateType.slideUp)`).

## Implementation
- Define `AnimateType` in the same file to avoid new dependencies.
- Implement `animate()` inside `WidgetExtensions` with a `switch` on `type`.
- Use `TweenAnimationBuilder` for implicit, one-time-on-first-build animation:
  - fade: `Tween<double>(begin: beginOpacity, end: 1)` → `Opacity(opacity: value)`
  - scale: `Tween<double>(begin: beginScale, end: 1)` → `Transform.scale(scale: value)`
  - slide*: `Tween<Offset>(begin: beginOffset, end: Offset.zero)` → `Transform.translate(offset: value)`
  - rotate: `Tween<double>(begin: beginAngle, end: 0)` → `Transform.rotate(angle: value)`
- Derive `beginOffset` per variant when not provided:
  - `slideUp`: `Offset(0, 12)`; `slideDown`: `Offset(0, -12)`; `slideLeft`: `Offset(12, 0)`; `slideRight`: `Offset(-12, 0)`.
- Keep `child: this` for all builders to preserve subtree and allow chaining.
- No external packages; uses `material.dart` only.

## Usage Examples
- `Text('Hello').animate()` → fades in.
- `Icon(Icons.star).animate(type: AnimateType.scale)` → scales in.
- `Container().animate(type: AnimateType.slideUp, duration: Duration(milliseconds: 500))` → slides up.

## Notes
- Animates once on initial build; will re-run when the widget is rebuilt as a new instance.
- Defaults chosen to be subtle and UI-friendly; all can be overridden via parameters.

## Validation
- Build a small demo in an existing sample screen to verify each `AnimateType` visually.
- Ensure chaining with current extensions (padding, rounded, etc.) works without layout issues.
