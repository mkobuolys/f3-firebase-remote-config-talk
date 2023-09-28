import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class OnboardingTestOptionFrc extends FlutterDeckSlideWidget {
  const OnboardingTestOptionFrc()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/onboarding-test-option-frc',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Option 2',
      imageBuilder: (context) => Image.asset(
        'assets/app-configuration/onboarding_test_option_frc.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
