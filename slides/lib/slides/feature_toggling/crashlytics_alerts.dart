import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CrashlyticsAlertsSlide extends FlutterDeckSlideWidget {
  const CrashlyticsAlertsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/crashlytics-alerts',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-toggling/crashlytics-alerts.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
