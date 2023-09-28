import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AnalyticsAutoEvents extends FlutterDeckSlideWidget {
  const AnalyticsAutoEvents()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-analytics-auto-events',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (_) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              Expanded(
                child: Image.asset(
                  'assets/app-configuration/firebase_analytics_auto_events.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Source: https://support.google.com/analytics/answer/9234069',
              ),
              const SizedBox(height: 16),
              Text(
                'Firebase automatically collects some events',
                style: FlutterDeckTheme.of(context)
                    .imageSlideTheme
                    .labelTextStyle
                    ?.copyWith(fontSize: 32),
              ),
            ],
          ),
        );
      },
    );
  }
}
