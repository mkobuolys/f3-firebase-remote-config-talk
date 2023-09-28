import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConditionsStepSix extends FlutterDeckSlideWidget {
  const ConditionsStepSix()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conditions-step-six',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Combine various conditions',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/conditions_step_six.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
