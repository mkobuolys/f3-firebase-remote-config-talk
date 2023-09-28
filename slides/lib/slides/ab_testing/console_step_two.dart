import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConsoleStepTwo extends FlutterDeckSlideWidget {
  const ConsoleStepTwo()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/console-step-two',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 4: Create Experiment',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/console_step_two.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
