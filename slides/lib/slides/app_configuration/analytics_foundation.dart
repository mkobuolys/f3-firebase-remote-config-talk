import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:slides/widgets/slide_center_text.dart';

class AnalyticsFoundation extends FlutterDeckSlideWidget {
  const AnalyticsFoundation()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/analytics-foundation',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (_) => const SlideCenterText(
        title: 'Google Analytics',
        subtitle: 'The Foundation',
      ),
    );
  }
}
