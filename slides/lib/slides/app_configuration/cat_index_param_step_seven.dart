import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CatIndexParamStepSeven extends FlutterDeckSlideWidget {
  const CatIndexParamStepSeven()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cat-index-param-step-seven',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 5: Set listener to update values',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/cat_index_param_step_seven.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
