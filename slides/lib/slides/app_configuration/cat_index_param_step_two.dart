import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CatIndexParamStepTwo extends FlutterDeckSlideWidget {
  const CatIndexParamStepTwo()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cat-index-param-step-two',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 2: Create param in Firebase console',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/cat_index_param_step_two.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
