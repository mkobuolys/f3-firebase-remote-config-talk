import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FrcAllParams extends FlutterDeckSlideWidget {
  const FrcAllParams()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/frc-all-params',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Review all params in the Firebase Console',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/frc_all_params.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
