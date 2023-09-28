import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConsoleStepTen extends FlutterDeckSlideWidget {
  const ConsoleStepTen()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/console-step-ten',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 12: Select "hide_screen_paywall"',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/console_step_ten.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
