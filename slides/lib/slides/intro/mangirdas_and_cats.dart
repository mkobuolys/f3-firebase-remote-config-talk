import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MangirdasAndCatsSlide extends FlutterDeckSlideWidget {
  const MangirdasAndCatsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/mangirdas-and-cats',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/intro/mk-cat-shirt-1.jpeg',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Image.asset(
                    'assets/intro/mk-cat-shirt-2.jpeg',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Image.asset(
              'assets/intro/mk-cat-shirt-3.jpeg',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
