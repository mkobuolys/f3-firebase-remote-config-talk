import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConsoleStepTwelve extends FlutterDeckSlideWidget {
  const ConsoleStepTwelve()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/console-step-twelve',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 14: Start the experiment!',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/console_step_twelve.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
