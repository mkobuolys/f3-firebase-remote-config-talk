import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FrcJson extends FlutterDeckSlideWidget {
  const FrcJson()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/frc-json',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Simple JSON under the hood',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/frc_json.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
