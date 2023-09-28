import 'package:flutter/material.dart';

import '../../assets/asset_package_image.dart';

class SimplePaywall extends StatelessWidget {
  final VoidCallback onClose;
  final VoidCallback onActivateTrial;

  const SimplePaywall({
    super.key,
    required this.onClose,
    required this.onActivateTrial,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: AssetPackageImage(
              path: 'assets/cats/cat_12.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Spacer(),
                  const Text(
                    'Unlock Exclusive Features with Purrfect Premium!',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 40),
                  Text(
                    '7 days free trial, then \$9.99/month',
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => _activateTrial(context),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: theme.colorScheme.primary,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Start Trial'),
                  ),
                  const SizedBox(height: 72),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.paddingOf(context).top,
            right: 16,
            child: IconButton(
              onPressed: () => _close(context),
              icon: const Icon(
                Icons.close,
                color: Colors.white,
                size: 32,
              ),
            ),
          )
        ],
      ),
    );
  }

  void _close(BuildContext context) {
    onClose();
    Navigator.of(context).pop();
  }

  void _activateTrial(BuildContext context) {
    onActivateTrial();
    Navigator.of(context).pop();
  }
}
