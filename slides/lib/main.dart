import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:slides/widgets/purrfect_theme.dart';

import 'slides/slides.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  unawaited([Permission.camera, Permission.microphone].request());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      configuration: const FlutterDeckConfiguration(
        footer: FlutterDeckFooterConfiguration(
          showSlideNumbers: true,
          showSocialHandle: true,
        ),
        transition: FlutterDeckTransition.fade(),
        background: FlutterDeckBackgroundConfiguration(
          dark: FlutterDeckBackground.custom(child: _Background()),
          light: FlutterDeckBackground.custom(child: _Background()),
        ),
      ),
      darkTheme: FlutterDeckThemeData.dark().copyWith(
        imageSlideTheme: PurrfectTheme.imageSlideTheme,
      ),
      lightTheme: FlutterDeckThemeData.light().copyWith(
        imageSlideTheme: PurrfectTheme.imageSlideTheme,
      ),
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: 'Mangirdas Kazlauskas, Daria Orlova',
        description: 'Average cat enjoyers',
        socialHandle: '@mkobuolys | @dariadroid',
        imagePath: 'assets/speaker.png',
      ),
      slides: const [
        ...introSlides,
        ...appConfigurationSlides,
        ...featureTogglingSlides,
        ...abTestingSlides,
        SummarySlide(),
        ThankYouSlide(),
        FeedbackSlide(),
      ],
    );
  }
}

class _Background extends StatelessWidget {
  const _Background();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: const EdgeInsets.only(bottom: 48.0, right: 16.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            'assets/devfest_2023.png',
            width: constraints.maxWidth / 12,
          ),
        ),
      ),
    );
  }
}
