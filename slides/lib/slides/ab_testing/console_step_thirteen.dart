import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConsoleStepThirteen extends FlutterDeckSlideWidget {
  const ConsoleStepThirteen()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/console-step-thirteen',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 15: Some time later... analyse the results',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/console_step_thirteen.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
