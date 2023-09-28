import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirebasePyramidSlide extends FlutterDeckSlideWidget {
  const FirebasePyramidSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-pyramid',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      label: 'Firebase Pyramid',
      imageBuilder: (_) => Image.asset(
        'assets/app-configuration/firebase_products_pyramid.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
