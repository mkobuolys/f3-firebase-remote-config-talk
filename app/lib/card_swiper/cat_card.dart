import 'package:flutter/material.dart';

import '../assets/asset_package_image.dart';

class CatCard extends StatelessWidget {
  const CatCard({
    required this.imageUrl,
    required this.name,
    super.key,
  });

  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(16));
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      elevation: 8,
      color: colorScheme.secondary,
      borderRadius: borderRadius,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Column(
          children: [
            Expanded(
              child: AssetPackageImage(path: imageUrl, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                name,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: colorScheme.onSecondary,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
