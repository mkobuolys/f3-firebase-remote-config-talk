import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:slides/widgets/purrfect_theme.dart';

class TestingWithConditions extends FlutterDeckSlideWidget {
  const TestingWithConditions()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/testing-with-conditions',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      theme: FlutterDeckTheme.of(context).copyWith(
        imageSlideTheme: PurrfectTheme.imageSlideTheme,
      ),
      label: 'Option 1: Distribute via Conditions & analyze with Analytics',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/testing_with_conditions.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
