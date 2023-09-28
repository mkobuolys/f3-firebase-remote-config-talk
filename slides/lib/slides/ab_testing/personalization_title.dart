import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../widgets/slide_center_text.dart';

class PersonalizationTitle extends FlutterDeckSlideWidget {
  const PersonalizationTitle()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/personalization-title',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (_) => const SlideCenterText(
        title: 'Remote Config Personalization',
        subtitle: 'Smarter than the smartest, faster than the fastest',
      ),
    );
  }
}
