import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConsoleStepEight extends FlutterDeckSlideWidget {
  const ConsoleStepEight()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/console-step-eight',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 10: Set goal as "activate_trial"',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/console_step_eight.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
