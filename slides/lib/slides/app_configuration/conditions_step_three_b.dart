import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConditionsStepThreeB extends FlutterDeckSlideWidget {
  const ConditionsStepThreeB()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conditions-step-three-b',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 3: Apply condition',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/conditions_step_three_b.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
