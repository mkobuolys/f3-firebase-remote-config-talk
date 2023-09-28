import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CatSelection extends FlutterDeckSlideWidget {
  const CatSelection()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cat-selection',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _Content(),
    );
  }
}

class _Content extends StatefulWidget {
  const _Content();

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Which cat performs best?',
          style: FlutterDeckTheme.of(context).textTheme.title,
        ),
        const SizedBox(
          height: 32,
        ),
        const Row(
          children: [
            SizedBox(width: 32),
            Expanded(child: _CatImage(index: 1)),
            SizedBox(width: 32),
            Expanded(child: _CatImage(index: 2)),
            SizedBox(width: 32),
            Expanded(child: _CatImage(index: 3)),
            SizedBox(width: 32),
            Expanded(child: _CatImage(index: 4)),
            SizedBox(width: 32),
            Expanded(child: _CatImage(index: 5)),
            SizedBox(width: 32),
          ],
        )
      ],
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
    final direction = index % 2 == 0 ? 1 : -1;
    final angleDivider = (index * 15 + 20) * direction;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      child: Transform.rotate(
        angle: pi / angleDivider,
        child: Material(
          elevation: 8,
          color: colorScheme.secondary,
          borderRadius: borderRadius,
          child: ClipRRect(
            borderRadius: borderRadius,
            child: SizedBox(
              height: 320,
              child: Image.asset(
                'assets/app-configuration/cat_$index.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
