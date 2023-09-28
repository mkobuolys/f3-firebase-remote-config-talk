import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../widgets/image_with_source.dart';

class CatIndexParamStepFour extends FlutterDeckSlideWidget {
  const CatIndexParamStepFour()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cat-index-param-step-four',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (_) => const ImageWithSource(
        imageAsset: 'assets/app-configuration/cat_index_param_step_four.png',
        sourceUrl: 'https://firebase.google.com/docs/remote-config/real-time',
      ),
    );
  }
}
