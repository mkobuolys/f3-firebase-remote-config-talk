import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:purrfect_match/firebase/fake_firebase_remote_config.dart';
import 'package:purrfect_match/paywall/data/models/paywall_type.dart';

import '../../purrfect_match_app.dart';

final _config = FakeFirebaseRemoteConfig(
  paywallType: PaywallType.detailed.value,
  onboardingCatIndex: 1,
  videoCallCrashes: false,
  videoCallEnabled: true,
);

class CatIndexParamDemo extends FlutterDeckSlideWidget {
  const CatIndexParamDemo()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cat-index-param-demo',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (_) => Column(
        children: [
          const SizedBox(height: 32),
          Image.asset(
            'assets/app-configuration/cat_index_param_demo.png',
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 16),
          const Expanded(
            child: Row(
              children: [
                Expanded(child: _OnboardingCatDemo(index: 1)),
                SizedBox(width: 32),
                Expanded(child: _OnboardingCatDemo(index: 2)),
                SizedBox(width: 32),
                Expanded(child: _OnboardingCatDemo(index: 3)),
                SizedBox(width: 32),
                Expanded(child: _OnboardingCatDemo(index: 4)),
                SizedBox(width: 32),
                Expanded(child: _OnboardingCatDemo(index: 5)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _OnboardingCatDemo extends StatelessWidget {
  const _OnboardingCatDemo({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: DeviceFrame(
            device: Devices.ios.iPhone13,
            screen: PurrfectMatchApp(
              key: UniqueKey(),
              fakeConfig: _config.copyWith(onboardingCatIndex: index),
              showOnboarding: true,
            ),
          ),
        ),
        const SizedBox(height: 32),
        Text(
          'catIndex = $index',
          style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
