import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TestingWithAB extends FlutterDeckSlideWidget {
  const TestingWithAB()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/testing-with-ab',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Option 2: A/B testing',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/testing_with_ab.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
