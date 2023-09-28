import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../widgets/slide_center_text.dart';

class SubscriptionIntro extends FlutterDeckSlideWidget {
  const SubscriptionIntro()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/subscription-intro',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (_) => const SlideCenterText(
        title: 'Turning Users into Subscribers 💸',
        subtitle: '',
      ),
    );
  }
}
