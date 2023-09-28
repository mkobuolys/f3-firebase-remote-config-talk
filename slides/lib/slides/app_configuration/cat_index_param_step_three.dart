import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CatIndexParamStepThree extends FlutterDeckSlideWidget {
  const CatIndexParamStepThree()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cat-index-param-step-three',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Step 3: Publish changes on Firebase console',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/cat_index_param_step_three.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
