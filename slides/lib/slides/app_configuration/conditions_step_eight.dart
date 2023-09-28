import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConditionsStepEight extends FlutterDeckSlideWidget {
  const ConditionsStepEight()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conditions-step-eight',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Possible conditions params',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/conditions_step_eight.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
