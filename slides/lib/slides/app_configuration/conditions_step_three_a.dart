import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConditionsStepThreeA extends FlutterDeckSlideWidget {
  const ConditionsStepThreeA()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conditions-step-three-a',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 3: Create a new FRC param',
      imageBuilder: (context) => Image.asset(
        'assets/app-configuration/conditions_step_three_a.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
