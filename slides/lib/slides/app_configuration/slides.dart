import 'package:flutter_deck/flutter_deck.dart';

import 'analytics_auto_events.dart';
import 'analytics_foundation.dart';
import 'analytics_intro.dart';
import 'analytics_step_four.dart';
import 'analytics_step_one.dart';
import 'analytics_step_three.dart';
import 'analytics_step_two.dart';
import 'cat_index_frc_demo.dart';
import 'cat_index_param_demo.dart';
import 'cat_index_param_step_five.dart';
import 'cat_index_param_step_four.dart';
import 'cat_index_param_step_one.dart';
import 'cat_index_param_step_seven.dart';
import 'cat_index_param_step_six.dart';
import 'cat_index_param_step_three.dart';
import 'cat_index_param_step_two.dart';
import 'cat_selection.dart';
import 'conditions_intro.dart';
import 'conditions_step_eight.dart';
import 'conditions_step_five.dart';
import 'conditions_step_four.dart';
import 'conditions_step_one.dart';
import 'conditions_step_seven.dart';
import 'conditions_step_six.dart';
import 'conditions_step_three_a.dart';
import 'conditions_step_three_b.dart';
import 'conditions_step_three_c.dart';
import 'conditions_step_two.dart';
import 'firebase_pyramid_slide.dart';
import 'frc_all_params.dart';
import 'frc_intro.dart';
import 'frc_json.dart';
import 'frc_param.dart';
import 'onboarding_intro.dart';
import 'onboarding_test_option_frc.dart';
import 'onboarding_test_option_store.dart';
import 'smarter_decisions.dart';
import 'title.dart';

const appConfigurationSlides = <FlutterDeckSlideWidget>[
  TitleSlide(),
  OnboardingIntro(),
  CatSelection(),
  AnalyticsIntro(),
  FirebasePyramidSlide(),
  AnalyticsFoundation(),
  AnalyticsStepOne(),
  AnalyticsStepTwo(),
  AnalyticsAutoEvents(),
  AnalyticsStepThree(),
  AnalyticsStepFour(),
  OnboardingTestOptionStore(),
  SmarterDecisions(),
  OnboardingTestOptionFrc(),
  FrcIntro(),
  FrcParam(),
  FrcAllParams(),
  FrcJson(),
  CatIndexParamStepOne(),
  CatIndexParamStepTwo(),
  CatIndexParamDemo(),
  CatIndexParamStepThree(),
  CatIndexParamStepFour(),
  CatIndexParamStepFive(),
  CatIndexParamStepSix(),
  CatIndexParamStepSeven(),
  CatIndexFrcDemo(),
  ConditionsIntro(),
  ConditionsStepOne(),
  ConditionsStepTwo(),
  ConditionsStepThreeA(),
  ConditionsStepThreeB(),
  ConditionsStepThreeC(),
  ConditionsStepFour(),
  ConditionsStepFive(),
  ConditionsStepSix(),
  ConditionsStepSeven(),
  ConditionsStepEight(),
];
