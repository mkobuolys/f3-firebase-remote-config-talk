import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConsoleStepSix extends FlutterDeckSlideWidget {
  const ConsoleStepSix()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/console-step-six',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 8: Select activation event',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/console_step_six.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
