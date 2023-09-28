import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConsoleStepFour extends FlutterDeckSlideWidget {
  const ConsoleStepFour()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/console-step-four',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 6: Set experiment name & description',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/console_step_four.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
