import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConditionsStepOne extends FlutterDeckSlideWidget {
  const ConditionsStepOne()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conditions-step-one',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 1: Open Conditions tab in Remote Config',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/conditions_step_one.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
