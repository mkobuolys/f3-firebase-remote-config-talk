import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PaywallAnalyticsCode extends FlutterDeckSlideWidget {
  const PaywallAnalyticsCode()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/paywall-analytics-code',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 2: Log analytics events',
      imageBuilder: (context) => Image.asset(
        'assets/ab-testing/paywall_analytics_code.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
