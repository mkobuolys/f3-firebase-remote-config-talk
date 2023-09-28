import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class VideoCallPremiumFeatureSlide extends FlutterDeckSlideWidget {
  const VideoCallPremiumFeatureSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/video-call-premium-feature',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-toggling/video-call-premium-feature.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
