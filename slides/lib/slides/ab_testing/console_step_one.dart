import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConsoleStepOne extends FlutterDeckSlideWidget {
  const ConsoleStepOne()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/console-step-one',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 3: Firebase Console -> Engage -> A/B testing',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/console_step_one.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
