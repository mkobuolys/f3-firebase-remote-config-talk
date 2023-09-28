import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SlideCenterText extends StatelessWidget {
  const SlideCenterText({
    required this.title,
    required this.subtitle,
    super.key,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            subtitle,
            style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
          ),
          Text(
            title,
            style: FlutterDeckTheme.of(context).textTheme.title,
          ),
        ],
      ),
    );
  }
}
