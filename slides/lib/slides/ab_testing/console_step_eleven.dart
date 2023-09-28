import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConsoleStepEleven extends FlutterDeckSlideWidget {
  const ConsoleStepEleven()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/console-step-eleven',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 13: Set values to experiment with: "detailed" and "simple"',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/console_step_eleven.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
