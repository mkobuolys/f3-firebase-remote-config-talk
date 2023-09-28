import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConnectingPassionsSlide extends FlutterDeckSlideWidget {
  const ConnectingPassionsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/connecting-passions',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/intro/cat-meme.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 16),
          Text(
            '+',
            style: FlutterDeckTheme.of(context)
                .textTheme
                .title
                .copyWith(fontSize: 128),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Image.asset(
              'assets/intro/flutter-logo.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 16),
          Text(
            '+',
            style: FlutterDeckTheme.of(context)
                .textTheme
                .title
                .copyWith(fontSize: 128),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Image.asset(
              'assets/intro/firebase-logo.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 16),
          Text(
            '=',
            style: FlutterDeckTheme.of(context)
                .textTheme
                .title
                .copyWith(fontSize: 128),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/intro/money-meme.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
