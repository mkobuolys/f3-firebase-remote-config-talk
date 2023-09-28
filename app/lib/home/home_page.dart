import 'package:flutter/material.dart';
import '../paywall/widgets/paywall_page.dart';
import '../card_swiper/card_swiper_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.monetization_on),
            onPressed: () => _openPaywall(context),
          ),
        ],
        title: const Text('Purrfect Match'),
      ),
      body: const CardSwiperView(),
    );
  }

  void _openPaywall(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const PaywallPage(),
      ),
    );
  }
}
