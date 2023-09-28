import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:purrfect_match/firebase/fake_firebase_remote_config.dart';
import 'package:purrfect_match/paywall/data/models/paywall_type.dart';

import '../../purrfect_match_app.dart';

class CatIndexFrcDemo extends FlutterDeckSlideWidget {
  const CatIndexFrcDemo()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cat-index-frc-demo',
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
  var _config = FakeFirebaseRemoteConfig(
    paywallType: PaywallType.detailed.value,
    onboardingCatIndex: 1,
    videoCallCrashes: false,
    videoCallEnabled: true,
  );

  var _initial = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Image.asset(
                  _initial
                      ? 'assets/app-configuration/cat_index_frc_demo_before.png'
                      : 'assets/app-configuration/cat_index_frc_demo_after.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 32),
              Center(
                child: FilledButton(
                  onPressed: _initial ? _onConfigUpdate : null,
                  child: const Text('Update cat index to 4'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 32),
        DeviceFrame(
          device: Devices.ios.iPhone13,
          screen: PurrfectMatchApp(
            key: UniqueKey(),
            fakeConfig: _config,
            showOnboarding: true,
          ),
        ),
      ],
    );
  }

  void _onConfigUpdate() {
    setState(() {
      _initial = false;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _config = _config.copyWith(onboardingCatIndex: 4);
      });
    });
  }
}
