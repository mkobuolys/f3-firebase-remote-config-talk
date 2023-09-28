import 'package:flutter/widgets.dart';
import 'package:purrfect_match/app.dart';
import 'package:purrfect_match/firebase/fake_firebase_remote_config.dart';
import 'package:purrfect_match/firebase/firebase_analytics_service.dart';
import 'package:purrfect_match/firebase/firebase_crashlytics_service.dart';
import 'package:purrfect_match/firebase/firebase_remote_config_service.dart';

class PurrfectMatchApp extends StatelessWidget {
  const PurrfectMatchApp({
    super.key,
    required this.fakeConfig,
    this.showOnboarding = false,
  });

  final FakeFirebaseRemoteConfig fakeConfig;
  final bool showOnboarding;

  @override
  Widget build(BuildContext context) {
    return App(
      assetsPackage: 'purrfect_match',
      firebaseAnalyticsService: const FakeFirebaseAnalyticsService(),
      firebaseCrashlyticsService: const FakeFirebaseCrashlyticsService(),
      firebaseRemoteConfigService: FakeFirebaseRemoteConfigService(
        fakeConfig: fakeConfig,
      ),
      showOnboarding: showOnboarding,
    );
  }
}
