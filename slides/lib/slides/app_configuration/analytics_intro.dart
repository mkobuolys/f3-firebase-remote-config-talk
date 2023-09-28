import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AnalyticsIntro extends FlutterDeckSlideWidget {
  const AnalyticsIntro()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/onboarding-testing-options',
            steps: 2,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlideStepsBuilder(builder: (_, step) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'How can we find out?',
            style: FlutterDeckTheme.of(context).textTheme.title,
          ),
          const SizedBox(
            height: 32,
          ),
          AnimatedOpacity(
            opacity: step > 1 ? 1 : 0,
            duration: const Duration(milliseconds: 500),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Image.asset(
                'assets/app-configuration/google_analytics_logo.png',
              ),
            ),
          ),
        ],
      );
    });
  }
}
