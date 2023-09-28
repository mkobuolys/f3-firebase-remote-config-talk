import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CrashlyticsDashboardSlide extends FlutterDeckSlideWidget {
  const CrashlyticsDashboardSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/crashlytics-dashboard',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-toggling/crashlytics-dashboard.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
