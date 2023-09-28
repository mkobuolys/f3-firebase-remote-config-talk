import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConditionsStepFive extends FlutterDeckSlideWidget {
  const ConditionsStepFive()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conditions-step-five',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Review what conditions are applied to FRC params',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/conditions_step_five.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
