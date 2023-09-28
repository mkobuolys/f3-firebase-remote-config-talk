import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PersonalizationStepThree extends FlutterDeckSlideWidget {
  const PersonalizationStepThree()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/personalization-step-three',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: '3. Select an objective to track',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/personalization_step_three.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
