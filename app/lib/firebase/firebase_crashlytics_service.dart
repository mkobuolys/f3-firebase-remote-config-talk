import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_crashlytics_service.g.dart';

@riverpod
FirebaseCrashlyticsService firebaseCrashlyticsService(_) {
  throw UnimplementedError();
}

class FirebaseCrashlyticsService {
  const FirebaseCrashlyticsService({
    required this.crashlytics,
  });

  final FirebaseCrashlytics crashlytics;

  Future<void> recordError(Exception exception, [StackTrace? stack]) async {
    await crashlytics.recordError(exception, stack);
  }
}

class FakeFirebaseCrashlyticsService implements FirebaseCrashlyticsService {
  const FakeFirebaseCrashlyticsService();

  @override
  FirebaseCrashlytics get crashlytics => throw UnimplementedError();

  @override
  Future<void> recordError(Exception exception, [StackTrace? stack]) async {
    // Ignored
  }
}
