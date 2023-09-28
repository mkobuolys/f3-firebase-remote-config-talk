import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../assets/asset_package_image.dart';
import '../../home/home_page.dart';
import '../../widgets/app_primary_elevated_button.dart';
import '../data/onboarding_service.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(onboardingCatIndexProvider);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text.rich(
                TextSpan(
                  text: 'Ready to find your\n',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                  children: [
                    TextSpan(
                      text: 'Purrfect Pair?',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w900,
                        height: 1,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              _CatImage(index: index),
              const Spacer(),
              AppPrimaryElevatedButton(
                onPressed: () => _openHome(
                  context: context,
                  ref: ref,
                  index: index,
                ),
                child: const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Start swiping',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  void _openHome({
    required BuildContext context,
    required WidgetRef ref,
    required int index,
  }) {
    ref.read(onboardingServiceProvider).logStartSwiping(index);

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => const HomePage(),
      ),
    );
  }
}

class _CatImage extends StatelessWidget {
  const _CatImage({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(16));
    final colorScheme = Theme.of(context).colorScheme;

    return Transform.rotate(
      angle: pi / 20,
      child: Material(
        elevation: 8,
        color: colorScheme.secondary,
        borderRadius: borderRadius,
        child: ClipRRect(
          borderRadius: borderRadius,
          child: SizedBox(
            height: 320,
            child: AssetPackageImage(
              path: 'assets/cats/cat_$index.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
