import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AnalyticsStepFour extends FlutterDeckSlideWidget {
  const AnalyticsStepFour()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-analytics-step-four',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 4: Log custom events and parameters',
      imageBuilder: (context) => Image.asset(
        'assets/app-configuration/firebase_analytics_step_four.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
