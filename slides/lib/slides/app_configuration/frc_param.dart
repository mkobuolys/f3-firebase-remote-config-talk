import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FrcParam extends FlutterDeckSlideWidget {
  const FrcParam()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/frc-param',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Create a remote param: string, number, boolean or json',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/frc_param.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
