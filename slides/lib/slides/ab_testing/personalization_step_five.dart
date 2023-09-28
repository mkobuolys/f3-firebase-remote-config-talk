import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PersonalizationStepFive extends FlutterDeckSlideWidget {
  const PersonalizationStepFive()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/personalization-step-five',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: '5. Set name and description',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/personalization_step_five.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
