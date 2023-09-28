import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class StagedRolloutConditionSlide extends FlutterDeckSlideWidget {
  const StagedRolloutConditionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/staged-rollout-condition',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-toggling/staged-rollout-condition.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
