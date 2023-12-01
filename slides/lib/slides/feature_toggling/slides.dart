import 'package:flutter_deck/flutter_deck.dart';

import 'app_crash_statistics.dart';
import 'app_monitoring.dart';
import 'avoiding_bugs.dart';
import 'crashlytics_alerts.dart';
import 'crashlytics_dashboard.dart';
import 'crashlytics_setup.dart';
import 'firebase_rollout_preview.dart';
import 'global_feature_flag.dart';
import 'global_release.dart';
import 'percentage_rollout.dart';
import 'ratings_and_reviews.dart';
import 'staged_rollout_condition.dart';
import 'title.dart';
import 'video_call_code.dart';
import 'video_call_coding.dart';
import 'video_call_demo.dart';
import 'video_call_demo_crash.dart';
import 'video_call_enabled_conditional.dart';
import 'video_call_premium_feature.dart';

const featureTogglingSlides = <FlutterDeckSlideWidget>[
  TitleSlide(),
  VideoCallPremiumFeatureSlide(),
  VideoCallCodingSlide(),
  GlobalReleaseSlide(),
  VideoCallDemoCrashSlide(),
  RatingsAndReviewsSlide(),
  AppCrashStatisticsSlide(),
  AppMonitoringSlide(),
  CrashlyticsSetupSlide(),
  CrashlyticsDashboardSlide(),
  CrashlyticsAlertsSlide(),
  AvoidingBugsSlide(),
  GlobalFeatureFlagSlide(),
  PercentageRolloutSlide(),
  StagedRolloutConditionSlide(),
  VideoCallEnabledConditionalSlide(),
  FirebaseRolloutPreviewSlide(),
  VideoCallCodeSlide(),
  VideoCallDemoSlide(),
];
