import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ImageWithSource extends StatelessWidget {
  const ImageWithSource({
    super.key,
    required this.imageAsset,
    required this.sourceUrl,
  });

  final String imageAsset;
  final String sourceUrl;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Card(
              color: Theme.of(context).brightness == Brightness.dark
                  ? colorScheme.onBackground
                  : colorScheme.background,
              child: Image.asset(
                imageAsset,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Source: $sourceUrl',
            style: FlutterDeckTheme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
