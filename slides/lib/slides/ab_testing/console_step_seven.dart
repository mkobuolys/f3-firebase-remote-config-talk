import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConsoleStepSeven extends FlutterDeckSlideWidget {
  const ConsoleStepSeven()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/console-step-seven',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 9: Select "show_screen_paywall"',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/console_step_seven.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
