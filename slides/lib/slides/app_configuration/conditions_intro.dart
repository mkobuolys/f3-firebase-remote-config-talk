import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:slides/widgets/purrfect_theme.dart';

class ConditionsIntro extends FlutterDeckSlideWidget {
  const ConditionsIntro()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conditions-intro',
            steps: 4,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (_) => FlutterDeckSlideStepsBuilder(builder: (context, step) {
        final theme = FlutterDeckTheme.of(context);
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'But what if we want to limit the values',
                style: theme.textTheme.subtitle,
              ),
              AnimatedOpacity(
                opacity: step > 1 ? 1 : 0,
                duration: const Duration(milliseconds: 500),
                child: const _Condition(
                  text: '... to a specific',
                  value: 'location',
                  color: PurrfectTheme.firebaseYellowColor,
                ),
              ),
              AnimatedOpacity(
                opacity: step > 2 ? 1 : 0,
                duration: const Duration(milliseconds: 500),
                child: const _Condition(
                  text: '... or',
                  value: 'language',
                  color: PurrfectTheme.firebaseAmberColor,
                ),
              ),
              AnimatedOpacity(
                opacity: step > 3 ? 1 : 0,
                duration: const Duration(milliseconds: 500),
                child: const _Condition(
                  text: '... or',
                  value: 'date',
                  color: PurrfectTheme.firebaseAmberColor,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class _Condition extends StatelessWidget {
  const _Condition({
    required this.text,
    required this.value,
    required this.color,
  });

  final String text;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = FlutterDeckTheme.of(context);

    return Text.rich(
      style: theme.textTheme.title,
      TextSpan(
        children: [
          TextSpan(text: '$text '),
          TextSpan(
            text: value,
            style: theme.textTheme.title.copyWith(
              color: color,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
            ),
          ),
          const TextSpan(text: ' ?'),
        ],
      ),
    );
  }
}
