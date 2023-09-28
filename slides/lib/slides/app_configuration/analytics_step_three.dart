import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AnalyticsStepThree extends FlutterDeckSlideWidget {
  const AnalyticsStepThree()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-analytics-step-three',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 3: Track events in the Firebase console',
      imageBuilder: (context) => Image.asset(
        'assets/app-configuration/firebase_analytics_step_three.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
