import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirebaseRolloutPreviewSlide extends FlutterDeckSlideWidget {
  const FirebaseRolloutPreviewSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-rollout-preview',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      theme: FlutterDeckTheme.of(context).copyWith(
        imageSlideTheme: FlutterDeckImageSlideThemeData(
          labelTextStyle: FlutterDeckTheme.of(context).textTheme.bodySmall,
        ),
      ),
      imageBuilder: (context) => Image.asset(
        'assets/feature-toggling/firebase-rollout-preview.png',
        fit: BoxFit.contain,
      ),
      label: 'How to release safely and reduce risk with Remote Config and '
          'Crashlytics - Firebase Demo Day 2023',
    );
  }
}
