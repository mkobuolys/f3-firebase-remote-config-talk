import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CatPeopleStudySlide extends FlutterDeckSlideWidget {
  const CatPeopleStudySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cat-people-study',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/intro/cat-people-study.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
