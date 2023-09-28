import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PersonalizationStepTwo extends FlutterDeckSlideWidget {
  const PersonalizationStepTwo()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/personalization-step-two',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: '2. Select values to personalize',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/personalization_step_two.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
