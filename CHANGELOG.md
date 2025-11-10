# 0.0.0 – Initial release

## Added
- `NumExtensions` with numeric helpers: `half`, `quarter`, `square`, `sqRoot`.
- Duration helpers: `misec`, `msec`, `sec`, `min`, `hr`, `day`.
- `screenWidth` extension getter for responsive layouts via property access
  (e.g., `0.9.screenWidth`).
- Static initialization and context management with `FlutterExtensions` to support property-based access without passing `BuildContext`.
- Initialization verification (`isInitialized`), explicit init (`init`), and
  hot-reload-safe updates (`update`).
