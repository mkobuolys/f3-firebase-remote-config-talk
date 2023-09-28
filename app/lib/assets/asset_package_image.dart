import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'assets_package.dart';

class AssetPackageImage extends ConsumerWidget {
  const AssetPackageImage({
    required this.path,
    this.fit = BoxFit.contain,
    super.key,
  });

  final String path;
  final BoxFit fit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Image.asset(
      path,
      package: ref.watch(assetsPackageProvider),
      fit: fit,
    );
  }
}

class AssetPackageDecorationImage extends ConsumerWidget {
  const AssetPackageDecorationImage({
    required this.path,
    this.fit = BoxFit.contain,
    super.key,
  });

  final String path;
  final BoxFit fit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(path, package: ref.watch(assetsPackageProvider)),
          fit: fit,
        ),
      ),
    );
  }
}
