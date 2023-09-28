import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CrashlyticsSetupSlide extends FlutterDeckSlideWidget {
  const CrashlyticsSetupSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/crashlytics-setup',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-toggling/crashlytics-setup.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
