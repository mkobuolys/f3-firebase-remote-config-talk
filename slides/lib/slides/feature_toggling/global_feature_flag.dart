import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../widgets/image_with_source.dart';

class GlobalFeatureFlagSlide extends FlutterDeckSlideWidget {
  const GlobalFeatureFlagSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/global-feature-flag',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (_) => const ImageWithSource(
        imageAsset: 'assets/feature-toggling/global-feature-flag.png',
        sourceUrl: 'https://reflectoring.io/java-feature-flags/',
      ),
    );
  }
}
