import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AppMonitoringSlide extends FlutterDeckSlideWidget {
  const AppMonitoringSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-monitoring',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-toggling/app-monitoring.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
