# SColors

![Builds and tests](https://github.com/smith8h/scolors-flutter/actions/workflows/build.yml/badge.svg)
![Latest release](https://img.shields.io/github/v/release/smith8h/scolors-flutter?include_prereleases&amp;label=latest%20release)
![Stable Version](https://img.shields.io/badge/stable_version-1.0.0-blue)
![Stability](https://img.shields.io/badge/stability-stable-green.svg)
![repo size](https://img.shields.io/github/repo-size/smith8h/scolors-flutter)

A playful dart package to play with colors and get a lighter and darker color from an existing color you provide.

## Usage

To use this plugin, add scolors as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  scolors: ^1.0.0
```

## Example

Import the library.

```dart
import 'package:scolors/scolors.dart';
```

Use it anywhere you want to create a Color lighter or darker in cotrast:

```dart
// get opposite color of a already defined color:
  Color? opposite = SColors.oppositeColor(colorStr: '#6a87e3');
  
  // get lighter color of a already defined color with factor:
  Color? lighter = SColors.lighterColor(.3, colorInt: 0xFF6A87E3);
  
  // get darker color of an already defined color with factor:
  Color? darker = SColors.darkerColor(.7, color: const Color(0xff6a87e3));
  
  // get hsv color of an already defined color:
  Color? hsv = SColors.rgbToHsv(colorStr: '#6a87e3');
```
