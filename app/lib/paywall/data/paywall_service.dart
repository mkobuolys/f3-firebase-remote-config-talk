import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firebase/firebase_analytics_service.dart';
import '../../firebase/firebase_remote_config_service.dart';
import '../../firebase/firebase_analytics_event.dart';
import 'models/paywall_type.dart';

part 'paywall_service.g.dart';

@riverpod
PaywallService paywallService(PaywallServiceRef ref) {
  return PaywallService(
    analytics: ref.watch(firebaseAnalyticsServiceProvider),
    firebaseRemoteConfigService: ref.watch(firebaseRemoteConfigServiceProvider),
  );
}

@riverpod
PaywallType paywallType(PaywallTypeRef ref) {
  return ref.watch(paywallServiceProvider).getPaywallType();
}

class PaywallService {
  const PaywallService({
    required this.analytics,
    required this.firebaseRemoteConfigService,
  });

  final FirebaseAnalyticsService analytics;
  final FirebaseRemoteConfigService firebaseRemoteConfigService;

  PaywallType getPaywallType() {
    final type = firebaseRemoteConfigService.getPaywallType();

    return PaywallType.fromString(type);
  }

  void logShowPaywall() {
    analytics.logEvent(name: FirebaseAnalyticsEvent.showScreenPaywall);
  }

  void logHidePaywall() {
    analytics.logEvent(name: FirebaseAnalyticsEvent.hideScreenPaywall);
  }

  void logActivateTrial() {
    analytics.logEvent(name: FirebaseAnalyticsEvent.activateTrial);
  }
}
