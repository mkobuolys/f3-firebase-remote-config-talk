import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:purrfect_match/firebase/fake_firebase_remote_config.dart';
import 'package:purrfect_match/paywall/data/models/paywall_type.dart';

import '../../purrfect_match_app.dart';

class VideoCallDemoSlide extends FlutterDeckSlideWidget {
  const VideoCallDemoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/video-call-demo',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _Content(),
    );
  }
}

class _Content extends StatefulWidget {
  const _Content();

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  final _key = UniqueKey();

  var _config = FakeFirebaseRemoteConfig(
    onboardingCatIndex: 4,
    paywallType: PaywallType.simple.value,
    videoCallCrashes: false,
    videoCallEnabled: false,
  );
  var _videoCallEnabled = false;

  void _onVideoCallEnabledChanged(bool value) => setState(
        () {
          _videoCallEnabled = value;
          _config = _config.copyWith(videoCallEnabled: _videoCallEnabled);
        },
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/feature-toggling/video-call-enabled-conditional.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Video call enabled: ',
                    style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
                  ),
                  Switch(
                    value: _videoCallEnabled,
                    onChanged: _onVideoCallEnabledChanged,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 32),
        DeviceFrame(
          device: Devices.ios.iPhone13,
          screen: PurrfectMatchApp(key: _key, fakeConfig: _config),
        ),
      ],
    );
  }
}
