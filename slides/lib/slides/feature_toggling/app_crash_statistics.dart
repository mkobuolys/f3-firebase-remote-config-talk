import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AppCrashStatisticsSlide extends FlutterDeckSlideWidget {
  const AppCrashStatisticsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-crash-statistics',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '84%',
                    style: FlutterDeckTheme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontSize: 128, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'of users abandon an application after seeing two crashes',
                    style: FlutterDeckTheme.of(context).textTheme.subtitle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Text(
              'Source: https://www.bugsnag.com/research/are-your-apps-healthy',
              style: FlutterDeckTheme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
