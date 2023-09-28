import 'dart:developer' as developer;

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'fake_firebase_remote_config.dart';

part 'firebase_remote_config_service.g.dart';

@riverpod
FirebaseRemoteConfigService firebaseRemoteConfigService(_) {
  throw UnimplementedError();
}

class FirebaseRemoteConfigService {
  const FirebaseRemoteConfigService({
    required this.firebaseRemoteConfig,
  });

  final FirebaseRemoteConfig firebaseRemoteConfig;

  Stream<RemoteConfigUpdate> get onConfigUpdated =>
      firebaseRemoteConfig.onConfigUpdated;

  Future<void> init() async {
    try {
      await firebaseRemoteConfig.ensureInitialized();
      await firebaseRemoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: Duration.zero,
        ),
      );
      await firebaseRemoteConfig.fetchAndActivate();
    } on FirebaseException catch (e, st) {
      developer.log(
        'Unable to initialize Firebase Remote Config',
        error: e,
        stackTrace: st,
      );
    }
  }

  String getPaywallType() => firebaseRemoteConfig.getString('paywall_type');

  int getOnboardingCatIndex() => firebaseRemoteConfig.getInt('onboarding_cat_index');

  // Should always work on real devices
  bool getVideoCallCrashes() => false;

  bool getVideoCallEnabled() =>
      firebaseRemoteConfig.getBool('video_call_enabled');

  Future<bool> activate() => firebaseRemoteConfig.activate();
}

class FakeFirebaseRemoteConfigService implements FirebaseRemoteConfigService {
  const FakeFirebaseRemoteConfigService({
    required this.fakeConfig,
  });

  final FakeFirebaseRemoteConfig fakeConfig;

  @override
  FirebaseRemoteConfig get firebaseRemoteConfig => throw UnimplementedError();

  @override
  Stream<RemoteConfigUpdate> get onConfigUpdated => const Stream.empty();

  @override
  Future<void> init() async {
    // Ignored
  }

  @override
  String getPaywallType() => fakeConfig.paywallType;

  @override
  int getOnboardingCatIndex() => fakeConfig.onboardingCatIndex;

  @override
  bool getVideoCallCrashes() => fakeConfig.videoCallCrashes;

  @override
  bool getVideoCallEnabled() => fakeConfig.videoCallEnabled;

  @override
  Future<bool> activate() async => true;
}
