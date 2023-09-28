import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class VideoCallCodeSlide extends FlutterDeckSlideWidget {
  const VideoCallCodeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/video-call-code',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-toggling/video-call-code.png',
      ),
    );
  }
}
