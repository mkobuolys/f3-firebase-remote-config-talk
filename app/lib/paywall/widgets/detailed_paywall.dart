import 'package:flutter/material.dart';

import '../../widgets/app_primary_elevated_button.dart';

class DetailedPaywall extends StatefulWidget {
  final VoidCallback onClose;
  final VoidCallback onActivateTrial;

  const DetailedPaywall({
    super.key,
    required this.onClose,
    required this.onActivateTrial,
  });

  @override
  State createState() => _DetailedPaywallState();
}

class _DetailedPaywallState extends State<DetailedPaywall> {
  String _selectedPlan = 'Weekly';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bgColor = theme.colorScheme.primaryContainer;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: _close,
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Why go Premium?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const Text(
              '• Unlock unlimited matches\n• Video call & super like features\n• Advanced filtering options\n• Ad-free experience\n• Priority customer support',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 32),
            const Spacer(),
            const Text(
              'Choose Your Plan:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            SubscriptionOption(
              title: 'Weekly',
              price: '\$2.99',
              isSelected: _selectedPlan == 'Weekly',
              onChanged: _selectPlan,
            ),
            const SizedBox(height: 8),
            SubscriptionOption(
              title: 'Monthly',
              price: '\$9.99',
              isSelected: _selectedPlan == 'Monthly',
              onChanged: _selectPlan,
            ),
            const SizedBox(height: 8),
            SubscriptionOption(
              title: 'Yearly',
              price: '\$89.99',
              isSelected: _selectedPlan == 'Yearly',
              onChanged: _selectPlan,
            ),
            const Spacer(),
            const SizedBox(height: 32),
            const Text(
              'First 7 days for free!',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            AppPrimaryElevatedButton(
              onPressed: _activateTrial,
              child: const Text('Go Premium'),
            ),
            const SizedBox(height: 64),
          ],
        ),
      ),
    );
  }

  void _selectPlan(String value) {
    setState(() {
      _selectedPlan = value;
    });
  }

  void _close() {
    widget.onClose();
    Navigator.of(context).pop();
  }

  void _activateTrial() {
    widget.onActivateTrial();
    Navigator.of(context).pop();
  }
}

class SubscriptionOption extends StatelessWidget {
  final String title;
  final String price;
  final bool isSelected;
  final ValueChanged<String> onChanged;

  const SubscriptionOption({
    super.key,
    required this.title,
    required this.price,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return GestureDetector(
      onTap: () => onChanged(title),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? primaryColor : Colors.transparent,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
