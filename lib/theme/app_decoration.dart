import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Color decorations
  static BoxDecoration get color4 => BoxDecoration(
    color: theme.colorScheme.secondaryContainer,
  );

  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
    color: appTheme.blue300,
  );

  static BoxDecoration get fillCyanC => BoxDecoration(
    color: appTheme.cyan900,
  );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(10.h);

  static BorderRadius get roundedBorder50 => BorderRadius.circular(50.h);

  static BorderRadius get roundedBorder74 => BorderRadius.circular(74.h);
}
