import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DariaAndCatsSlide extends FlutterDeckSlideWidget {
  const DariaAndCatsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/daria-and-cats',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(
            child: Image.asset(
              'assets/intro/daria-and-cat-1.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Image.asset(
              'assets/intro/daria-and-cat-2.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Image.asset(
              'assets/intro/daria-and-cat-3.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
