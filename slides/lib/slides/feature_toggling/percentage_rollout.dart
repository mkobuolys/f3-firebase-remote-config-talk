import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../widgets/image_with_source.dart';

class PercentageRolloutSlide extends FlutterDeckSlideWidget {
  const PercentageRolloutSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/percentage-rollout',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (_) => const ImageWithSource(
        imageAsset: 'assets/feature-toggling/percentage-rollout.png',
        sourceUrl: 'https://reflectoring.io/java-feature-flags/',
      ),
    );
  }
}
