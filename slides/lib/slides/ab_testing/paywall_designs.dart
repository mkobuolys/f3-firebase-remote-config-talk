import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:purrfect_match/firebase/fake_firebase_remote_config.dart';
import 'package:purrfect_match/paywall/data/models/paywall_type.dart';

import '../../purrfect_match_app.dart';

class PaywallDesigns extends FlutterDeckSlideWidget {
  const PaywallDesigns()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/paywall-designs',
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
  final _config = FakeFirebaseRemoteConfig(
    paywallType: PaywallType.detailed.value,
    onboardingCatIndex: 1,
    videoCallCrashes: false,
    videoCallEnabled: false,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 32),
        Expanded(
          child: DeviceFrame(
            device: Devices.ios.iPhone13,
            screen: PurrfectMatchApp(
              key: UniqueKey(),
              fakeConfig: _config.copyWith(
                paywallType: PaywallType.detailed.value,
              ),
              showOnboarding: false,
            ),
          ),
        ),
        const SizedBox(width: 32),
        Text(
          'VS',
          style: FlutterDeckTheme.of(context)
              .textTheme
              .header
              .copyWith(fontSize: 96),
        ),
        const SizedBox(width: 32),
        Expanded(
          child: DeviceFrame(
            device: Devices.ios.iPhone13,
            screen: PurrfectMatchApp(
              key: UniqueKey(),
              fakeConfig: _config.copyWith(
                paywallType: PaywallType.simple.value,
              ),
              showOnboarding: false,
            ),
          ),
        ),
        const SizedBox(width: 32),
      ],
    );
  }
}
