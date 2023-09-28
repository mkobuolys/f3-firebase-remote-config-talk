import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PersonalizationUnderperformance extends FlutterDeckSlideWidget {
  const PersonalizationUnderperformance()
      : super(
    configuration: const FlutterDeckSlideConfiguration(
      route: '/personalization-underperformance',
    ),
  );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/personalization_underperformance.jpg',
        fit: BoxFit.contain,
      ),
    );
  }
}
