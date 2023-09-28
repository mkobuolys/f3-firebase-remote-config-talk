import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AnalyticsStepOne extends FlutterDeckSlideWidget {
  const AnalyticsStepOne()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/analytics-step-one',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 1: Enable Google Analytics for your project',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/firebase_analytics_step_one.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
