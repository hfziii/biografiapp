/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/BACK.svg
  String get back => 'assets/images/BACK.svg';

  /// File path: assets/images/MENU.svg
  String get menu => 'assets/images/MENU.svg';

  /// File path: assets/images/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.png');

  /// File path: assets/images/certif-icon.svg
  String get certifIcon => 'assets/images/certif-icon.svg';

  /// File path: assets/images/edit-btn.svg
  String get editBtn => 'assets/images/edit-btn.svg';

  /// File path: assets/images/edu-icon.svg
  String get eduIcon => 'assets/images/edu-icon.svg';

  /// File path: assets/images/foto.png
  AssetGenImage get foto => const AssetGenImage('assets/images/foto.png');

  /// File path: assets/images/ic_baseline-email.svg
  String get icBaselineEmail => 'assets/images/ic_baseline-email.svg';

  /// File path: assets/images/mdi_contact.svg
  String get mdiContact => 'assets/images/mdi_contact.svg';

  /// File path: assets/images/mdi_github.svg
  String get mdiGithub => 'assets/images/mdi_github.svg';

  /// File path: assets/images/mdi_instagram.svg
  String get mdiInstagram => 'assets/images/mdi_instagram.svg';

  /// File path: assets/images/mdi_linkedin.svg
  String get mdiLinkedin => 'assets/images/mdi_linkedin.svg';

  /// File path: assets/images/mdi_location.svg
  String get mdiLocation => 'assets/images/mdi_location.svg';

  /// File path: assets/images/org-icon.svg
  String get orgIcon => 'assets/images/org-icon.svg';

  /// File path: assets/images/porto-1.png
  AssetGenImage get porto1 => const AssetGenImage('assets/images/porto-1.png');

  /// File path: assets/images/porto-2.png
  AssetGenImage get porto2 => const AssetGenImage('assets/images/porto-2.png');

  /// File path: assets/images/skill-icon.png
  AssetGenImage get skillIcon =>
      const AssetGenImage('assets/images/skill-icon.png');

  /// File path: assets/images/work-icon.svg
  String get workIcon => 'assets/images/work-icon.svg';

  /// List of all assets
  List<dynamic> get values => [
        back,
        menu,
        background,
        certifIcon,
        editBtn,
        eduIcon,
        foto,
        icBaselineEmail,
        mdiContact,
        mdiGithub,
        mdiInstagram,
        mdiLinkedin,
        mdiLocation,
        orgIcon,
        porto1,
        porto2,
        skillIcon,
        workIcon
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
