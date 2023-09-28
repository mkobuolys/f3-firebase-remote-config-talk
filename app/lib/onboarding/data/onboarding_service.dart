import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firebase/firebase_analytics_event.dart';
import '../../firebase/firebase_analytics_service.dart';
import '../../firebase/firebase_remote_config_service.dart';

part 'onboarding_service.g.dart';

@riverpod
OnboardingService onboardingService(OnboardingServiceRef ref) {
  return OnboardingService(
    analytics: ref.watch(firebaseAnalyticsServiceProvider),
    firebaseRemoteConfigService: ref.watch(firebaseRemoteConfigServiceProvider),
  );
}

@riverpod
int onboardingCatIndex(OnboardingCatIndexRef ref) {
  return ref.watch(onboardingServiceProvider).getCatIndex();
}

class OnboardingService {
  const OnboardingService({
    required this.analytics,
    required this.firebaseRemoteConfigService,
  });

  final FirebaseAnalyticsService analytics;
  final FirebaseRemoteConfigService firebaseRemoteConfigService;

  int getCatIndex() => firebaseRemoteConfigService.getOnboardingCatIndex();

  void logStartSwiping(int index) {
    analytics.logEvent(
      name: FirebaseAnalyticsEvent.startSwiping,
      parameters: {
        FirebaseAnalyticsEvent.startSwipingCatIndexParam: index,
      },
    );
  }
}
