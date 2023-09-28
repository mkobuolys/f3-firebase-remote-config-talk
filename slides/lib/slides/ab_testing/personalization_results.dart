import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../widgets/image_with_source.dart';

class PersonalizationResults extends FlutterDeckSlideWidget {
  const PersonalizationResults()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/personalization-results',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (_) => const ImageWithSource(
        imageAsset: 'assets/ab-testing/personalization_results.png',
        sourceUrl: 'https://www.youtube.com/watch?v=nRQwJV1iMKs',
      ),
    );
  }
}
