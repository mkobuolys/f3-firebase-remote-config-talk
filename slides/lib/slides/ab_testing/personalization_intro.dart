import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PersonalizationIntro extends FlutterDeckSlideWidget {
  const PersonalizationIntro()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/personalization-intro',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/personalization_intro.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
