import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PaywallTypeCode extends FlutterDeckSlideWidget {
  const PaywallTypeCode()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/paywall-type-code',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 1: Use as a regular FRC param',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/paywall_type_code.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
