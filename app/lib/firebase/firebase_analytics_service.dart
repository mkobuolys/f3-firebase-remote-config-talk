import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_analytics_service.g.dart';

@riverpod
FirebaseAnalyticsService firebaseAnalyticsService(_) {
  throw UnimplementedError();
}

class FirebaseAnalyticsService {
  const FirebaseAnalyticsService({
    required this.analytics,
  });

  final FirebaseAnalytics analytics;

  Future<void> logEvent({
    required String name,
    Map<String, Object?>? parameters,
  }) async {
    await analytics.logEvent(name: name, parameters: parameters);
  }
}

class FakeFirebaseAnalyticsService implements FirebaseAnalyticsService {
  const FakeFirebaseAnalyticsService();

  @override
  FirebaseAnalytics get analytics => throw UnimplementedError();

  @override
  Future<void> logEvent({
    required String name,
    Map<String, Object?>? parameters,
  }) async {
    // Ignored
  }
}
