import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConsoleStepThree extends FlutterDeckSlideWidget {
  const ConsoleStepThree()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/console-step-three',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 5: Select Firebase Remote Config',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/console_step_three.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
