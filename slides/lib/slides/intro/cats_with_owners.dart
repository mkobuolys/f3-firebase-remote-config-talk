import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CatsWithOwnersSlide extends FlutterDeckSlideWidget {
  const CatsWithOwnersSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cats-with-owners',
            steps: 5,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => FlutterDeckSlideStepsBuilder(
        builder: (context, stepNumber) {
          if (stepNumber < 4) {
            return Center(
              child: Image.asset(
                'assets/intro/cat-with-owner-$stepNumber.png',
                fit: BoxFit.contain,
              ),
            );
          }

          return Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/intro/charlie-chaplin-cat.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: AnimatedOpacity(
                  opacity: stepNumber == 5 ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 300),
                  child: Image.asset(
                    'assets/intro/charlie-chaplin.png',
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
