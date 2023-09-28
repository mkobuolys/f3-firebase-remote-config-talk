class FakeFirebaseRemoteConfig {
  const FakeFirebaseRemoteConfig({
    required this.paywallType,
    required this.videoCallCrashes,
    required this.videoCallEnabled,
    required this.onboardingCatIndex
  });

  final String paywallType;
  final bool videoCallCrashes;
  final bool videoCallEnabled;
  final int onboardingCatIndex;

  FakeFirebaseRemoteConfig copyWith({
    String? paywallType,
    bool? videoCallCrashes,
    bool? videoCallEnabled,
    int? onboardingCatIndex
  }) {
    return FakeFirebaseRemoteConfig(
      paywallType: paywallType ?? this.paywallType,
      videoCallCrashes: videoCallCrashes ?? this.videoCallCrashes,
      videoCallEnabled: videoCallEnabled ?? this.videoCallEnabled,
      onboardingCatIndex: onboardingCatIndex ?? this.onboardingCatIndex
    );
  }
}
