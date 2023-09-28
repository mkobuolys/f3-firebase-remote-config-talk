import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class VideoCallEnabledConditionalSlide extends FlutterDeckSlideWidget {
  const VideoCallEnabledConditionalSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/video-call-enabled-conditional',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-toggling/video-call-enabled-conditional.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
