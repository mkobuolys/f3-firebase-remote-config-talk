import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RatingsAndReviewsSlide extends FlutterDeckSlideWidget {
  const RatingsAndReviewsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/ratings-and-reviews',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-toggling/ratings-and-reviews.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
