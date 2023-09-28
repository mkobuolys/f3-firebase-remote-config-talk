import 'package:device_frame/device_frame.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:purrfect_match/firebase/fake_firebase_remote_config.dart';
import 'package:purrfect_match/paywall/data/models/paywall_type.dart';

import '../../purrfect_match_app.dart';

class VideoCallDemoCrashSlide extends FlutterDeckSlideWidget {
  const VideoCallDemoCrashSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/video-call-crash',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: DeviceFrame(
          device: Devices.android.smallTablet,
          orientation: Orientation.landscape,
          screen: PurrfectMatchApp(
            fakeConfig: FakeFirebaseRemoteConfig(
              onboardingCatIndex: 4,
              paywallType: PaywallType.simple.value,
              videoCallCrashes: true,
              videoCallEnabled: true,
            ),
          ),
        ),
      ),
    );
  }
}
