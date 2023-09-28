import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConditionsStepTwo extends FlutterDeckSlideWidget {
  const ConditionsStepTwo()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conditions-step-two',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 2: Set date & time conditions',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/conditions_step_two.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
