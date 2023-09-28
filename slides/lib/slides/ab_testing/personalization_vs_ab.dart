import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PersonalizationVsAb extends FlutterDeckSlideWidget {
  const PersonalizationVsAb()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/personalization-vs-ab',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/personalization_vs_ab.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
