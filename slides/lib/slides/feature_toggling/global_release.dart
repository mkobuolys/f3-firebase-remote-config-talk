import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class GlobalReleaseSlide extends FlutterDeckSlideWidget {
  const GlobalReleaseSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/global-release',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-toggling/feature-release-meme.jpeg',
        fit: BoxFit.contain,
      ),
    );
  }
}
