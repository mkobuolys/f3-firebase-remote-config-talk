import 'package:flutter/material.dart';

import 'app.dart';
import 'firebase/firebase_analytics_service.dart';
import 'firebase/firebase_crashlytics_service.dart';
import 'firebase/firebase_remote_config_service.dart';
import 'firebase/fake_firebase_remote_config.dart';
import 'paywall/data/models/paywall_type.dart';

void main() {
  const firebaseAnalyticsService = FakeFirebaseAnalyticsService();
  const firebaseCrashlyticsService = FakeFirebaseCrashlyticsService();
  final firebaseRemoteConfigService = FakeFirebaseRemoteConfigService(
    fakeConfig: FakeFirebaseRemoteConfig(
      paywallType: PaywallType.detailed.value,
      onboardingCatIndex: 3,
      videoCallCrashes: false,
      videoCallEnabled: true,
    ),
  );

  runApp(
    App(
      firebaseAnalyticsService: firebaseAnalyticsService,
      firebaseCrashlyticsService: firebaseCrashlyticsService,
      firebaseRemoteConfigService: firebaseRemoteConfigService,
    ),
  );
}
