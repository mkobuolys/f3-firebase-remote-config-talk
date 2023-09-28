import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CatIndexParamStepOne extends FlutterDeckSlideWidget {
  const CatIndexParamStepOne()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cat-index-param-step-one',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 1: Add dependency to your project',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/cat_index_param_step_one.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
