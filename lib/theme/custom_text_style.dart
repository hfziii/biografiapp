import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply styles.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodySmall18 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
      );
}
