import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConditionsStepFour extends FlutterDeckSlideWidget {
  const ConditionsStepFour()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conditions-step-four',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Review conditions in the conditions tab',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/conditions_step_four.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
