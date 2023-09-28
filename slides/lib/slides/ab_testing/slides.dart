import 'package:flutter_deck/flutter_deck.dart';

import 'console_step_eight.dart';
import 'console_step_eleven.dart';
import 'console_step_five.dart';
import 'console_step_four.dart';
import 'console_step_nine.dart';
import 'console_step_one.dart';
import 'console_step_seven.dart';
import 'console_step_six.dart';
import 'console_step_ten.dart';
import 'console_step_thirteen.dart';
import 'console_step_three.dart';
import 'console_step_twelve.dart';
import 'console_step_two.dart';
import 'paywall_analytics_code.dart';
import 'paywall_designs.dart';
import 'paywall_type_code.dart';
import 'personalization_console_overview.dart';
import 'personalization_intro.dart';
import 'personalization_results.dart';
import 'personalization_step_five.dart';
import 'personalization_step_four.dart';
import 'personalization_step_one.dart';
import 'personalization_step_three.dart';
import 'personalization_step_two.dart';
import 'personalization_title.dart';
import 'personalization_underperformance.dart';
import 'personalization_vs_ab.dart';
import 'subscription_intro.dart';
import 'testing_with_ab.dart';
import 'testing_with_conditions.dart';
import 'title.dart';

const abTestingSlides = <FlutterDeckSlideWidget>[
  SubscriptionIntro(),
  TitleSlide(),
  PaywallDesigns(),
  TestingWithConditions(),
  TestingWithAB(),
  PaywallTypeCode(),
  PaywallAnalyticsCode(),
  ConsoleStepOne(),
  ConsoleStepTwo(),
  ConsoleStepThree(),
  ConsoleStepFour(),
  ConsoleStepFive(),
  ConsoleStepSix(),
  ConsoleStepSeven(),
  ConsoleStepEight(),
  ConsoleStepNine(),
  ConsoleStepTen(),
  ConsoleStepEleven(),
  ConsoleStepTwelve(),
  ConsoleStepThirteen(),
  PersonalizationTitle(),
  PersonalizationIntro(),
  PersonalizationVsAb(),
  PersonalizationStepOne(),
  PersonalizationStepTwo(),
  PersonalizationStepThree(),
  PersonalizationStepFour(),
  PersonalizationStepFive(),
  PersonalizationConsoleOverview(),
  PersonalizationResults(),
  PersonalizationUnderperformance(),
];
