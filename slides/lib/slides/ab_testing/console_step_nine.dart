import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConsoleStepNine extends FlutterDeckSlideWidget {
  const ConsoleStepNine()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/console-step-nine',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 11: Add another metric',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/console_step_nine.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
