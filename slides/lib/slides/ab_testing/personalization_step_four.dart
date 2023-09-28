import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PersonalizationStepFour extends FlutterDeckSlideWidget {
  const PersonalizationStepFour()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/personalization-step-four',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: '4. Select target user group with FRC conditions',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/personalization_step_four.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
