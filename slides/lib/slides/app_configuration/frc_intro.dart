import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FrcIntro extends FlutterDeckSlideWidget {
  const FrcIntro()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/frc-intro',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Key-Value pairs that live in the cloud',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/frc_intro.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
