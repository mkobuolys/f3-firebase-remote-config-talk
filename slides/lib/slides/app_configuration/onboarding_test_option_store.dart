import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class OnboardingTestOptionStore extends FlutterDeckSlideWidget {
  const OnboardingTestOptionStore()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/onboarding-test-option-store',
            steps: 6,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlideStepsBuilder(builder: (context, step) {
      final theme = FlutterDeckTheme.of(context);
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Option 1: Release new app version every week with new index',
              style: theme.textTheme.title,
            ),
            const SizedBox(
              height: 16,
            ),
            AnimatedOpacity(
              opacity: step > 1 ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: Text(
                '1. Change value',
                style: theme.textTheme.subtitle,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            AnimatedOpacity(
              opacity: step > 2 ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: Text(
                '2. Deploy to stores',
                style: theme.textTheme.subtitle,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: AnimatedOpacity(
                opacity: step > 3 ? 1 : 0,
                duration: const Duration(milliseconds: 500),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '3. Wait for approval from stores (possibly forever)',
                      style: theme.textTheme.subtitle,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/app-configuration/mangirdas_apple_app_review.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            AnimatedOpacity(
              opacity: step > 4 ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: Text(
                '4. Track analytics for one week',
                style: theme.textTheme.subtitle,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            AnimatedOpacity(
              opacity: step > 5 ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: Text(
                '5. Repeat 5 times',
                style: theme.textTheme.subtitle,
              ),
            ),
          ],
        ),
      );
    });
  }
}
