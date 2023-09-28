import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConsoleStepFive extends FlutterDeckSlideWidget {
  const ConsoleStepFive()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/console-step-five',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 7: Select app & user percentage',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/console_step_five.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
