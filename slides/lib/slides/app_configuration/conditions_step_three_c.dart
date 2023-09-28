import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConditionsStepThreeC extends FlutterDeckSlideWidget {
  const ConditionsStepThreeC()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conditions-step-three-c',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 3: Select value for this condition',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/conditions_step_three_c.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
