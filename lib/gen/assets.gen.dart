/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/add.png
  AssetGenImage get add => const AssetGenImage('assets/icons/add.png');

  /// File path: assets/icons/back.png
  AssetGenImage get back => const AssetGenImage('assets/icons/back.png');

  /// File path: assets/icons/bag.png
  AssetGenImage get bag => const AssetGenImage('assets/icons/bag.png');

  /// File path: assets/icons/coffee-beans.png
  AssetGenImage get coffeeBeans =>
      const AssetGenImage('assets/icons/coffee-beans.png');

  /// File path: assets/icons/dollar.png
  AssetGenImage get dollar => const AssetGenImage('assets/icons/dollar.png');

  /// File path: assets/icons/drop.png
  AssetGenImage get drop => const AssetGenImage('assets/icons/drop.png');

  /// File path: assets/icons/favorite.png
  AssetGenImage get favorite =>
      const AssetGenImage('assets/icons/favorite.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/menu.png
  AssetGenImage get menu => const AssetGenImage('assets/icons/menu.png');

  /// File path: assets/icons/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/icons/notification.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/star.png
  AssetGenImage get star => const AssetGenImage('assets/icons/star.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        add,
        back,
        bag,
        coffeeBeans,
        dollar,
        drop,
        favorite,
        home,
        menu,
        notification,
        search,
        star
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesArticleGen get article => const $AssetsImagesArticleGen();
  $AssetsImagesCoffeeGen get coffee => const $AssetsImagesCoffeeGen();

  /// File path: assets/images/profile_picture.jpg
  AssetGenImage get profilePicture =>
      const AssetGenImage('assets/images/profile_picture.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [profilePicture];
}

class $AssetsImagesArticleGen {
  const $AssetsImagesArticleGen();

  /// File path: assets/images/article/article1.jpg
  AssetGenImage get article1 =>
      const AssetGenImage('assets/images/article/article1.jpg');

  /// File path: assets/images/article/article2.jpg
  AssetGenImage get article2 =>
      const AssetGenImage('assets/images/article/article2.jpg');

  /// File path: assets/images/article/article3.jpg
  AssetGenImage get article3 =>
      const AssetGenImage('assets/images/article/article3.jpg');

  /// File path: assets/images/article/article4.jpg
  AssetGenImage get article4 =>
      const AssetGenImage('assets/images/article/article4.jpg');

  /// File path: assets/images/article/article5.jpg
  AssetGenImage get article5 =>
      const AssetGenImage('assets/images/article/article5.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [article1, article2, article3, article4, article5];
}

class $AssetsImagesCoffeeGen {
  const $AssetsImagesCoffeeGen();

  /// File path: assets/images/coffee/cappuccino1.jpg
  AssetGenImage get cappuccino1 =>
      const AssetGenImage('assets/images/coffee/cappuccino1.jpg');

  /// File path: assets/images/coffee/cappuccino2.jpg
  AssetGenImage get cappuccino2 =>
      const AssetGenImage('assets/images/coffee/cappuccino2.jpg');

  /// File path: assets/images/coffee/cappuccino3.jpg
  AssetGenImage get cappuccino3 =>
      const AssetGenImage('assets/images/coffee/cappuccino3.jpg');

  /// File path: assets/images/coffee/cappuccino4.jpg
  AssetGenImage get cappuccino4 =>
      const AssetGenImage('assets/images/coffee/cappuccino4.jpg');

  /// File path: assets/images/coffee/cappuccino5.jpg
  AssetGenImage get cappuccino5 =>
      const AssetGenImage('assets/images/coffee/cappuccino5.jpg');

  /// File path: assets/images/coffee/latte1.jpg
  AssetGenImage get latte1 =>
      const AssetGenImage('assets/images/coffee/latte1.jpg');

  /// File path: assets/images/coffee/latte2.jpg
  AssetGenImage get latte2 =>
      const AssetGenImage('assets/images/coffee/latte2.jpg');

  /// File path: assets/images/coffee/latte3.jpg
  AssetGenImage get latte3 =>
      const AssetGenImage('assets/images/coffee/latte3.jpg');

  /// File path: assets/images/coffee/latte4.jpg
  AssetGenImage get latte4 =>
      const AssetGenImage('assets/images/coffee/latte4.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        cappuccino1,
        cappuccino2,
        cappuccino3,
        cappuccino4,
        cappuccino5,
        latte1,
        latte2,
        latte3,
        latte4
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
