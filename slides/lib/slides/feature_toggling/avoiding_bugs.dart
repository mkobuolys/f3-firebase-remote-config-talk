import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AvoidingBugsSlide extends FlutterDeckSlideWidget {
  const AvoidingBugsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/avoiding-bugs',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-toggling/avoiding-bugs.jpeg',
        fit: BoxFit.contain,
      ),
    );
  }
}
