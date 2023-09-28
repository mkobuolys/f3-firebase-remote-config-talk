import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AnalyticsStepTwo extends FlutterDeckSlideWidget {
  const AnalyticsStepTwo()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/analytics-step-two',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 2: Add the dependency to your project',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/firebase_analytics_step_two.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
