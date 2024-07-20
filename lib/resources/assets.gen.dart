/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  /// Directory path: lib/resources
  $LibResourcesGen get resources => const $LibResourcesGen();
}

class $LibResourcesGen {
  const $LibResourcesGen();

  /// Directory path: lib/resources/images
  $LibResourcesImagesGen get images => const $LibResourcesImagesGen();
}

class $LibResourcesImagesGen {
  const $LibResourcesImagesGen();

  /// File path: lib/resources/images/img_edition_orange.png
  AssetGenImage get imgEditionOrange =>
      const AssetGenImage('lib/resources/images/img_edition_orange.png');

  /// File path: lib/resources/images/img_edition_peach.png
  AssetGenImage get imgEditionPeach =>
      const AssetGenImage('lib/resources/images/img_edition_peach.png');

  /// File path: lib/resources/images/img_edition_pink.png
  AssetGenImage get imgEditionPink =>
      const AssetGenImage('lib/resources/images/img_edition_pink.png');

  /// File path: lib/resources/images/img_edition_purple.png
  AssetGenImage get imgEditionPurple =>
      const AssetGenImage('lib/resources/images/img_edition_purple.png');

  /// File path: lib/resources/images/img_edition_red.png
  AssetGenImage get imgEditionRed =>
      const AssetGenImage('lib/resources/images/img_edition_red.png');

  /// File path: lib/resources/images/img_edition_white.png
  AssetGenImage get imgEditionWhite =>
      const AssetGenImage('lib/resources/images/img_edition_white.png');

  /// File path: lib/resources/images/img_empty.png
  AssetGenImage get imgEmpty =>
      const AssetGenImage('lib/resources/images/img_empty.png');

  /// File path: lib/resources/images/img_error.png
  AssetGenImage get imgError =>
      const AssetGenImage('lib/resources/images/img_error.png');

  /// File path: lib/resources/images/img_logo_login.png
  AssetGenImage get imgLogoLogin =>
      const AssetGenImage('lib/resources/images/img_logo_login.png');

  /// File path: lib/resources/images/img_logo_transparent.png
  AssetGenImage get imgLogoTransparent =>
      const AssetGenImage('lib/resources/images/img_logo_transparent.png');

  /// File path: lib/resources/images/user_placeholder.png
  AssetGenImage get userPlaceholder =>
      const AssetGenImage('lib/resources/images/user_placeholder.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        imgEditionOrange,
        imgEditionPeach,
        imgEditionPink,
        imgEditionPurple,
        imgEditionRed,
        imgEditionWhite,
        imgEmpty,
        imgError,
        imgLogoLogin,
        imgLogoTransparent,
        userPlaceholder
      ];
}

class Assets {
  Assets._();

  static const $LibGen lib = $LibGen();
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
    bool gaplessPlayback = false,
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
