import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'assets/assets_package.dart';
import 'firebase/firebase_analytics_service.dart';
import 'firebase/firebase_crashlytics_service.dart';
import 'firebase/firebase_remote_config_service.dart';
import 'home/home_page.dart';
import 'onboarding/widgets/onboarding_page.dart';

class App extends StatelessWidget {
  const App({
    required this.firebaseAnalyticsService,
    required this.firebaseCrashlyticsService,
    required this.firebaseRemoteConfigService,
    this.assetsPackage,
    this.showOnboarding = true,
    super.key,
  });

  final FirebaseAnalyticsService firebaseAnalyticsService;
  final FirebaseCrashlyticsService firebaseCrashlyticsService;
  final FirebaseRemoteConfigService firebaseRemoteConfigService;
  final String? assetsPackage;
  final bool showOnboarding;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        assetsPackageProvider.overrideWith(
          (_) => assetsPackage,
        ),
        firebaseAnalyticsServiceProvider.overrideWith(
          (_) => firebaseAnalyticsService,
        ),
        firebaseCrashlyticsServiceProvider.overrideWith(
          (_) => firebaseCrashlyticsService,
        ),
        firebaseRemoteConfigServiceProvider.overrideWith(
          (_) => firebaseRemoteConfigService,
        ),
      ],
      child: _App(showOnboarding: showOnboarding),
    );
  }
}

class _App extends ConsumerStatefulWidget {
  const _App({
    required this.showOnboarding,
  });

  final bool showOnboarding;

  @override
  ConsumerState<_App> createState() => _AppState();
}

class _AppState extends ConsumerState<_App> {
  @override
  void didUpdateWidget(covariant _App oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (mounted) ref.invalidate(firebaseRemoteConfigServiceProvider);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Purrfect Match',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: widget.showOnboarding ? const OnboardingPage() : const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
