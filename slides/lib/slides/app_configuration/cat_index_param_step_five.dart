import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CatIndexParamStepFive extends FlutterDeckSlideWidget {
  const CatIndexParamStepFive()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cat-index-param-step-five',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 4: Fetch & activate initial values',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/cat_index_param_step_five.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
