import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConditionsStepSeven extends FlutterDeckSlideWidget {
  const ConditionsStepSeven()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conditions-step-seven',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/conditions_step_seven.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
