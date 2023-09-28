import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:slides/widgets/purrfect_theme.dart';

class SmarterDecisions extends FlutterDeckSlideWidget {
  const SmarterDecisions()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/smarter-decisions',
            steps: 2,
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
    final theme = FlutterDeckTheme.of(context);
    return FlutterDeckSlideStepsBuilder(builder: (_, step) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              style: theme.textTheme.subtitle,
              TextSpan(
                children: [
                  const TextSpan(text: 'Firebase Analytics helps us to make '),
                  TextSpan(
                    text: 'smarter',
                    style: theme.textTheme.subtitle.copyWith(
                      color: PurrfectTheme.firebaseYellowColor,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const TextSpan(text: ' decisions...'),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            AnimatedOpacity(
              opacity: step > 1 ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: Text.rich(
                style: theme.textTheme.title,
                TextSpan(
                  children: [
                    const TextSpan(text: 'but how to make them'),
                    TextSpan(
                      text: ' faster',
                      style: theme.textTheme.title.copyWith(
                        color: PurrfectTheme.firebaseAmberColor,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const TextSpan(text: ' ?'),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
