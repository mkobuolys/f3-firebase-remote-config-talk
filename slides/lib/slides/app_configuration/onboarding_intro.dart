import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:purrfect_match/firebase/fake_firebase_remote_config.dart';
import 'package:purrfect_match/paywall/data/models/paywall_type.dart';

import '../../purrfect_match_app.dart';

class OnboardingIntro extends FlutterDeckSlideWidget {
  const OnboardingIntro()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/onboarding-intro',
            steps: 3,
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

  final _config = FakeFirebaseRemoteConfig(
    paywallType: PaywallType.detailed.value,
    onboardingCatIndex: 1,
    videoCallCrashes: false,
    videoCallEnabled: true,
  );

  @override
  Widget build(BuildContext context) {
    final theme = FlutterDeckTheme.of(context);
    final f3LogoMargin = MediaQuery.sizeOf(context).width * 0.1 + 32;
    return FlutterDeckSlideStepsBuilder(builder: (context, step) {
      return Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'What is the first thing that the user sees?',
                  style: theme.textTheme.subtitle,
                ),
                AnimatedOpacity(
                  opacity: step > 1 ? 1 : 0,
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    'Onboarding',
                    style: theme.textTheme.title.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                AnimatedOpacity(
                  opacity: step > 2 ? 1 : 0,
                  duration: const Duration(milliseconds: 500),
                  child: Image.asset(
                    'assets/app-configuration/after_onboarding_flow.png',
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 32),
          DeviceFrame(
            device: Devices.ios.iPhone13,
            screen: LayoutBuilder(builder: (_, constraints) {
              return AnimatedCrossFade(
                duration: const Duration(milliseconds: 500),
                crossFadeState: step > 1
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstChild: SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  child: PurrfectMatchApp(
                    key: _key,
                    fakeConfig: _config,
                    showOnboarding: true,
                  ),
                ),
                secondChild: SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                ),
              );
            }),
          ),
          SizedBox(width: f3LogoMargin),
        ],
      );
    });
  }
}
