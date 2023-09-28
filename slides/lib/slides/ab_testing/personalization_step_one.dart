import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PersonalizationStepOne extends FlutterDeckSlideWidget {
  const PersonalizationStepOne()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/personalization-step-one',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: '1. Edit param in FRC -> Add new -> Personalization',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/personalization_step_one.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
