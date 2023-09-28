import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PersonalizationConsoleOverview extends FlutterDeckSlideWidget {
  const PersonalizationConsoleOverview()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/personalization-console-overview',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'See applied personalization in the console',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/personalization_console_overview.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
