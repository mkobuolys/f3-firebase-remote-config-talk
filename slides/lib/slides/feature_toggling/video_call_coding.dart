import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class VideoCallCodingSlide extends FlutterDeckSlideWidget {
  const VideoCallCodingSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/video-call-coding',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-toggling/coding.gif',
        fit: BoxFit.contain,
      ),
    );
  }
}
