import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SummarySlide extends FlutterDeckSlideWidget {
  const SummarySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/summary',
            header: FlutterDeckHeaderConfiguration(
              title: 'Summary',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => FlutterDeckBulletList(
        items: const [
          'Smarter - Analytics and Firebase Remote Config',
          'Safer - Crashlytics and feature flags',
          'Faster - A/B testing and personalization',
        ],
      ),
      rightBuilder: (context) => Image.asset(
        'assets/firebase-gauntlet.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
