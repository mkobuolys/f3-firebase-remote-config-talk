import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'firebase/firebase_analytics_service.dart';
import 'firebase/firebase_crashlytics_service.dart';
import 'firebase/firebase_options.dart';
import 'firebase/firebase_remote_config_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Pass all uncaught "fatal" errors from the framework to Crashlytics
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  final firebaseAnalyticsService = FirebaseAnalyticsService(
    analytics: FirebaseAnalytics.instance,
  );
  final firebaseCrashlyticsService = FirebaseCrashlyticsService(
    crashlytics: FirebaseCrashlytics.instance,
  );
  final firebaseRemoteConfigService = FirebaseRemoteConfigService(
    firebaseRemoteConfig: FirebaseRemoteConfig.instance,
  );

  await firebaseRemoteConfigService.init();

  runApp(
    App(
      firebaseAnalyticsService: firebaseAnalyticsService,
      firebaseCrashlyticsService: firebaseCrashlyticsService,
      firebaseRemoteConfigService: firebaseRemoteConfigService,
    ),
  );
}
